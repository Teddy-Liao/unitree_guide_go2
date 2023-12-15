// Auto-generated. Do not edit!

// (in-package unitree_legged_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IMU = require('./IMU.js');
let MotorState = require('./MotorState.js');
let BmsState = require('./BmsState.js');
let Cartesian = require('./Cartesian.js');

//-----------------------------------------------------------

class HighState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.levelFlag = null;
      this.frameReserve = null;
      this.SN = null;
      this.version = null;
      this.bandWidth = null;
      this.imu = null;
      this.motorState = null;
      this.bms = null;
      this.footForce = null;
      this.footForceEst = null;
      this.mode = null;
      this.progress = null;
      this.gaitType = null;
      this.footRaiseHeight = null;
      this.position = null;
      this.bodyHeight = null;
      this.velocity = null;
      this.yawSpeed = null;
      this.rangeObstacle = null;
      this.footPosition2Body = null;
      this.footSpeed2Body = null;
      this.wirelessRemote = null;
      this.reserve = null;
      this.crc = null;
    }
    else {
      if (initObj.hasOwnProperty('head')) {
        this.head = initObj.head
      }
      else {
        this.head = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('levelFlag')) {
        this.levelFlag = initObj.levelFlag
      }
      else {
        this.levelFlag = 0;
      }
      if (initObj.hasOwnProperty('frameReserve')) {
        this.frameReserve = initObj.frameReserve
      }
      else {
        this.frameReserve = 0;
      }
      if (initObj.hasOwnProperty('SN')) {
        this.SN = initObj.SN
      }
      else {
        this.SN = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('bandWidth')) {
        this.bandWidth = initObj.bandWidth
      }
      else {
        this.bandWidth = 0;
      }
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new IMU();
      }
      if (initObj.hasOwnProperty('motorState')) {
        this.motorState = initObj.motorState
      }
      else {
        this.motorState = new Array(20).fill(new MotorState());
      }
      if (initObj.hasOwnProperty('bms')) {
        this.bms = initObj.bms
      }
      else {
        this.bms = new BmsState();
      }
      if (initObj.hasOwnProperty('footForce')) {
        this.footForce = initObj.footForce
      }
      else {
        this.footForce = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('footForceEst')) {
        this.footForceEst = initObj.footForceEst
      }
      else {
        this.footForceEst = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('progress')) {
        this.progress = initObj.progress
      }
      else {
        this.progress = 0.0;
      }
      if (initObj.hasOwnProperty('gaitType')) {
        this.gaitType = initObj.gaitType
      }
      else {
        this.gaitType = 0;
      }
      if (initObj.hasOwnProperty('footRaiseHeight')) {
        this.footRaiseHeight = initObj.footRaiseHeight
      }
      else {
        this.footRaiseHeight = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('bodyHeight')) {
        this.bodyHeight = initObj.bodyHeight
      }
      else {
        this.bodyHeight = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('yawSpeed')) {
        this.yawSpeed = initObj.yawSpeed
      }
      else {
        this.yawSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('rangeObstacle')) {
        this.rangeObstacle = initObj.rangeObstacle
      }
      else {
        this.rangeObstacle = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('footPosition2Body')) {
        this.footPosition2Body = initObj.footPosition2Body
      }
      else {
        this.footPosition2Body = new Array(4).fill(new Cartesian());
      }
      if (initObj.hasOwnProperty('footSpeed2Body')) {
        this.footSpeed2Body = initObj.footSpeed2Body
      }
      else {
        this.footSpeed2Body = new Array(4).fill(new Cartesian());
      }
      if (initObj.hasOwnProperty('wirelessRemote')) {
        this.wirelessRemote = initObj.wirelessRemote
      }
      else {
        this.wirelessRemote = new Array(40).fill(0);
      }
      if (initObj.hasOwnProperty('reserve')) {
        this.reserve = initObj.reserve
      }
      else {
        this.reserve = 0;
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighState
    // Check that the constant length array field [head] has the right length
    if (obj.head.length !== 2) {
      throw new Error('Unable to serialize array field head - length must be 2')
    }
    // Serialize message field [head]
    bufferOffset = _arraySerializer.uint8(obj.head, buffer, bufferOffset, 2);
    // Serialize message field [levelFlag]
    bufferOffset = _serializer.uint8(obj.levelFlag, buffer, bufferOffset);
    // Serialize message field [frameReserve]
    bufferOffset = _serializer.uint8(obj.frameReserve, buffer, bufferOffset);
    // Check that the constant length array field [SN] has the right length
    if (obj.SN.length !== 2) {
      throw new Error('Unable to serialize array field SN - length must be 2')
    }
    // Serialize message field [SN]
    bufferOffset = _arraySerializer.uint32(obj.SN, buffer, bufferOffset, 2);
    // Check that the constant length array field [version] has the right length
    if (obj.version.length !== 2) {
      throw new Error('Unable to serialize array field version - length must be 2')
    }
    // Serialize message field [version]
    bufferOffset = _arraySerializer.uint32(obj.version, buffer, bufferOffset, 2);
    // Serialize message field [bandWidth]
    bufferOffset = _serializer.uint16(obj.bandWidth, buffer, bufferOffset);
    // Serialize message field [imu]
    bufferOffset = IMU.serialize(obj.imu, buffer, bufferOffset);
    // Check that the constant length array field [motorState] has the right length
    if (obj.motorState.length !== 20) {
      throw new Error('Unable to serialize array field motorState - length must be 20')
    }
    // Serialize message field [motorState]
    obj.motorState.forEach((val) => {
      bufferOffset = MotorState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bms]
    bufferOffset = BmsState.serialize(obj.bms, buffer, bufferOffset);
    // Check that the constant length array field [footForce] has the right length
    if (obj.footForce.length !== 4) {
      throw new Error('Unable to serialize array field footForce - length must be 4')
    }
    // Serialize message field [footForce]
    bufferOffset = _arraySerializer.int16(obj.footForce, buffer, bufferOffset, 4);
    // Check that the constant length array field [footForceEst] has the right length
    if (obj.footForceEst.length !== 4) {
      throw new Error('Unable to serialize array field footForceEst - length must be 4')
    }
    // Serialize message field [footForceEst]
    bufferOffset = _arraySerializer.int16(obj.footForceEst, buffer, bufferOffset, 4);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [progress]
    bufferOffset = _serializer.float32(obj.progress, buffer, bufferOffset);
    // Serialize message field [gaitType]
    bufferOffset = _serializer.uint8(obj.gaitType, buffer, bufferOffset);
    // Serialize message field [footRaiseHeight]
    bufferOffset = _serializer.float32(obj.footRaiseHeight, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 3);
    // Serialize message field [bodyHeight]
    bufferOffset = _serializer.float32(obj.bodyHeight, buffer, bufferOffset);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 3) {
      throw new Error('Unable to serialize array field velocity - length must be 3')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 3);
    // Serialize message field [yawSpeed]
    bufferOffset = _serializer.float32(obj.yawSpeed, buffer, bufferOffset);
    // Check that the constant length array field [rangeObstacle] has the right length
    if (obj.rangeObstacle.length !== 4) {
      throw new Error('Unable to serialize array field rangeObstacle - length must be 4')
    }
    // Serialize message field [rangeObstacle]
    bufferOffset = _arraySerializer.float32(obj.rangeObstacle, buffer, bufferOffset, 4);
    // Check that the constant length array field [footPosition2Body] has the right length
    if (obj.footPosition2Body.length !== 4) {
      throw new Error('Unable to serialize array field footPosition2Body - length must be 4')
    }
    // Serialize message field [footPosition2Body]
    obj.footPosition2Body.forEach((val) => {
      bufferOffset = Cartesian.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [footSpeed2Body] has the right length
    if (obj.footSpeed2Body.length !== 4) {
      throw new Error('Unable to serialize array field footSpeed2Body - length must be 4')
    }
    // Serialize message field [footSpeed2Body]
    obj.footSpeed2Body.forEach((val) => {
      bufferOffset = Cartesian.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [wirelessRemote] has the right length
    if (obj.wirelessRemote.length !== 40) {
      throw new Error('Unable to serialize array field wirelessRemote - length must be 40')
    }
    // Serialize message field [wirelessRemote]
    bufferOffset = _arraySerializer.uint8(obj.wirelessRemote, buffer, bufferOffset, 40);
    // Serialize message field [reserve]
    bufferOffset = _serializer.uint32(obj.reserve, buffer, bufferOffset);
    // Serialize message field [crc]
    bufferOffset = _serializer.uint32(obj.crc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighState
    let len;
    let data = new HighState(null);
    // Deserialize message field [head]
    data.head = _arrayDeserializer.uint8(buffer, bufferOffset, 2)
    // Deserialize message field [levelFlag]
    data.levelFlag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [frameReserve]
    data.frameReserve = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SN]
    data.SN = _arrayDeserializer.uint32(buffer, bufferOffset, 2)
    // Deserialize message field [version]
    data.version = _arrayDeserializer.uint32(buffer, bufferOffset, 2)
    // Deserialize message field [bandWidth]
    data.bandWidth = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [imu]
    data.imu = IMU.deserialize(buffer, bufferOffset);
    // Deserialize message field [motorState]
    len = 20;
    data.motorState = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorState[i] = MotorState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bms]
    data.bms = BmsState.deserialize(buffer, bufferOffset);
    // Deserialize message field [footForce]
    data.footForce = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [footForceEst]
    data.footForceEst = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [progress]
    data.progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gaitType]
    data.gaitType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [footRaiseHeight]
    data.footRaiseHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [bodyHeight]
    data.bodyHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [yawSpeed]
    data.yawSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rangeObstacle]
    data.rangeObstacle = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [footPosition2Body]
    len = 4;
    data.footPosition2Body = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.footPosition2Body[i] = Cartesian.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [footSpeed2Body]
    len = 4;
    data.footSpeed2Body = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.footSpeed2Body[i] = Cartesian.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wirelessRemote]
    data.wirelessRemote = _arrayDeserializer.uint8(buffer, bufferOffset, 40)
    // Deserialize message field [reserve]
    data.reserve = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 293;
  }

  static datatype() {
    // Returns string type for a message object
    return 'unitree_legged_msgs/HighState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7904f43019dadf7640d573b4c14b9066';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint8[2] head
    uint8 levelFlag
    uint8 frameReserve
    
    uint32[2] SN
    uint32[2] version
    uint16 bandWidth
    IMU imu
    MotorState[20] motorState
    BmsState bms
    int16[4] footForce
    int16[4] footForceEst
    uint8 mode
    float32 progress
    uint8 gaitType		   
    float32 footRaiseHeight		  
    float32[3] position 
    float32 bodyHeight			  
    float32[3] velocity 
    float32 yawSpeed				   
    float32[4] rangeObstacle
    Cartesian[4] footPosition2Body 
    Cartesian[4] footSpeed2Body	
    uint8[40] wirelessRemote
    uint32 reserve
    
    uint32 crc
    ================================================================================
    MSG: unitree_legged_msgs/IMU
    float32[4] quaternion
    float32[3] gyroscope
    float32[3] accelerometer
    float32[3] rpy
    int8 temperature
    ================================================================================
    MSG: unitree_legged_msgs/MotorState
    uint8 mode           # motor current mode 
    float32 q            # motor current position（rad）
    float32 dq           # motor current speed（rad/s）
    float32 ddq          # motor current speed（rad/s）
    float32 tauEst       # current estimated output torque（N*m）
    float32 q_raw        # motor current position（rad）
    float32 dq_raw       # motor current speed（rad/s）
    float32 ddq_raw      # motor current speed（rad/s）
    int8 temperature     # motor temperature（slow conduction of temperature leads to lag）
    uint32[2] reserve
    ================================================================================
    MSG: unitree_legged_msgs/BmsState
    uint8 version_h
    uint8 version_l
    uint8 bms_status
    uint8 SOC                  # SOC 0-100%
    int32 current              # mA
    uint16 cycle
    int8[2] BQ_NTC             # x1 degrees centigrade
    int8[2] MCU_NTC            # x1 degrees centigrade
    uint16[10] cell_vol        # cell voltage mV
    ================================================================================
    MSG: unitree_legged_msgs/Cartesian
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HighState(null);
    if (msg.head !== undefined) {
      resolved.head = msg.head;
    }
    else {
      resolved.head = new Array(2).fill(0)
    }

    if (msg.levelFlag !== undefined) {
      resolved.levelFlag = msg.levelFlag;
    }
    else {
      resolved.levelFlag = 0
    }

    if (msg.frameReserve !== undefined) {
      resolved.frameReserve = msg.frameReserve;
    }
    else {
      resolved.frameReserve = 0
    }

    if (msg.SN !== undefined) {
      resolved.SN = msg.SN;
    }
    else {
      resolved.SN = new Array(2).fill(0)
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = new Array(2).fill(0)
    }

    if (msg.bandWidth !== undefined) {
      resolved.bandWidth = msg.bandWidth;
    }
    else {
      resolved.bandWidth = 0
    }

    if (msg.imu !== undefined) {
      resolved.imu = IMU.Resolve(msg.imu)
    }
    else {
      resolved.imu = new IMU()
    }

    if (msg.motorState !== undefined) {
      resolved.motorState = new Array(20)
      for (let i = 0; i < resolved.motorState.length; ++i) {
        if (msg.motorState.length > i) {
          resolved.motorState[i] = MotorState.Resolve(msg.motorState[i]);
        }
        else {
          resolved.motorState[i] = new MotorState();
        }
      }
    }
    else {
      resolved.motorState = new Array(20).fill(new MotorState())
    }

    if (msg.bms !== undefined) {
      resolved.bms = BmsState.Resolve(msg.bms)
    }
    else {
      resolved.bms = new BmsState()
    }

    if (msg.footForce !== undefined) {
      resolved.footForce = msg.footForce;
    }
    else {
      resolved.footForce = new Array(4).fill(0)
    }

    if (msg.footForceEst !== undefined) {
      resolved.footForceEst = msg.footForceEst;
    }
    else {
      resolved.footForceEst = new Array(4).fill(0)
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.progress !== undefined) {
      resolved.progress = msg.progress;
    }
    else {
      resolved.progress = 0.0
    }

    if (msg.gaitType !== undefined) {
      resolved.gaitType = msg.gaitType;
    }
    else {
      resolved.gaitType = 0
    }

    if (msg.footRaiseHeight !== undefined) {
      resolved.footRaiseHeight = msg.footRaiseHeight;
    }
    else {
      resolved.footRaiseHeight = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.bodyHeight !== undefined) {
      resolved.bodyHeight = msg.bodyHeight;
    }
    else {
      resolved.bodyHeight = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(3).fill(0)
    }

    if (msg.yawSpeed !== undefined) {
      resolved.yawSpeed = msg.yawSpeed;
    }
    else {
      resolved.yawSpeed = 0.0
    }

    if (msg.rangeObstacle !== undefined) {
      resolved.rangeObstacle = msg.rangeObstacle;
    }
    else {
      resolved.rangeObstacle = new Array(4).fill(0)
    }

    if (msg.footPosition2Body !== undefined) {
      resolved.footPosition2Body = new Array(4)
      for (let i = 0; i < resolved.footPosition2Body.length; ++i) {
        if (msg.footPosition2Body.length > i) {
          resolved.footPosition2Body[i] = Cartesian.Resolve(msg.footPosition2Body[i]);
        }
        else {
          resolved.footPosition2Body[i] = new Cartesian();
        }
      }
    }
    else {
      resolved.footPosition2Body = new Array(4).fill(new Cartesian())
    }

    if (msg.footSpeed2Body !== undefined) {
      resolved.footSpeed2Body = new Array(4)
      for (let i = 0; i < resolved.footSpeed2Body.length; ++i) {
        if (msg.footSpeed2Body.length > i) {
          resolved.footSpeed2Body[i] = Cartesian.Resolve(msg.footSpeed2Body[i]);
        }
        else {
          resolved.footSpeed2Body[i] = new Cartesian();
        }
      }
    }
    else {
      resolved.footSpeed2Body = new Array(4).fill(new Cartesian())
    }

    if (msg.wirelessRemote !== undefined) {
      resolved.wirelessRemote = msg.wirelessRemote;
    }
    else {
      resolved.wirelessRemote = new Array(40).fill(0)
    }

    if (msg.reserve !== undefined) {
      resolved.reserve = msg.reserve;
    }
    else {
      resolved.reserve = 0
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0
    }

    return resolved;
    }
};

module.exports = HighState;
