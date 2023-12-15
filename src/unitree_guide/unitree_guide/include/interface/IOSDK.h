/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifndef IOSDK_H
#define IOSDK_H

#include "interface/IOInterface.h"
#include "unitree_legged_sdk/unitree_legged_sdk.h"

// ldt 
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
// 下面的定义命名空间的语句一定要在IOSDK.h当中
using namespace unitree::common;
using namespace unitree::robot;



class IOSDK : public IOInterface{ // IOSDK继承IOInterface

public:
    explicit IOSDK();
    ~IOSDK(){}
    void sendRecv(const LowlevelCmd *cmd, LowlevelState *state);
    // ldt 
    void Init();

private:
    UNITREE_LEGGED_SDK::UDP _udp;
    UNITREE_LEGGED_SDK::Safety _safe;
    UNITREE_LEGGED_SDK::LowCmd _lowCmd;
    UNITREE_LEGGED_SDK::LowState _lowState;

    //ldt
    void InitLowCmd();
    void LowStateMessageHandler(const void* messages);
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

#endif  // IOSDK_H