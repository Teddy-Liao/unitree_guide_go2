/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifdef COMPILE_WITH_REAL_ROBOT

#include "interface/IOSDK.h"
#include "interface/WirelessHandle.h"
#include <stdio.h>

#ifdef ROBOT_TYPE_Go2
#define TOPIC_LOWCMD "rt/lowcmd"
#define TOPIC_LOWSTATE "rt/lowstate"
#define TOPIC_HIGHSTATE "rt/sportmodestate"
#define TOPIC_HEIGHTMAP "rt/utlidar/height_map_array"
#define TOPIC_JOYSTICK "rt/wirelesscontroller"
#endif

#ifdef ROBOT_TYPE_Go1
IOSDK::IOSDK():_safe(UNITREE_LEGGED_SDK::LeggedType::Aliengo), _udp(UNITREE_LEGGED_SDK::LOWLEVEL, 8090, "192.168.123.10", 8007){
    std::cout << "The control interface for real robot" << std::endl;
    _udp.InitCmdData(_lowCmd);
    cmdPanel = new WirelessHandle();

#ifdef COMPILE_WITH_MOVE_BASE
    _pub = _nh.advertise<sensor_msgs::JointState>("/realRobot/joint_states", 20);
    _joint_state.name.resize(12);
    _joint_state.position.resize(12);
    _joint_state.velocity.resize(12);
    _joint_state.effort.resize(12);
#endif  // COMPILE_WITH_MOVE_BASE
}
#endif

#ifdef ROBOT_TYPE_A1
IOSDK::IOSDK():_safe(UNITREE_LEGGED_SDK::LeggedType::Aliengo), _udp(UNITREE_LEGGED_SDK::LOWLEVEL){
    std::cout << "The control interface for real robot" << std::endl;
    _udp.InitCmdData(_lowCmd);
    cmdPanel = new WirelessHandle();

#ifdef COMPILE_WITH_MOVE_BASE
    _pub = _nh.advertise<sensor_msgs::JointState>("/realRobot/joint_states", 20);
    _joint_state.name.resize(12);
    _joint_state.position.resize(12);
    _joint_state.velocity.resize(12);
    _joint_state.effort.resize(12);
#endif  // COMPILE_WITH_MOVE_BASE
}
#endif

#ifdef ROBOT_TYPE_Go2
IOSDK::IOSDK(){
    // the default constructor is called when IOSDK is created

    // init communication and automatically deactivate 'sport_mode'
    InitLowCmd_dds();

    /*create publisher*/
    lowcmd_publisher.reset(new ChannelPublisher<unitree_go::msg::dds_::LowCmd_>(TOPIC_LOWCMD));
    lowcmd_publisher->InitChannel();
    
    /*create subscriber*/
    lowstate_subscriber.reset(new ChannelSubscriber<unitree_go::msg::dds_::LowState_>(TOPIC_LOWSTATE));
    lowstate_subscriber->InitChannel(std::bind(&IOSDK::LowStateMessageHandler, this, std::placeholders::_1), 1);

    /*loop publishing thread*/
    // 新增线程可以实现loop function的功能
    // intervalMicrosec : 1微秒 = 0.000001秒
    // 当dt=0.002s
    // ntervalMicrosec = 2000us
    lowCmdWriteThreadPtr = CreateRecurrentThreadEx("dds_write_thread", UT_CPU_ID_NONE, 2000, &IOSDK::LowCmdwriteHandler, this); // 500hz


    // 用手柄控制
    cmdPanel = new WirelessHandle();
    // 用键盘控制
    // cmdPanel = new KeyBoard();


    #ifdef COMPILE_WITH_MOVE_BASE
        _pub = _nh.advertise<sensor_msgs::JointState>("/realRobot/joint_states", 20);
        _joint_state.name.resize(12);
        _joint_state.position.resize(12);
        _joint_state.velocity.resize(12);
        _joint_state.effort.resize(12);
    #endif  // COMPILE_WITH_MOVE_BASE


    pthread_mutex_init(&lowlevelmutex, NULL); // 初始化一个互斥锁（Mutex）
}
#endif



// 如果不是go2，_lowCmd采用unitree_legged_sdk接口
#ifndef ROBOT_TYPE_Go2
void IOSDK::sendRecv(const LowlevelCmd *cmd, LowlevelState *state){
    for(int i(0); i < 12; ++i){
        _lowCmd.motorCmd[i].mode = cmd->motorCmd[i].mode;
        _lowCmd.motorCmd[i].q    = cmd->motorCmd[i].q;
        _lowCmd.motorCmd[i].dq   = cmd->motorCmd[i].dq;
        _lowCmd.motorCmd[i].Kp   = cmd->motorCmd[i].Kp;
        _lowCmd.motorCmd[i].Kd   = cmd->motorCmd[i].Kd;
        _lowCmd.motorCmd[i].tau  = cmd->motorCmd[i].tau;
    }
    
    _udp.SetSend(_lowCmd);
    _udp.Send();

    _udp.Recv();
    _udp.GetRecv(_lowState);

    for(int i(0); i < 12; ++i){
        state->motorState[i].q = _lowState.motorState[i].q;
        state->motorState[i].dq = _lowState.motorState[i].dq;
        state->motorState[i].ddq = _lowState.motorState[i].ddq;
        state->motorState[i].tauEst = _lowState.motorState[i].tauEst;
        state->motorState[i].mode = _lowState.motorState[i].mode;
    }

    for(int i(0); i < 3; ++i){
        state->imu.quaternion[i] = _lowState.imu.quaternion[i];
        state->imu.gyroscope[i]  = _lowState.imu.gyroscope[i];
        state->imu.accelerometer[i] = _lowState.imu.accelerometer[i];
    }
    state->imu.quaternion[3] = _lowState.imu.quaternion[3];

    cmdPanel->receiveHandle(&_lowState);
    state->userCmd = cmdPanel->getUserCmd();
    state->userValue = cmdPanel->getUserValue();

#ifdef COMPILE_WITH_MOVE_BASE
    _joint_state.header.stamp = ros::Time::now();
    _joint_state.name = {"FR_hip_joint", "FR_thigh_joint", "FR_calf_joint", 
                         "FL_hip_joint", "FL_thigh_joint", "FL_calf_joint",  
                         "RR_hip_joint", "RR_thigh_joint", "RR_calf_joint", 
                         "RL_hip_joint", "RL_thigh_joint", "RL_calf_joint"};
    for(int i(0); i<12; ++i){
        _joint_state.position[i] = state->motorState[i].q;
        _joint_state.velocity[i] = state->motorState[i].dq;
        _joint_state.effort[i]   = state->motorState[i].tauEst;
    }

    _pub.publish(_joint_state);
#endif  // COMPILE_WITH_MOVE_BASE
}


#else  //ROBOT_TYPE_Go2
int IOSDK::queryServiceStatus(const std::string& serviceName)
{
    std::vector<ServiceState> serviceStateList;
    int ret,serviceStatus;
    ret = rsc.ServiceList(serviceStateList);
    size_t i, count=serviceStateList.size();
    for (i=0; i<count; i++)
    {
        const ServiceState& serviceState = serviceStateList[i];
        if(serviceState.name == serviceName)
        {
            if(serviceState.status == 0) 
            {
                std::cout << "name: " << serviceState.name <<" is activate"<<std::endl;
                serviceStatus = 1;
            }
            else
            {
                std::cout << "name:" << serviceState.name <<" is deactivate"<<std::endl;
                serviceStatus = 0;
            } 
        }    
    }
    return serviceStatus;
    
}

void IOSDK::InitLowCmd_dds(){

    _lowCmd.head()[0] = 0xFE;
    _lowCmd.head()[1] = 0xEF;
    _lowCmd.level_flag() = 0xFF;
    _lowCmd.gpio() = 0;
   
    for (int i = 0; i < 20; i++)
    {
        _lowCmd.motor_cmd()[i].mode() = (0x01);   // motor switch to servo (PMSM) mode
        _lowCmd.motor_cmd()[i].q() = (PosStopF);
        _lowCmd.motor_cmd()[i].kp() = (0);
        _lowCmd.motor_cmd()[i].dq() = (VelStopF);
        _lowCmd.motor_cmd()[i].kd() = (0);
        _lowCmd.motor_cmd()[i].tau() = (0);
    }
    // the upper part of InitLowCmd_dds() is copied from Unitree_sdk2 to init comminication

    std::cout << "Please make sure the robot is lying on the Ground " << std::endl;
    std::cout << "Press ENTER to deactivate sport_mode automatically" << std::endl;
    // wait until user press ENTER
    std::cin.get();

    // deactivate the default sport_mode service automatically
    rsc.SetTimeout(5.0f);
    rsc.Init();
    while(queryServiceStatus("sport_mode"))
    {
        std::cout << "Trying to deactivate the service: " << "sport_mode" << std::endl;
        rsc.ServiceSwitch("sport_mode", 0);  
        sleep(0.5);
    }
    
}

/* the main function to send and receive data */
void IOSDK::sendRecv(const LowlevelCmd *cmd, LowlevelState *state){

    pthread_mutex_lock(&lowlevelmutex);

    /* Send lowCmd */
    for (int i(0); i < 12; ++i)
    {
        // _lowCmd.motor_cmd()[i].mode() = cmd->motorCmd[i].mode;
        // 这里注释掉是因为：go2实物的电机的伺服模式的方法是 mode=0x01，，而之前的都是0x10
        _lowCmd.motor_cmd()[i].mode() = (0x01);
        _lowCmd.motor_cmd()[i].q() = cmd->motorCmd[i].q;
        _lowCmd.motor_cmd()[i].dq() = cmd->motorCmd[i].dq;
        _lowCmd.motor_cmd()[i].kp() = cmd->motorCmd[i].Kp;
        _lowCmd.motor_cmd()[i].kd() = cmd->motorCmd[i].Kd;
        _lowCmd.motor_cmd()[i].tau() = cmd->motorCmd[i].tau;
    }

    /* Receive lowState of motor */
    for (int i(0); i < 12; ++i)
    {
        state->motorState[i].q = _lowState.motor_state()[i].q();
        state->motorState[i].dq = _lowState.motor_state()[i].dq();
        state->motorState[i].ddq = _lowState.motor_state()[i].ddq();
        state->motorState[i].tauEst = _lowState.motor_state()[i].tau_est();
        state->motorState[i].mode = _lowState.motor_state()[i].mode();
    }
    /* Receive lowState of IMU */
    for (int i(0); i < 3; ++i)
    {
        state->imu.quaternion[i] = _lowState.imu_state().quaternion()[i];
        state->imu.gyroscope[i] = _lowState.imu_state().gyroscope()[i];
        state->imu.accelerometer[i] = _lowState.imu_state().accelerometer()[i];
    }
    state->imu.quaternion[3] = _lowState.imu_state().quaternion()[3];
    /* Receive lowState of joystick */
    cmdPanel->receiveHandle(&_lowState);
    state->userCmd = cmdPanel->getUserCmd();
    state->userValue = cmdPanel->getUserValue();

    #ifdef COMPILE_WITH_MOVE_BASE
        _joint_state.header.stamp = ros::Time::now();
        _joint_state.name = {"FR_hip_joint", "FR_thigh_joint", "FR_calf_joint", 
                            "FL_hip_joint", "FL_thigh_joint", "FL_calf_joint",  
                            "RR_hip_joint", "RR_thigh_joint", "RR_calf_joint", 
                            "RL_hip_joint", "RL_thigh_joint", "RL_calf_joint"};
        for(int i(0); i<12; ++i){
            _joint_state.position[i] = state->motorState[i].q;
            _joint_state.velocity[i] = state->motorState[i].dq;
            _joint_state.effort[i]   = state->motorState[i].tauEst;
        }

        _pub.publish(_joint_state);
    #endif  // COMPILE_WITH_MOVE_BASE

    pthread_mutex_unlock(&lowlevelmutex);
}


// dds low state send
void IOSDK::LowCmdwriteHandler()
{
    _lowCmd.crc() = crc32_core((uint32_t *)&_lowCmd, (sizeof(unitree_go::msg::dds_::LowCmd_)>>2)-1);
    lowcmd_publisher->Write(_lowCmd);
}

void IOSDK::LowStateMessageHandler(const void *message)
{
    // 消息类型的强制转换
    _lowState = *(unitree_go::msg::dds_::LowState_*)message;

    // // cmdPanel->receiveHandle(&_lowState);
    // // _state.userCmd = cmdPanel->getUserCmd();
    // // _state.userValue = cmdPanel->getUserValue();
}

uint32_t IOSDK::crc32_core(uint32_t* ptr, uint32_t len)
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
#endif

#endif  // COMPILE_WITH_REAL_ROBOT