// Auto-generated. Do not edit!

// (in-package probot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Config = require('../msg/Config.js');

//-----------------------------------------------------------

let InterfaceReturnCode = require('../msg/InterfaceReturnCode.js');

//-----------------------------------------------------------

class RefreshConfigSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ctrlCode = null;
      this.config = null;
    }
    else {
      if (initObj.hasOwnProperty('ctrlCode')) {
        this.ctrlCode = initObj.ctrlCode
      }
      else {
        this.ctrlCode = 0;
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new Config();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefreshConfigSrvRequest
    // Serialize message field [ctrlCode]
    bufferOffset = _serializer.int8(obj.ctrlCode, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = Config.serialize(obj.config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefreshConfigSrvRequest
    let len;
    let data = new RefreshConfigSrvRequest(null);
    // Deserialize message field [ctrlCode]
    data.ctrlCode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = Config.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Config.getMessageSize(object.config);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/RefreshConfigSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '111ecb3fca9fa117f8c6153cee07684b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int8 ctrlCode
    
    int8 CONFIG_GET    = 0
    int8 CONFIG_SET    = 1
    
    probot_msgs/Config config
    
    ================================================================================
    MSG: probot_msgs/Config
    # The Config message contains system configuration data
    
    # The output log level for controller
    int8 controller_log_level
    bool init_with_all_zero_pos
    
    # The zero calibration parameters
    bool        enable_joint_calibration
    float32[]   seneor_position
    float32[]   speed_to_sensor
    float32[]   speed_to_zero
    
    # The tool's relative pose to end-effector(tool0)
    # This is used to jog tool instead of end-effector
    # If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
    geometry_msgs/Pose[] pose_to_eef
    
    # The bit-map mask of valid fields which this message contains
    int32 mask
    
    int32 MASK_LOGLEVEL          = 1
    int32 MASK_ZERO_CALIBRATION  = 2
    int32 MASK_TOOL_POSE         = 4
    
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
    const resolved = new RefreshConfigSrvRequest(null);
    if (msg.ctrlCode !== undefined) {
      resolved.ctrlCode = msg.ctrlCode;
    }
    else {
      resolved.ctrlCode = 0
    }

    if (msg.config !== undefined) {
      resolved.config = Config.Resolve(msg.config)
    }
    else {
      resolved.config = new Config()
    }

    return resolved;
    }
};

// Constants for message
RefreshConfigSrvRequest.Constants = {
  CONFIG_GET: 0,
  CONFIG_SET: 1,
}

class RefreshConfigSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.config_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new InterfaceReturnCode();
      }
      if (initObj.hasOwnProperty('config_feedback')) {
        this.config_feedback = initObj.config_feedback
      }
      else {
        this.config_feedback = new Config();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RefreshConfigSrvResponse
    // Serialize message field [code]
    bufferOffset = InterfaceReturnCode.serialize(obj.code, buffer, bufferOffset);
    // Serialize message field [config_feedback]
    bufferOffset = Config.serialize(obj.config_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefreshConfigSrvResponse
    let len;
    let data = new RefreshConfigSrvResponse(null);
    // Deserialize message field [code]
    data.code = InterfaceReturnCode.deserialize(buffer, bufferOffset);
    // Deserialize message field [config_feedback]
    data.config_feedback = Config.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Config.getMessageSize(object.config_feedback);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'probot_msgs/RefreshConfigSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93a3ac22a2881a5f1317319c544081ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    probot_msgs/InterfaceReturnCode code
    probot_msgs/Config config_feedback
    
    
    ================================================================================
    MSG: probot_msgs/InterfaceReturnCode
    # App Interface return codes for requests.  All App Interface service
    # replies are required to have a return code indicating success or failure
    # Specific return codes for different failure should be negative.
    int8 val
    
    int8 SUCCESS = 1
    int8 FAILURE = -1
    ================================================================================
    MSG: probot_msgs/Config
    # The Config message contains system configuration data
    
    # The output log level for controller
    int8 controller_log_level
    bool init_with_all_zero_pos
    
    # The zero calibration parameters
    bool        enable_joint_calibration
    float32[]   seneor_position
    float32[]   speed_to_sensor
    float32[]   speed_to_zero
    
    # The tool's relative pose to end-effector(tool0)
    # This is used to jog tool instead of end-effector
    # If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
    geometry_msgs/Pose[] pose_to_eef
    
    # The bit-map mask of valid fields which this message contains
    int32 mask
    
    int32 MASK_LOGLEVEL          = 1
    int32 MASK_ZERO_CALIBRATION  = 2
    int32 MASK_TOOL_POSE         = 4
    
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
    const resolved = new RefreshConfigSrvResponse(null);
    if (msg.code !== undefined) {
      resolved.code = InterfaceReturnCode.Resolve(msg.code)
    }
    else {
      resolved.code = new InterfaceReturnCode()
    }

    if (msg.config_feedback !== undefined) {
      resolved.config_feedback = Config.Resolve(msg.config_feedback)
    }
    else {
      resolved.config_feedback = new Config()
    }

    return resolved;
    }
};

module.exports = {
  Request: RefreshConfigSrvRequest,
  Response: RefreshConfigSrvResponse,
  md5sum() { return '2cd6e800d4c302c3f9e5141f29a85fce'; },
  datatype() { return 'probot_msgs/RefreshConfigSrv'; }
};
