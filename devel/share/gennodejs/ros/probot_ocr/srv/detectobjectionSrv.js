// Auto-generated. Do not edit!

// (in-package probot_ocr.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class detectobjectionSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectType = null;
    }
    else {
      if (initObj.hasOwnProperty('objectType')) {
        this.objectType = initObj.objectType
      }
      else {
        this.objectType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detectobjectionSrvRequest
    // Serialize message field [objectType]
    bufferOffset = _serializer.int32(obj.objectType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detectobjectionSrvRequest
    let len;
    let data = new detectobjectionSrvRequest(null);
    // Deserialize message field [objectType]
    data.objectType = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_ocr/detectobjectionSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb621a0964162d413a990e8fc694b09f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    int32 ALL_OBJECT    = 1
    int32 RED_OBJECT    = 2
    int32 GREEN_OBJECT  = 3
    int32 BLUE_OBJECT   = 4
    int32 BLACK_OBJECT  = 5
    
    int32 TO_DETECT     = 6
    
    
    int32 objectType
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detectobjectionSrvRequest(null);
    if (msg.objectType !== undefined) {
      resolved.objectType = msg.objectType;
    }
    else {
      resolved.objectType = 0
    }

    return resolved;
    }
};

// Constants for message
detectobjectionSrvRequest.Constants = {
  ALL_OBJECT: 1,
  RED_OBJECT: 2,
  GREEN_OBJECT: 3,
  BLUE_OBJECT: 4,
  BLACK_OBJECT: 5,
  TO_DETECT: 6,
}

class detectobjectionSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.charObjList = null;
      this.charName = null;
      this.charNum = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('charObjList')) {
        this.charObjList = initObj.charObjList
      }
      else {
        this.charObjList = [];
      }
      if (initObj.hasOwnProperty('charName')) {
        this.charName = initObj.charName
      }
      else {
        this.charName = [];
      }
      if (initObj.hasOwnProperty('charNum')) {
        this.charNum = initObj.charNum
      }
      else {
        this.charNum = [];
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detectobjectionSrvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [charObjList]
    // Serialize the length for message field [charObjList]
    bufferOffset = _serializer.uint32(obj.charObjList.length, buffer, bufferOffset);
    obj.charObjList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [charName]
    bufferOffset = _arraySerializer.string(obj.charName, buffer, bufferOffset, null);
    // Serialize message field [charNum]
    bufferOffset = _arraySerializer.string(obj.charNum, buffer, bufferOffset, null);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float64(obj.angle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detectobjectionSrvResponse
    let len;
    let data = new detectobjectionSrvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charObjList]
    // Deserialize array length for message field [charObjList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.charObjList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.charObjList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [charName]
    data.charName = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [charNum]
    data.charNum = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.charObjList.length;
    object.charName.forEach((val) => {
      length += 4 + val.length;
    });
    object.charNum.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.angle.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_ocr/detectobjectionSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39d54745614215fdcd7bbd923f88c1ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int32 SUCCESS        = 0
    int32 ERROR          = 1
    int32 TIMEOUT        = 2
    int32 NOT_DETECTED   = 3
    int32 NOT_SUPPORT    = 4
    
    
    int32 result
    
    geometry_msgs/Pose[] charObjList
    string[] charName
    string[] charNum
    float64[] angle
    
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new detectobjectionSrvResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.charObjList !== undefined) {
      resolved.charObjList = new Array(msg.charObjList.length);
      for (let i = 0; i < resolved.charObjList.length; ++i) {
        resolved.charObjList[i] = geometry_msgs.msg.Pose.Resolve(msg.charObjList[i]);
      }
    }
    else {
      resolved.charObjList = []
    }

    if (msg.charName !== undefined) {
      resolved.charName = msg.charName;
    }
    else {
      resolved.charName = []
    }

    if (msg.charNum !== undefined) {
      resolved.charNum = msg.charNum;
    }
    else {
      resolved.charNum = []
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    return resolved;
    }
};

// Constants for message
detectobjectionSrvResponse.Constants = {
  SUCCESS: 0,
  ERROR: 1,
  TIMEOUT: 2,
  NOT_DETECTED: 3,
  NOT_SUPPORT: 4,
}

module.exports = {
  Request: detectobjectionSrvRequest,
  Response: detectobjectionSrvResponse,
  md5sum() { return 'a2a0fbc7168d9342cca042cb3bffafc3'; },
  datatype() { return 'probot_ocr/detectobjectionSrv'; }
};
