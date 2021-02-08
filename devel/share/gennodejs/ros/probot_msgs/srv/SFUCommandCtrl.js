// Auto-generated. Do not edit!

// (in-package probot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SFUCommandCtrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SFUCommandCtrlRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.string(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SFUCommandCtrlRequest
    let len;
    let data = new SFUCommandCtrlRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/SFUCommandCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43a54fa49066cddcf148717d9d4a6353';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SFUCommandCtrlRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = ''
    }

    return resolved;
    }
};

class SFUCommandCtrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SFUCommandCtrlResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int8(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SFUCommandCtrlResponse
    let len;
    let data = new SFUCommandCtrlResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/SFUCommandCtrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba0ef05866f4fc5d7e82544d27e5cfbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ret
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SFUCommandCtrlResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SFUCommandCtrlRequest,
  Response: SFUCommandCtrlResponse,
  md5sum() { return 'e479b58adc2a7d2843c02e703b0e9f7f'; },
  datatype() { return 'probot_msgs/SFUCommandCtrl'; }
};
