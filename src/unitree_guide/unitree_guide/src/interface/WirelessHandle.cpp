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
    #define TOPIC_JOYSTICK "rt/wirelesscontroller"
#endif  


WirelessHandle::WirelessHandle(){
#ifdef ROBOT_TYPE_Go2
    unitree::robot::ChannelSubscriberPtr<unitree_go::msg::dds_::WirelessController_> joystick_suber;
    joystick_suber.reset(new unitree::robot::ChannelSubscriber<unitree_go::msg::dds_::WirelessController_>(TOPIC_JOYSTICK));
    joystick_suber->InitChannel(std::bind(&WirelessHandle::JoystickHandler, this, std::placeholders::_1), 1);
#endif

}

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
    xKeySwitchUnion key;
    key.value = joystick.keys();

    if(((int)key.components.L2 == 1) && 
       ((int)key.components.B  == 1)){
        userCmd = UserCommand::L2_B;
    }
    else if(((int)key.components.L2 == 1) && 
            ((int)key.components.A  == 1)){
        userCmd = UserCommand::L2_A;
    }
    else if(((int)key.components.L2 == 1) && 
            ((int)key.components.X  == 1)){
        userCmd = UserCommand::L2_X;
    }

#ifdef COMPILE_WITH_MOVE_BASE
    else if(((int)key.components.L2 == 1) && 
            ((int)key.components.Y  == 1)){
        userCmd = UserCommand::L2_Y;
    }
#endif  // COMPILE_WITH_MOVE_BASE

    else if(((int)key.components.L1 == 1) && 
            ((int)key.components.X  == 1)){
        userCmd = UserCommand::L1_X;
    }
    else if(((int)key.components.L1 == 1) && 
            ((int)key.components.A  == 1)){
        userCmd = UserCommand::L1_A;
    }
    else if(((int)key.components.L1 == 1) && 
            ((int)key.components.Y  == 1)){
        userCmd = UserCommand::L1_Y;
    }
    else if((int)key.components.start == 1){
        userCmd = UserCommand::START;
    }




}

#endif




#endif  // COMPILE_WITH_REAL_ROBOT
