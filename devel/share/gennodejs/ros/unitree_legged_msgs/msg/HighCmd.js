// Auto-generated. Do not edit!

// (in-package unitree_legged_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BmsCmd = require('./BmsCmd.js');
let LED = require('./LED.js');

//-----------------------------------------------------------

class HighCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head = null;
      this.levelFlag = null;
      this.frameReserve = null;
      this.SN = null;
      this.version = null;
      this.bandWidth = null;
      this.mode = null;
      this.gaitType = null;
      this.speedLevel = null;
      this.footRaiseHeight = null;
      this.bodyHeight = null;
      this.position = null;
      this.euler = null;
      this.velocity = null;
      this.yawSpeed = null;
      this.bms = null;
      this.led = null;
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
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('gaitType')) {
        this.gaitType = initObj.gaitType
      }
      else {
        this.gaitType = 0;
      }
      if (initObj.hasOwnProperty('speedLevel')) {
        this.speedLevel = initObj.speedLevel
      }
      else {
        this.speedLevel = 0;
      }
      if (initObj.hasOwnProperty('footRaiseHeight')) {
        this.footRaiseHeight = initObj.footRaiseHeight
      }
      else {
        this.footRaiseHeight = 0.0;
      }
      if (initObj.hasOwnProperty('bodyHeight')) {
        this.bodyHeight = initObj.bodyHeight
      }
      else {
        this.bodyHeight = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('euler')) {
        this.euler = initObj.euler
      }
      else {
        this.euler = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('yawSpeed')) {
        this.yawSpeed = initObj.yawSpeed
      }
      else {
        this.yawSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('bms')) {
        this.bms = initObj.bms
      }
      else {
        this.bms = new BmsCmd();
      }
      if (initObj.hasOwnProperty('led')) {
        this.led = initObj.led
      }
      else {
        this.led = new Array(4).fill(new LED());
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
    // Serializes a message object of type HighCmd
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
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [gaitType]
    bufferOffset = _serializer.uint8(obj.gaitType, buffer, bufferOffset);
    // Serialize message field [speedLevel]
    bufferOffset = _serializer.uint8(obj.speedLevel, buffer, bufferOffset);
    // Serialize message field [footRaiseHeight]
    bufferOffset = _serializer.float32(obj.footRaiseHeight, buffer, bufferOffset);
    // Serialize message field [bodyHeight]
    bufferOffset = _serializer.float32(obj.bodyHeight, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 2) {
      throw new Error('Unable to serialize array field position - length must be 2')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 2);
    // Check that the constant length array field [euler] has the right length
    if (obj.euler.length !== 3) {
      throw new Error('Unable to serialize array field euler - length must be 3')
    }
    // Serialize message field [euler]
    bufferOffset = _arraySerializer.float32(obj.euler, buffer, bufferOffset, 3);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 2) {
      throw new Error('Unable to serialize array field velocity - length must be 2')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float32(obj.velocity, buffer, bufferOffset, 2);
    // Serialize message field [yawSpeed]
    bufferOffset = _serializer.float32(obj.yawSpeed, buffer, bufferOffset);
    // Serialize message field [bms]
    bufferOffset = BmsCmd.serialize(obj.bms, buffer, bufferOffset);
    // Check that the constant length array field [led] has the right length
    if (obj.led.length !== 4) {
      throw new Error('Unable to serialize array field led - length must be 4')
    }
    // Serialize message field [led]
    obj.led.forEach((val) => {
      bufferOffset = LED.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type HighCmd
    let len;
    let data = new HighCmd(null);
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
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gaitType]
    data.gaitType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speedLevel]
    data.speedLevel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [footRaiseHeight]
    data.footRaiseHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bodyHeight]
    data.bodyHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [euler]
    data.euler = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [yawSpeed]
    data.yawSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bms]
    data.bms = BmsCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [led]
    len = 4;
    data.led = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.led[i] = LED.deserialize(buffer, bufferOffset)
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
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'unitree_legged_msgs/HighCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4825051cf66ae8183b54c57dba16b66';
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
    uint8 mode 
    
    uint8 gaitType		   
    uint8 speedLevel			   
    float32 footRaiseHeight		   
    float32 bodyHeight	   
    float32[2] position 
    float32[3] euler	   
    float32[2] velocity 
    float32 yawSpeed				   
    BmsCmd bms
    LED[4] led
    uint8[40] wirelessRemote
    uint32 reserve
    
    uint32 crc
    ================================================================================
    MSG: unitree_legged_msgs/BmsCmd
    uint8 off            # off 0xA5
    uint8[3] reserve
    ================================================================================
    MSG: unitree_legged_msgs/LED
    uint8 r
    uint8 g
    uint8 b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HighCmd(null);
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

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.gaitType !== undefined) {
      resolved.gaitType = msg.gaitType;
    }
    else {
      resolved.gaitType = 0
    }

    if (msg.speedLevel !== undefined) {
      resolved.speedLevel = msg.speedLevel;
    }
    else {
      resolved.speedLevel = 0
    }

    if (msg.footRaiseHeight !== undefined) {
      resolved.footRaiseHeight = msg.footRaiseHeight;
    }
    else {
      resolved.footRaiseHeight = 0.0
    }

    if (msg.bodyHeight !== undefined) {
      resolved.bodyHeight = msg.bodyHeight;
    }
    else {
      resolved.bodyHeight = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(2).fill(0)
    }

    if (msg.euler !== undefined) {
      resolved.euler = msg.euler;
    }
    else {
      resolved.euler = new Array(3).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(2).fill(0)
    }

    if (msg.yawSpeed !== undefined) {
      resolved.yawSpeed = msg.yawSpeed;
    }
    else {
      resolved.yawSpeed = 0.0
    }

    if (msg.bms !== undefined) {
      resolved.bms = BmsCmd.Resolve(msg.bms)
    }
    else {
      resolved.bms = new BmsCmd()
    }

    if (msg.led !== undefined) {
      resolved.led = new Array(4)
      for (let i = 0; i < resolved.led.length; ++i) {
        if (msg.led.length > i) {
          resolved.led[i] = LED.Resolve(msg.led[i]);
        }
        else {
          resolved.led[i] = new LED();
        }
      }
    }
    else {
      resolved.led = new Array(4).fill(new LED())
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

module.exports = HighCmd;
