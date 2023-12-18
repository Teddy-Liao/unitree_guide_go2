/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifdef COMPILE_WITH_REAL_ROBOT

#include "interface/IOSDK.h"
#include "interface/WirelessHandle.h"
#include <stdio.h>

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

#endif



#ifdef ROBOT_TYPE_Go2

#define TOPIC_LOWCMD "rt/lowcmd"
#define TOPIC_LOWSTATE "rt/lowstate"

IOSDK::IOSDK():_safe(UNITREE_LEGGED_SDK::LeggedType::Aliengo), _udp(UNITREE_LEGGED_SDK::LOWLEVEL, 8090, "192.168.123.10", 8007){
    std::cout << "The control interface for real robot" << std::endl;
    _udp.InitCmdData(_lowCmd);

}


void IOSDK::Init()
{

    /*create publisher*/
    // lowcmd_publisher.reset(new ChannelPublisher<unitree_go::msg::dds_::LowCmd_>(TOPIC_LOWCMD));
    // lowcmd_publisher->InitChannel();

    // /*create subscriber*/
    // lowstate_subscriber.reset(new ChannelSubscriber<unitree_go::msg::dds_::LowState_>(TOPIC_LOWSTATE));
    // lowstate_subscriber->InitChannel(std::bind(&IOSDK::LowStateMessageHandler, this, std::placeholders::_1), 1);

    // /*loop publishing thread*/
    // lowCmdWriteThreadPtr = CreateRecurrentThreadEx("writebasiccmd", UT_CPU_ID_NONE, 2000, &IOSDK::sendRecv, this);
}


    void motorCmd2Dds(UNITREE_LEGGED_SDK::MotorCmd *raw, std::array<unitree_go::msg::dds_::MotorCmd_, 20> &dds)
    {
        for (int i = 0; i < 20; i++)
        {
            dds[i].mode(raw[i].mode);
            dds[i].q(raw[i].q);
            dds[i].dq(raw[i].dq);
            dds[i].tau(raw[i].tau);
            dds[i].kp(raw[i].Kp);
            dds[i].kd(raw[i].Kd);

            memcpy(&dds[i].reserve()[0], &raw[i].reserve[0], 12);
        }
    };

    void bmsCmd2Dds(UNITREE_LEGGED_SDK::BmsCmd &raw, unitree_go::msg::dds_::BmsCmd_ &dds)
    {
        dds.off(raw.off);

        memcpy(&dds.reserve()[0], &raw.reserve[0], 3);
    };

    uint32_t crc32_core(uint32_t *ptr, uint32_t len)
    {
        uint32_t xbit = 0;
        uint32_t data = 0;
        uint32_t CRC32 = 0xFFFFFFFF;
        const uint32_t dwPolynomial = 0x04c11db7;
        for (uint32_t i = 0; i < len; i++)
        {
            xbit = 1 << 31;
            data = ptr[i];
            for (uint32_t bits = 0; bits < 32; bits++)
            {
                if (CRC32 & 0x80000000)
                {
                    CRC32 <<= 1;
                    CRC32 ^= dwPolynomial;
                }
                else
                    CRC32 <<= 1;
                if (data & xbit)
                    CRC32 ^= dwPolynomial;

                xbit >>= 1;
            }
        }
        return CRC32;
    };

    void lowCmd2Dds(UNITREE_LEGGED_SDK::LowCmd &raw, unitree_go::msg::dds_::LowCmd_ &dds)
    {
        // with crc
        memcpy(&dds.head()[0], &raw.head[0], 2);

        dds.level_flag(raw.levelFlag);
        dds.frame_reserve(raw.frameReserve);

        memcpy(&dds.sn()[0], &raw.SN[0], 8);
        memcpy(&dds.version()[0], &raw.version[0], 8);

        dds.bandwidth(raw.bandWidth);

        motorCmd2Dds(&raw.motorCmd[0], dds.motor_cmd());
        bmsCmd2Dds(raw.bms, dds.bms_cmd());

        memcpy(&dds.wireless_remote()[0], &raw.wirelessRemote[0], 40);

        // memcpy(&dds.led()[0], &raw.led[0], 12); // go2
        // memcpy(&dds.fan()[0], &raw.fan[0], 2);
        // dds.gpio(raw.gpio); // go2

        dds.reserve(raw.reserve);

        raw.crc = crc32_core((uint32_t *)&raw, (sizeof(raw) >> 2) - 1);

        dds.crc(raw.crc);
    };



void IOSDK::sendRecv(const LowlevelCmd *cmd, LowlevelState *state){
    for(int i(0); i < 12; ++i){
        _lowCmd.motorCmd[i].mode = cmd->motorCmd[i].mode;
        _lowCmd.motorCmd[i].q    = cmd->motorCmd[i].q;
        _lowCmd.motorCmd[i].dq   = cmd->motorCmd[i].dq;
        _lowCmd.motorCmd[i].Kp   = cmd->motorCmd[i].Kp;
        _lowCmd.motorCmd[i].Kd   = cmd->motorCmd[i].Kd;
        _lowCmd.motorCmd[i].tau  = cmd->motorCmd[i].tau;
    }
    

    _lowCmd.crc = crc32_core((uint32_t *)&_lowCmd, (sizeof(unitree_go::msg::dds_::LowCmd_)>>2)-1);
    lowCmd2Dds(_lowCmd,low_cmd);
    // lowcmd_publisher->Write(low_cmd);

}

#endif




#endif  // COMPILE_WITH_REAL_ROBOT