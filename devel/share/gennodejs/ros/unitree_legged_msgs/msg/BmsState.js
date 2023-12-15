// Auto-generated. Do not edit!

// (in-package unitree_legged_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BmsState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version_h = null;
      this.version_l = null;
      this.bms_status = null;
      this.SOC = null;
      this.current = null;
      this.cycle = null;
      this.BQ_NTC = null;
      this.MCU_NTC = null;
      this.cell_vol = null;
    }
    else {
      if (initObj.hasOwnProperty('version_h')) {
        this.version_h = initObj.version_h
      }
      else {
        this.version_h = 0;
      }
      if (initObj.hasOwnProperty('version_l')) {
        this.version_l = initObj.version_l
      }
      else {
        this.version_l = 0;
      }
      if (initObj.hasOwnProperty('bms_status')) {
        this.bms_status = initObj.bms_status
      }
      else {
        this.bms_status = 0;
      }
      if (initObj.hasOwnProperty('SOC')) {
        this.SOC = initObj.SOC
      }
      else {
        this.SOC = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0;
      }
      if (initObj.hasOwnProperty('cycle')) {
        this.cycle = initObj.cycle
      }
      else {
        this.cycle = 0;
      }
      if (initObj.hasOwnProperty('BQ_NTC')) {
        this.BQ_NTC = initObj.BQ_NTC
      }
      else {
        this.BQ_NTC = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('MCU_NTC')) {
        this.MCU_NTC = initObj.MCU_NTC
      }
      else {
        this.MCU_NTC = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('cell_vol')) {
        this.cell_vol = initObj.cell_vol
      }
      else {
        this.cell_vol = new Array(10).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BmsState
    // Serialize message field [version_h]
    bufferOffset = _serializer.uint8(obj.version_h, buffer, bufferOffset);
    // Serialize message field [version_l]
    bufferOffset = _serializer.uint8(obj.version_l, buffer, bufferOffset);
    // Serialize message field [bms_status]
    bufferOffset = _serializer.uint8(obj.bms_status, buffer, bufferOffset);
    // Serialize message field [SOC]
    bufferOffset = _serializer.uint8(obj.SOC, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.int32(obj.current, buffer, bufferOffset);
    // Serialize message field [cycle]
    bufferOffset = _serializer.uint16(obj.cycle, buffer, bufferOffset);
    // Check that the constant length array field [BQ_NTC] has the right length
    if (obj.BQ_NTC.length !== 2) {
      throw new Error('Unable to serialize array field BQ_NTC - length must be 2')
    }
    // Serialize message field [BQ_NTC]
    bufferOffset = _arraySerializer.int8(obj.BQ_NTC, buffer, bufferOffset, 2);
    // Check that the constant length array field [MCU_NTC] has the right length
    if (obj.MCU_NTC.length !== 2) {
      throw new Error('Unable to serialize array field MCU_NTC - length must be 2')
    }
    // Serialize message field [MCU_NTC]
    bufferOffset = _arraySerializer.int8(obj.MCU_NTC, buffer, bufferOffset, 2);
    // Check that the constant length array field [cell_vol] has the right length
    if (obj.cell_vol.length !== 10) {
      throw new Error('Unable to serialize array field cell_vol - length must be 10')
    }
    // Serialize message field [cell_vol]
    bufferOffset = _arraySerializer.uint16(obj.cell_vol, buffer, bufferOffset, 10);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BmsState
    let len;
    let data = new BmsState(null);
    // Deserialize message field [version_h]
    data.version_h = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [version_l]
    data.version_l = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bms_status]
    data.bms_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SOC]
    data.SOC = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cycle]
    data.cycle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [BQ_NTC]
    data.BQ_NTC = _arrayDeserializer.int8(buffer, bufferOffset, 2)
    // Deserialize message field [MCU_NTC]
    data.MCU_NTC = _arrayDeserializer.int8(buffer, bufferOffset, 2)
    // Deserialize message field [cell_vol]
    data.cell_vol = _arrayDeserializer.uint16(buffer, bufferOffset, 10)
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'unitree_legged_msgs/BmsState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e007c660c590388bca7c2464d80df54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 version_h
    uint8 version_l
    uint8 bms_status
    uint8 SOC                  # SOC 0-100%
    int32 current              # mA
    uint16 cycle
    int8[2] BQ_NTC             # x1 degrees centigrade
    int8[2] MCU_NTC            # x1 degrees centigrade
    uint16[10] cell_vol        # cell voltage mV
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BmsState(null);
    if (msg.version_h !== undefined) {
      resolved.version_h = msg.version_h;
    }
    else {
      resolved.version_h = 0
    }

    if (msg.version_l !== undefined) {
      resolved.version_l = msg.version_l;
    }
    else {
      resolved.version_l = 0
    }

    if (msg.bms_status !== undefined) {
      resolved.bms_status = msg.bms_status;
    }
    else {
      resolved.bms_status = 0
    }

    if (msg.SOC !== undefined) {
      resolved.SOC = msg.SOC;
    }
    else {
      resolved.SOC = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0
    }

    if (msg.cycle !== undefined) {
      resolved.cycle = msg.cycle;
    }
    else {
      resolved.cycle = 0
    }

    if (msg.BQ_NTC !== undefined) {
      resolved.BQ_NTC = msg.BQ_NTC;
    }
    else {
      resolved.BQ_NTC = new Array(2).fill(0)
    }

    if (msg.MCU_NTC !== undefined) {
      resolved.MCU_NTC = msg.MCU_NTC;
    }
    else {
      resolved.MCU_NTC = new Array(2).fill(0)
    }

    if (msg.cell_vol !== undefined) {
      resolved.cell_vol = msg.cell_vol;
    }
    else {
      resolved.cell_vol = new Array(10).fill(0)
    }

    return resolved;
    }
};

module.exports = BmsState;
