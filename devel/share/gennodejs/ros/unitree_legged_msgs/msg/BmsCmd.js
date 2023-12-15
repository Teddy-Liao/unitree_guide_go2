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

class BmsCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.off = null;
      this.reserve = null;
    }
    else {
      if (initObj.hasOwnProperty('off')) {
        this.off = initObj.off
      }
      else {
        this.off = 0;
      }
      if (initObj.hasOwnProperty('reserve')) {
        this.reserve = initObj.reserve
      }
      else {
        this.reserve = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BmsCmd
    // Serialize message field [off]
    bufferOffset = _serializer.uint8(obj.off, buffer, bufferOffset);
    // Check that the constant length array field [reserve] has the right length
    if (obj.reserve.length !== 3) {
      throw new Error('Unable to serialize array field reserve - length must be 3')
    }
    // Serialize message field [reserve]
    bufferOffset = _arraySerializer.uint8(obj.reserve, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BmsCmd
    let len;
    let data = new BmsCmd(null);
    // Deserialize message field [off]
    data.off = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserve]
    data.reserve = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'unitree_legged_msgs/BmsCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c09195f3200bd8917201f8805a3fe1d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 off            # off 0xA5
    uint8[3] reserve
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BmsCmd(null);
    if (msg.off !== undefined) {
      resolved.off = msg.off;
    }
    else {
      resolved.off = 0
    }

    if (msg.reserve !== undefined) {
      resolved.reserve = msg.reserve;
    }
    else {
      resolved.reserve = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = BmsCmd;
