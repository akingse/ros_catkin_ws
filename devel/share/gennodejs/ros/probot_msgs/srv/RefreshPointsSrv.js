// Auto-generated. Do not edit!

// (in-package probot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredefinedPointList = require('../msg/PredefinedPointList.js');

//-----------------------------------------------------------

let InterfaceReturnCode = require('../msg/InterfaceReturnCode.js');

//-----------------------------------------------------------

class RefreshPointsSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrlCode = null;
      this.pointList = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrlCode')) {
        this.ctrlCode = initObj.ctrlCode
      }
      else {
        this.ctrlCode = 0;
      }
      if (initObj.hasOwnProperty('pointList')) {
        this.pointList = initObj.pointList
      }
      else {
        this.pointList = new PredefinedPointList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefreshPointsSrvRequest
    // Serialize message field [ctrlCode]
    bufferOffset = _serializer.int8(obj.ctrlCode, buffer, bufferOffset);
    // Serialize message field [pointList]
    bufferOffset = PredefinedPointList.serialize(obj.pointList, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefreshPointsSrvRequest
    let len;
    let data = new RefreshPointsSrvRequest(null);
    // Deserialize message field [ctrlCode]
    data.ctrlCode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pointList]
    data.pointList = PredefinedPointList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PredefinedPointList.getMessageSize(object.pointList);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/RefreshPointsSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f08e45c8af24d4a195995ab547506c50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int8 ctrlCode
    
    int8 POINTS_GET    = 0
    int8 POINTS_ADD    = 1
    int8 POINTS_UPDATE = 2
    int8 POINTS_DELETE = 3
    
    probot_msgs/PredefinedPointList pointList
    
    ================================================================================
    MSG: probot_msgs/PredefinedPointList
    # The predefined points list message contains all the pre-defined points
    
    PredefinedPoint[] points
    
    ================================================================================
    MSG: probot_msgs/PredefinedPoint
    # The Predefined message contains the information of a pre-defined point on rviz
    
    string name
    geometry_msgs/Pose pose
    float64[] joints
    uint32 digitalOutput
    uint32 relayOutput
    float64 pointDelayBeforeExecute
    
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
    const resolved = new RefreshPointsSrvRequest(null);
    if (msg.ctrlCode !== undefined) {
      resolved.ctrlCode = msg.ctrlCode;
    }
    else {
      resolved.ctrlCode = 0
    }

    if (msg.pointList !== undefined) {
      resolved.pointList = PredefinedPointList.Resolve(msg.pointList)
    }
    else {
      resolved.pointList = new PredefinedPointList()
    }

    return resolved;
    }
};

// Constants for message
RefreshPointsSrvRequest.Constants = {
  POINTS_GET: 0,
  POINTS_ADD: 1,
  POINTS_UPDATE: 2,
  POINTS_DELETE: 3,
}

class RefreshPointsSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.pointListFeedback = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new InterfaceReturnCode();
      }
      if (initObj.hasOwnProperty('pointListFeedback')) {
        this.pointListFeedback = initObj.pointListFeedback
      }
      else {
        this.pointListFeedback = new PredefinedPointList();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefreshPointsSrvResponse
    // Serialize message field [code]
    bufferOffset = InterfaceReturnCode.serialize(obj.code, buffer, bufferOffset);
    // Serialize message field [pointListFeedback]
    bufferOffset = PredefinedPointList.serialize(obj.pointListFeedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefreshPointsSrvResponse
    let len;
    let data = new RefreshPointsSrvResponse(null);
    // Deserialize message field [code]
    data.code = InterfaceReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [pointListFeedback]
    data.pointListFeedback = PredefinedPointList.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PredefinedPointList.getMessageSize(object.pointListFeedback);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/RefreshPointsSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9dfe497cd116d5e2b046e3b50c422dff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    probot_msgs/InterfaceReturnCode code
    probot_msgs/PredefinedPointList pointListFeedback
    
    
    ================================================================================
    MSG: probot_msgs/InterfaceReturnCode
    # App Interface return codes for requests.  All App Interface service
    # replies are required to have a return code indicating success or failure
    # Specific return codes for different failure should be negative.
    int8 val
    
    int8 SUCCESS = 1
    int8 FAILURE = -1
    ================================================================================
    MSG: probot_msgs/PredefinedPointList
    # The predefined points list message contains all the pre-defined points
    
    PredefinedPoint[] points
    
    ================================================================================
    MSG: probot_msgs/PredefinedPoint
    # The Predefined message contains the information of a pre-defined point on rviz
    
    string name
    geometry_msgs/Pose pose
    float64[] joints
    uint32 digitalOutput
    uint32 relayOutput
    float64 pointDelayBeforeExecute
    
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
    const resolved = new RefreshPointsSrvResponse(null);
    if (msg.code !== undefined) {
      resolved.code = InterfaceReturnCode.Resolve(msg.code)
    }
    else {
      resolved.code = new InterfaceReturnCode()
    }

    if (msg.pointListFeedback !== undefined) {
      resolved.pointListFeedback = PredefinedPointList.Resolve(msg.pointListFeedback)
    }
    else {
      resolved.pointListFeedback = new PredefinedPointList()
    }

    return resolved;
    }
};

module.exports = {
  Request: RefreshPointsSrvRequest,
  Response: RefreshPointsSrvResponse,
  md5sum() { return '45f7b8282295bca51124b6665b808529'; },
  datatype() { return 'probot_msgs/RefreshPointsSrv'; }
};
