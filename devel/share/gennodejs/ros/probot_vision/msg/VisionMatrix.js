// Auto-generated. Do not edit!

// (in-package probot_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VisionMatrix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cameraMatrix = null;
      this.distCoeffs = null;
      this.ExternalMatrix = null;
      this.hmatrix = null;
      this.xmatrix = null;
    }
    else {
      if (initObj.hasOwnProperty('cameraMatrix')) {
        this.cameraMatrix = initObj.cameraMatrix
      }
      else {
        this.cameraMatrix = [];
      }
      if (initObj.hasOwnProperty('distCoeffs')) {
        this.distCoeffs = initObj.distCoeffs
      }
      else {
        this.distCoeffs = [];
      }
      if (initObj.hasOwnProperty('ExternalMatrix')) {
        this.ExternalMatrix = initObj.ExternalMatrix
      }
      else {
        this.ExternalMatrix = [];
      }
      if (initObj.hasOwnProperty('hmatrix')) {
        this.hmatrix = initObj.hmatrix
      }
      else {
        this.hmatrix = [];
      }
      if (initObj.hasOwnProperty('xmatrix')) {
        this.xmatrix = initObj.xmatrix
      }
      else {
        this.xmatrix = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionMatrix
    // Serialize message field [cameraMatrix]
    bufferOffset = _arraySerializer.float64(obj.cameraMatrix, buffer, bufferOffset, null);
    // Serialize message field [distCoeffs]
    bufferOffset = _arraySerializer.float64(obj.distCoeffs, buffer, bufferOffset, null);
    // Serialize message field [ExternalMatrix]
    bufferOffset = _arraySerializer.float64(obj.ExternalMatrix, buffer, bufferOffset, null);
    // Serialize message field [hmatrix]
    bufferOffset = _arraySerializer.float64(obj.hmatrix, buffer, bufferOffset, null);
    // Serialize message field [xmatrix]
    bufferOffset = _arraySerializer.float64(obj.xmatrix, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionMatrix
    let len;
    let data = new VisionMatrix(null);
    // Deserialize message field [cameraMatrix]
    data.cameraMatrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [distCoeffs]
    data.distCoeffs = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ExternalMatrix]
    data.ExternalMatrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [hmatrix]
    data.hmatrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [xmatrix]
    data.xmatrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.cameraMatrix.length;
    length += 8 * object.distCoeffs.length;
    length += 8 * object.ExternalMatrix.length;
    length += 8 * object.hmatrix.length;
    length += 8 * object.xmatrix.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_vision/VisionMatrix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e4f9b4abcd2e9270ca5b9713f7ed35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] cameraMatrix
    float64[] distCoeffs
    float64[] ExternalMatrix
    float64[] hmatrix
    float64[] xmatrix
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionMatrix(null);
    if (msg.cameraMatrix !== undefined) {
      resolved.cameraMatrix = msg.cameraMatrix;
    }
    else {
      resolved.cameraMatrix = []
    }

    if (msg.distCoeffs !== undefined) {
      resolved.distCoeffs = msg.distCoeffs;
    }
    else {
      resolved.distCoeffs = []
    }

    if (msg.ExternalMatrix !== undefined) {
      resolved.ExternalMatrix = msg.ExternalMatrix;
    }
    else {
      resolved.ExternalMatrix = []
    }

    if (msg.hmatrix !== undefined) {
      resolved.hmatrix = msg.hmatrix;
    }
    else {
      resolved.hmatrix = []
    }

    if (msg.xmatrix !== undefined) {
      resolved.xmatrix = msg.xmatrix;
    }
    else {
      resolved.xmatrix = []
    }

    return resolved;
    }
};

module.exports = VisionMatrix;
