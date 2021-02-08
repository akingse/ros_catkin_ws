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

class HeartbeatSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.countRequest = null;
    }
    else {
      if (initObj.hasOwnProperty('countRequest')) {
        this.countRequest = initObj.countRequest
      }
      else {
        this.countRequest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeartbeatSrvRequest
    // Serialize message field [countRequest]
    bufferOffset = _serializer.int32(obj.countRequest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeartbeatSrvRequest
    let len;
    let data = new HeartbeatSrvRequest(null);
    // Deserialize message field [countRequest]
    data.countRequest = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/HeartbeatSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6a833a94dfff474954f461420badd1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 countRequest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeartbeatSrvRequest(null);
    if (msg.countRequest !== undefined) {
      resolved.countRequest = msg.countRequest;
    }
    else {
      resolved.countRequest = 0
    }

    return resolved;
    }
};

class HeartbeatSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.countResponse = null;
    }
    else {
      if (initObj.hasOwnProperty('countResponse')) {
        this.countResponse = initObj.countResponse
      }
      else {
        this.countResponse = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeartbeatSrvResponse
    // Serialize message field [countResponse]
    bufferOffset = _serializer.int32(obj.countResponse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeartbeatSrvResponse
    let len;
    let data = new HeartbeatSrvResponse(null);
    // Deserialize message field [countResponse]
    data.countResponse = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/HeartbeatSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4b441852a5db47dfa689349d7628591';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 countResponse
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeartbeatSrvResponse(null);
    if (msg.countResponse !== undefined) {
      resolved.countResponse = msg.countResponse;
    }
    else {
      resolved.countResponse = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HeartbeatSrvRequest,
  Response: HeartbeatSrvResponse,
  md5sum() { return '98991985d4cdd4fbc58ba5a8e9c60574'; },
  datatype() { return 'probot_msgs/HeartbeatSrv'; }
};
