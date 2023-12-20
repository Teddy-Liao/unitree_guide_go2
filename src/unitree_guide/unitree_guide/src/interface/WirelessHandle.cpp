/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifdef COMPILE_WITH_REAL_ROBOT

#include "interface/WirelessHandle.h"
#include "common/mathTools.h"
#include <string.h>
#include <stdio.h>

// ldt
#ifdef ROBOT_TYPE_Go2
    #include <unitree/idl/go2/WirelessController_.hpp>
    #define TOPIC_JOYSTICK "rt/wirelesscontroller"
#endif  


#ifndef ROBOT_TYPE_Go2

    WirelessHandle::WirelessHandle(){

    }

#else

    WirelessHandle::WirelessHandle(){

    // // 初始化dds joystick receive结点
    unitree::robot::ChannelSubscriberPtr<unitree_go::msg::dds_::WirelessController_> joystick_suber;
    joystick_suber.reset(new unitree::robot::ChannelSubscriber<unitree_go::msg::dds_::WirelessController_>(TOPIC_JOYSTICK));
    joystick_suber->InitChannel(std::bind(&WirelessHandle::JoystickHandler, this, std::placeholders::_1), 1);
    // joystick_suber->InitChannel(WirelessHandle::JoystickHandler, 1);

}

#endif



#ifndef ROBOT_TYPE_Go2

void WirelessHandle::receiveHandle(UNITREE_LEGGED_SDK::LowState *lowState){
#ifdef ROBOT_TYPE_A1
    memcpy(&_keyData, lowState->wirelessRemote, 40);  // note: available in the unitree_legged_sdk_3.2
#endif

#ifdef ROBOT_TYPE_Go1
    memcpy(&_keyData, &lowState->wirelessRemote[0], 40);
#endif  


    if(((int)_keyData.btn.components.L2 == 1) && 
       ((int)_keyData.btn.components.B  == 1)){
        userCmd = UserCommand::L2_B;
    }
    else if(((int)_keyData.btn.components.L2 == 1) && 
            ((int)_keyData.btn.components.A  == 1)){
        userCmd = UserCommand::L2_A;
    }
    else if(((int)_keyData.btn.components.L2 == 1) && 
            ((int)_keyData.btn.components.X  == 1)){
        userCmd = UserCommand::L2_X;
    }

#ifdef COMPILE_WITH_MOVE_BASE
    else if(((int)_keyData.btn.components.L2 == 1) && 
            ((int)_keyData.btn.components.Y  == 1)){
        userCmd = UserCommand::L2_Y;
    }
#endif  // COMPILE_WITH_MOVE_BASE

    else if(((int)_keyData.btn.components.L1 == 1) && 
            ((int)_keyData.btn.components.X  == 1)){
        userCmd = UserCommand::L1_X;
    }
    else if(((int)_keyData.btn.components.L1 == 1) && 
            ((int)_keyData.btn.components.A  == 1)){
        userCmd = UserCommand::L1_A;
    }
    else if(((int)_keyData.btn.components.L1 == 1) && 
            ((int)_keyData.btn.components.Y  == 1)){
        userCmd = UserCommand::L1_Y;
    }
    else if((int)_keyData.btn.components.start == 1){
        userCmd = UserCommand::START;
    }

    /*killZeroOffset 函数的作用是可能根据给定的容忍度来“杀死”接近零的值，
    使它们在一定容忍度范围内等于零。这种操作通常用于处理输入设备或传感器的数据，
    以防止由于噪声或小幅度变化而引起的不必要的数据波动。*/
    userValue.L2 = killZeroOffset(_keyData.L2, 0.08);
    userValue.lx = killZeroOffset(_keyData.lx, 0.08);
    userValue.ly = killZeroOffset(_keyData.ly, 0.08);
    userValue.rx = killZeroOffset(_keyData.rx, 0.08);
    userValue.ry = killZeroOffset(_keyData.ry, 0.08);
}


#else // ROBOT_TYPE_Go2

void WirelessHandle::JoystickHandler(const void *message)
{
    unitree_go::msg::dds_::WirelessController_ joystick = *(unitree_go::msg::dds_::WirelessController_ *)message;
    xRockerBtnDataStruct key;
    key.btn.value = joystick.keys();
    


  // 遥控器原始数据
  std::cout << "lx: " << joystick.lx() << std::endl     // 左摇杆x
            << "ly: " << joystick.ly() << std::endl     // 左摇杆y
            << "rx: " << joystick.rx() << std::endl     // 右摇杆x
            << "ry: " << joystick.ry() << std::endl     // 右摇杆y
            << "keys: " << joystick.keys() << std::endl // 键值
            << "------" << std::endl;


    if(((int)key.btn.components.L2 == 1) && 
       ((int)key.btn.components.B  == 1)){
        std::cout << "monitor joystick: L2 + B" << std::endl;
        userCmd = UserCommand::L2_B;
    }
    else if(((int)key.btn.components.L2 == 1) && 
            ((int)key.btn.components.A  == 1)){
        std::cout << "monitor joystick: L2 + A" << std::endl;
        userCmd = UserCommand::L2_A;
    }
    else if(((int)key.btn.components.L2 == 1) && 
            ((int)key.btn.components.X  == 1)){
        std::cout << "monitor joystick: L2 + X" << std::endl;
        userCmd = UserCommand::L2_X;
    }

#ifdef COMPILE_WITH_MOVE_BASE
    else if(((int)key.btn.components.L2 == 1) && 
            ((int)key.btn.components.Y  == 1)){
        std::cout << "monitor joystick: L2 + Y" << std::endl;
        userCmd = UserCommand::L2_Y;
    }
#endif  // COMPILE_WITH_MOVE_BASE

    else if(((int)key.btn.components.L1 == 1) && 
            ((int)key.btn.components.X  == 1)){
        std::cout << "monitor joystick: L2 + X" << std::endl;
        userCmd = UserCommand::L1_X;
    }
    else if(((int)key.btn.components.L1 == 1) && 
            ((int)key.btn.components.A  == 1)){
        std::cout << "monitor joystick: L1 + A" << std::endl;
        userCmd = UserCommand::L1_A;
    }
    else if(((int)key.btn.components.L1 == 1) && 
            ((int)key.btn.components.Y  == 1)){
        std::cout << "monitor joystick: L1 + Y" << std::endl;
        userCmd = UserCommand::L1_Y;
    }
    else if((int)key.btn.components.start == 1){
        std::cout << "monitor joystick: START" << std::endl;
        userCmd = UserCommand::START;
    }
    
    /*killZeroOffset 函数的作用是可能根据给定的容忍度来“杀死”接近零的值，
    使它们在一定容忍度范围内等于零。这种操作通常用于处理输入设备或传感器的数据，
    以防止由于噪声或小幅度变化而引起的不必要的数据波动。*/
    userValue.L2 = killZeroOffset(key.L2, 0.08);
    userValue.lx = killZeroOffset(key.lx, 0.08);
    userValue.ly = killZeroOffset(key.ly, 0.08);
    userValue.rx = killZeroOffset(key.rx, 0.08);
    userValue.ry = killZeroOffset(key.ry, 0.08);

}

#endif




#endif  // COMPILE_WITH_REAL_ROBOT
