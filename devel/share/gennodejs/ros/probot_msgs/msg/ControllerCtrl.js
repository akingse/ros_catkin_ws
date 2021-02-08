// Auto-generated. Do not edit!

// (in-package probot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControllerCtrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrl = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrl')) {
        this.ctrl = initObj.ctrl
      }
      else {
        this.ctrl = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerCtrl
    // Serialize message field [ctrl]
    bufferOffset = _serializer.int8(obj.ctrl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerCtrl
    let len;
    let data = new ControllerCtrl(null);
    // Deserialize message field [ctrl]
    data.ctrl = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/ControllerCtrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc22a86a6761a3ebfb4241b3cec54085';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ctrl
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerCtrl(null);
    if (msg.ctrl !== undefined) {
      resolved.ctrl = msg.ctrl;
    }
    else {
      resolved.ctrl = 0
    }

    return resolved;
    }
};

module.exports = ControllerCtrl;
