#include <iostream>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <unitree/robot/channel/channel_publisher.hpp>
#include <unitree/robot/channel/channel_subscriber.hpp>
#include <unitree/idl/go2/LowState_.hpp>
#include <unitree/idl/go2/LowCmd_.hpp>
#include <unitree/common/time/time_tool.hpp>
#include <unitree/common/thread/thread.hpp>

using namespace unitree::common;
using namespace unitree::robot;

#define TOPIC_LOWCMD "rt/lowcmd"
#define TOPIC_LOWSTATE "rt/lowstate"

constexpr double PosStopF = (2.146E+9f);
constexpr double VelStopF = (16000.0f);


// 在 Custom 类中了定义与 DDS 通信相关的类与函数，还有一些与控制腿摆动的变量。
class Custom
{
public:
    explicit Custom()
    {}

    ~Custom()
    {}

    void Init();

private:
    void InitLowCmd();
    void LowStateMessageHandler(const void* messages);
    void LowCmdWrite();

private:
    float qInit[3] = {0};//记录左前腿各关节的初始关节角度
    float qDes[3] = {0};//表达左前腿各关节的期望关节角度
    float sin_mid_q[3] = {0.0, 1.2, -2.0};//指定左前腿各关节周期往复运动中的中间关节角度
    float Kp[3] = {0};//指定左前腿各关节的关节空间控制kp值
    float Kd[3] = {0};//指定左前腿各关节的关节空间控制kd值
    double time_consume = 0;
    int rate_count = 0;
    int sin_count = 0;
    int motiontime = 0;
    float dt = 0.002; // 0.001~0.01


    /*关于腿部摆动的控制用户逻辑首先用 UNITREE_LEGGED_SDK 类型变量进行表达，
    然后通过一些例程中提供的函数将其转换为 DDS 相关的类型，
    然后才将命令发至 Go2 机器人。
    这是因为 A1、Go1 等机器人的 SDK也采用了 UNITREE_LEGGED_SDK 类型，
    此举为方便之前的用户延续与移植。*/

    // UNITREE_LEGGED_SDK类型的关于底层控制命令的结构体
    unitree_go::msg::dds_::LowCmd_ low_cmd{};      // default init

    // UNITREE_LEGGED_SDK类型的关于底层状态信息的结构体
    unitree_go::msg::dds_::LowState_ low_state{};  // default init

    /*publisher*/
    // 底层命令发送对象,调用该对象的Write函数会向Go2机器人发送一次底层控制命令
    ChannelPublisherPtr<unitree_go::msg::dds_::LowCmd_> lowcmd_publisher;
    /*subscriber*/
    // 底层状态信息订阅对象，底层状态包含电机信息、IMU数据、宇树手柄信息等
    ChannelSubscriberPtr<unitree_go::msg::dds_::LowState_> lowstate_subscriber;

    /*LowCmd write thread*/
    // DDS相关的底层命令发送线程指针
    ThreadPtr lowCmdWriteThreadPtr;
};

uint32_t crc32_core(uint32_t* ptr, uint32_t len)
{
    unsigned int xbit = 0;
    unsigned int data = 0;
    unsigned int CRC32 = 0xFFFFFFFF;
    const unsigned int dwPolynomial = 0x04c11db7;

    for (unsigned int i = 0; i < len; i++)
    {
        xbit = 1 << 31;
        data = ptr[i];
        for (unsigned int bits = 0; bits < 32; bits++)
        {
            if (CRC32 & 0x80000000)
            {
                CRC32 <<= 1;
                CRC32 ^= dwPolynomial;
            }
            else
            {
                CRC32 <<= 1;
            }

            if (data & xbit)
                CRC32 ^= dwPolynomial;
            xbit >>= 1;
        }
    }

    return CRC32;
}

void Custom::Init()
{
    InitLowCmd();

    /*create publisher*/
    lowcmd_publisher.reset(new ChannelPublisher<unitree_go::msg::dds_::LowCmd_>(TOPIC_LOWCMD));
    lowcmd_publisher->InitChannel();

    /*create subscriber*/
    lowstate_subscriber.reset(new ChannelSubscriber<unitree_go::msg::dds_::LowState_>(TOPIC_LOWSTATE));
    lowstate_subscriber->InitChannel(std::bind(&Custom::LowStateMessageHandler, this, std::placeholders::_1), 1);

    /*loop publishing thread*/
    lowCmdWriteThreadPtr = CreateRecurrentThreadEx("writebasiccmd", UT_CPU_ID_NONE, 2000, &Custom::LowCmdWrite, this);
}

void Custom::InitLowCmd()
{
    //LowCmd 类型中的 head 成员 表示帧头，
    //此帧头将用于 CRC 校验。head 、levelFlag、gpio 等按例程所示设置为默认值即可。
    low_cmd.head()[0] = 0xFE;
    low_cmd.head()[1] = 0xEF;
    low_cmd.level_flag() = 0xFF;
    low_cmd.gpio() = 0;

     /*LowCmd 类型中有 20 个 motorCmd 成员，
    每一个成员的命令用于控制 Go2 机器人上相对应的一个电机，
    但 Go2 机器人上只有 12 个电机，
    故仅有前 12 个有效，剩余的8个起保留作用。*/
    for(int i=0; i<20; i++)
    {
        /*此行命令中将 motorCmd 成员的 mode 变量设置为 0x01，
        0x01 表示将电机设置为伺服模式。
        如果用户在调试过程中发现无法控制 Go2 机器人的关节电机，
        请检查变量的值是否为0x01。*/
        low_cmd.motor_cmd()[i].mode() = (0x01);   // motor switch to servo (PMSM) mode
        
        
        low_cmd.motor_cmd()[i].q() = (PosStopF);
        low_cmd.motor_cmd()[i].kp() = (0);
        low_cmd.motor_cmd()[i].dq() = (VelStopF);
        low_cmd.motor_cmd()[i].kd() = (0);
        low_cmd.motor_cmd()[i].tau() = (0);
    }
}

/*此函数的作用为关于底层状态信息接收的 DDS 回调函数，
DDS 机制会以一定频率触发该回调函数。
每次触发该回调函数都将更新一次底层状态信息。*/
void Custom::LowStateMessageHandler(const void* message)
{
    low_state = *(unitree_go::msg::dds_::LowState_*)message;
}

double jointLinearInterpolation(double initPos, double targetPos, double rate)
{
    double p;
    rate = std::min(std::max(rate, 0.0), 1.0);
    p = initPos * (1 - rate) + targetPos * rate;
    return p;
}

void Custom::LowCmdWrite()
{
    motiontime++;

    if (motiontime >= 0)
    {
        // first, get record initial position
        // 记录初始关节角度
        if (motiontime >= 0 && motiontime < 20)
        {
            qInit[0] = low_state.motor_state()[0].q();
            qInit[1] = low_state.motor_state()[1].q();
            qInit[2] = low_state.motor_state()[2].q();
        }

        // second, move to the origin point of a sine movement with Kp Kd
        // 运动至往复运动起始角度
        if (motiontime >= 10 && motiontime < 400)
        {
            rate_count++;

            double rate = rate_count / 200.0; // needs count to 200
            Kp[0] = 5.0; Kp[1] = 5.0; Kp[2] = 5.0;
            Kd[0] = 1.0; Kd[1] = 1.0; Kd[2] = 1.0;

            qDes[0] = jointLinearInterpolation(qInit[0], sin_mid_q[0], rate);
            qDes[1] = jointLinearInterpolation(qInit[1], sin_mid_q[1], rate);
            qDes[2] = jointLinearInterpolation(qInit[2], sin_mid_q[2], rate);
        }

        double sin_joint1, sin_joint2;
        // last, do sine wave
        float freq_Hz = 1;
        // float freq_Hz = 5;
        float freq_rad = freq_Hz * 2 * M_PI;
        float t = dt * sin_count;

        // 开始往复运动
        if (motiontime >= 400)
        {
            sin_count++;
            sin_joint1 = 0.6 * sin(t * freq_rad);
            sin_joint2 = -0.9 * sin(t * freq_rad);
            qDes[0] = sin_mid_q[0];
            qDes[1] = sin_mid_q[1] + sin_joint1;
            qDes[2] = sin_mid_q[2] + sin_joint2;
        }

        low_cmd.motor_cmd()[2].q() = qDes[2];
        low_cmd.motor_cmd()[2].dq() = 0;
        low_cmd.motor_cmd()[2].kp() = Kp[2];
        low_cmd.motor_cmd()[2].kd() = Kd[2];
        low_cmd.motor_cmd()[2].tau() = 0;
    }

    /*此段代码中第一行首先计算了 CRC 校验码。
    最后一行代码表示调用 lowcmd_publisher的Write()函数将控制命令发送给 Go2 机器人。*/
    low_cmd.crc() = crc32_core((uint32_t *)&low_cmd, (sizeof(unitree_go::msg::dds_::LowCmd_)>>2)-1);
    lowcmd_publisher->Write(low_cmd);
}

int main(int argc, const char** argv)
{
    if (argc < 2)
    {
        std::cout << "Usage: " << argv[0] << " networkInterface" << std::endl;
        exit(-1); 
    }

    ChannelFactory::Instance()->Init(0, argv[1]);

    Custom custom;
    custom.Init();

    while (1)
    {
        sleep(10);
    }

    return 0;
}
