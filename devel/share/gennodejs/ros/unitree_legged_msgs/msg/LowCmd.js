// Auto-generated. Do not edit!

// (in-package unitree_legged_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorCmd = require('./MotorCmd.js');
let BmsCmd = require('./BmsCmd.js');

//-----------------------------------------------------------

class LowCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.levelFlag = null;
      this.frameReserve = null;
      this.SN = null;
      this.version = null;
      this.bandWidth = null;
      this.motorCmd = null;
      this.bms = null;
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
      if (initObj.hasOwnProperty('motorCmd')) {
        this.motorCmd = initObj.motorCmd
      }
      else {
        this.motorCmd = new Array(20).fill(new MotorCmd());
      }
      if (initObj.hasOwnProperty('bms')) {
        this.bms = initObj.bms
      }
      else {
        this.bms = new BmsCmd();
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
    // Serializes a message object of type LowCmd
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
    // Check that the constant length array field [motorCmd] has the right length
    if (obj.motorCmd.length !== 20) {
      throw new Error('Unable to serialize array field motorCmd - length must be 20')
    }
    // Serialize message field [motorCmd]
    obj.motorCmd.forEach((val) => {
      bufferOffset = MotorCmd.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [bms]
    bufferOffset = BmsCmd.serialize(obj.bms, buffer, bufferOffset);
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
    //deserializes a message object of type LowCmd
    let len;
    let data = new LowCmd(null);
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
    // Deserialize message field [motorCmd]
    len = 20;
    data.motorCmd = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorCmd[i] = MotorCmd.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [bms]
    data.bms = BmsCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [wirelessRemote]
    data.wirelessRemote = _arrayDeserializer.uint8(buffer, bufferOffset, 40)
    // Deserialize message field [reserve]
    data.reserve = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 107;
  }

  static datatype() {
    // Returns string type for a message object
    return 'unitree_legged_msgs/LowCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a33b01032a894134df9b65b5cd356d1';
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
    MotorCmd[20] motorCmd
    BmsCmd bms
    uint8[40] wirelessRemote
    uint32 reserve
    
    uint32 crc
    ================================================================================
    MSG: unitree_legged_msgs/MotorCmd
    uint8 mode           # motor target mode
    float32 q            # motor target position
    float32 dq           # motor target velocity
    float32 tau          # motor target torque
    float32 Kp           # motor spring stiffness coefficient
    float32 Kd           # motor damper coefficient
    uint32[3] reserve    # motor target torque
    ================================================================================
    MSG: unitree_legged_msgs/BmsCmd
    uint8 off            # off 0xA5
    uint8[3] reserve
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LowCmd(null);
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

    if (msg.motorCmd !== undefined) {
      resolved.motorCmd = new Array(20)
      for (let i = 0; i < resolved.motorCmd.length; ++i) {
        if (msg.motorCmd.length > i) {
          resolved.motorCmd[i] = MotorCmd.Resolve(msg.motorCmd[i]);
        }
        else {
          resolved.motorCmd[i] = new MotorCmd();
        }
      }
    }
    else {
      resolved.motorCmd = new Array(20).fill(new MotorCmd())
    }

    if (msg.bms !== undefined) {
      resolved.bms = BmsCmd.Resolve(msg.bms)
    }
    else {
      resolved.bms = new BmsCmd()
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

module.exports = LowCmd;
