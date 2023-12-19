/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifndef UNITREE_JOYSTICK_H
#define UNITREE_JOYSTICK_H

#include <stdint.h>
// 16b
/*遥控器键值和按钮之间的对应关系由以下联合体定义。
将获取到的键值赋给联合体中的value变量，
再通过判断components 中的成员变量是否为1，可判断对应的按键是否被按下。*/
typedef union {
    struct {
        uint8_t R1          :1;
        uint8_t L1          :1;
        uint8_t start       :1;
        uint8_t select      :1;
        uint8_t R2          :1;
        uint8_t L2          :1;
        uint8_t F1          :1;
        uint8_t F2          :1;
        uint8_t A           :1;
        uint8_t B           :1;
        uint8_t X           :1;
        uint8_t Y           :1;
        uint8_t up          :1;
        uint8_t right       :1;
        uint8_t down        :1;
        uint8_t left        :1;
    } components;
    uint16_t value;
} xKeySwitchUnion;

// 40 Byte (now used 24B)
typedef struct {
    uint8_t head[2];
    xKeySwitchUnion btn;
    float lx; //获取左摇杆x数据，范围[-1.0~1.0]
    float rx; //获取右摇杆x数据，范围[-1.0~1.0]
    float ry; //获取右摇杆y数据，范围[-1.0~1.0]
    float L2; //这是啥东西？？
    float ly; //获取左摇杆y数据，范围[-1.0~1.0]

    uint8_t idle[16];
} xRockerBtnDataStruct;

#endif  // UNITREE_JOYSTICK_H