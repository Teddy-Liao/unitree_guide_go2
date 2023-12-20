/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifndef WIRELESSHANDLE_H
#define WIRELESSHANDLE_H

#include "message/unitree_joystick.h"
#include "interface/CmdPanel.h"

#ifndef ROBOT_TYPE_Go2
    #include "unitree_legged_sdk/comm.h"
#else
    #include <unitree/idl/go2/WirelessController_.hpp> //ldt
    #include <unitree/robot/client/client.hpp> //ldt
#endif

class WirelessHandle : public CmdPanel{
public:
    WirelessHandle();
    ~WirelessHandle(){}
    #ifndef ROBOT_TYPE_Go2
        void receiveHandle(UNITREE_LEGGED_SDK::LowState *lowState);
    #else
        void JoystickHandler(const void *message);
        void receiveHandle(unitree_go::msg::dds_::LowState_ *lowState);
    #endif
private:
    #ifndef ROBOT_TYPE_Go2
        xRockerBtnDataStruct _keyData;
    #else
        xRockerBtnDataStruct key;
    #endif
    
};

#endif  // WIRELESSHANDLE_H