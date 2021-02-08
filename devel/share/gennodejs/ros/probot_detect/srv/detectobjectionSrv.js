// Auto-generated. Do not edit!

// (in-package probot_detect.srv)


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
    return 'probot_detect/detectobjectionSrvRequest';
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
      this.redObjList = null;
      this.greenObjList = null;
      this.blueObjList = null;
      this.blackObjList = null;
      this.resultList = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('redObjList')) {
        this.redObjList = initObj.redObjList
      }
      else {
        this.redObjList = [];
      }
      if (initObj.hasOwnProperty('greenObjList')) {
        this.greenObjList = initObj.greenObjList
      }
      else {
        this.greenObjList = [];
      }
      if (initObj.hasOwnProperty('blueObjList')) {
        this.blueObjList = initObj.blueObjList
      }
      else {
        this.blueObjList = [];
      }
      if (initObj.hasOwnProperty('blackObjList')) {
        this.blackObjList = initObj.blackObjList
      }
      else {
        this.blackObjList = [];
      }
      if (initObj.hasOwnProperty('resultList')) {
        this.resultList = initObj.resultList
      }
      else {
        this.resultList = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type detectobjectionSrvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.int32(obj.result, buffer, bufferOffset);
    // Serialize message field [redObjList]
    // Serialize the length for message field [redObjList]
    bufferOffset = _serializer.uint32(obj.redObjList.length, buffer, bufferOffset);
    obj.redObjList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [greenObjList]
    // Serialize the length for message field [greenObjList]
    bufferOffset = _serializer.uint32(obj.greenObjList.length, buffer, bufferOffset);
    obj.greenObjList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [blueObjList]
    // Serialize the length for message field [blueObjList]
    bufferOffset = _serializer.uint32(obj.blueObjList.length, buffer, bufferOffset);
    obj.blueObjList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [blackObjList]
    // Serialize the length for message field [blackObjList]
    bufferOffset = _serializer.uint32(obj.blackObjList.length, buffer, bufferOffset);
    obj.blackObjList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [resultList]
    // Serialize the length for message field [resultList]
    bufferOffset = _serializer.uint32(obj.resultList.length, buffer, bufferOffset);
    obj.resultList.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type detectobjectionSrvResponse
    let len;
    let data = new detectobjectionSrvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [redObjList]
    // Deserialize array length for message field [redObjList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.redObjList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.redObjList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [greenObjList]
    // Deserialize array length for message field [greenObjList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.greenObjList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.greenObjList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [blueObjList]
    // Deserialize array length for message field [blueObjList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blueObjList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blueObjList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [blackObjList]
    // Deserialize array length for message field [blackObjList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.blackObjList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.blackObjList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [resultList]
    // Deserialize array length for message field [resultList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resultList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resultList[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.redObjList.length;
    length += 56 * object.greenObjList.length;
    length += 56 * object.blueObjList.length;
    length += 56 * object.blackObjList.length;
    length += 56 * object.resultList.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_detect/detectobjectionSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6250c1904ab2b1063c09847559a81bb';
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
    geometry_msgs/Pose[] redObjList
    geometry_msgs/Pose[] greenObjList
    geometry_msgs/Pose[] blueObjList
    geometry_msgs/Pose[] blackObjList
    
    geometry_msgs/Pose[] resultList
    
    
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

    if (msg.redObjList !== undefined) {
      resolved.redObjList = new Array(msg.redObjList.length);
      for (let i = 0; i < resolved.redObjList.length; ++i) {
        resolved.redObjList[i] = geometry_msgs.msg.Pose.Resolve(msg.redObjList[i]);
      }
    }
    else {
      resolved.redObjList = []
    }

    if (msg.greenObjList !== undefined) {
      resolved.greenObjList = new Array(msg.greenObjList.length);
      for (let i = 0; i < resolved.greenObjList.length; ++i) {
        resolved.greenObjList[i] = geometry_msgs.msg.Pose.Resolve(msg.greenObjList[i]);
      }
    }
    else {
      resolved.greenObjList = []
    }

    if (msg.blueObjList !== undefined) {
      resolved.blueObjList = new Array(msg.blueObjList.length);
      for (let i = 0; i < resolved.blueObjList.length; ++i) {
        resolved.blueObjList[i] = geometry_msgs.msg.Pose.Resolve(msg.blueObjList[i]);
      }
    }
    else {
      resolved.blueObjList = []
    }

    if (msg.blackObjList !== undefined) {
      resolved.blackObjList = new Array(msg.blackObjList.length);
      for (let i = 0; i < resolved.blackObjList.length; ++i) {
        resolved.blackObjList[i] = geometry_msgs.msg.Pose.Resolve(msg.blackObjList[i]);
      }
    }
    else {
      resolved.blackObjList = []
    }

    if (msg.resultList !== undefined) {
      resolved.resultList = new Array(msg.resultList.length);
      for (let i = 0; i < resolved.resultList.length; ++i) {
        resolved.resultList[i] = geometry_msgs.msg.Pose.Resolve(msg.resultList[i]);
      }
    }
    else {
      resolved.resultList = []
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
  md5sum() { return '629f585055d916a25d4222c22c18c0b5'; },
  datatype() { return 'probot_detect/detectobjectionSrv'; }
};
