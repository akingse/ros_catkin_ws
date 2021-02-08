// Auto-generated. Do not edit!

// (in-package probot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Config {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controller_log_level = null;
      this.init_with_all_zero_pos = null;
      this.enable_joint_calibration = null;
      this.seneor_position = null;
      this.speed_to_sensor = null;
      this.speed_to_zero = null;
      this.pose_to_eef = null;
      this.mask = null;
    }
    else {
      if (initObj.hasOwnProperty('controller_log_level')) {
        this.controller_log_level = initObj.controller_log_level
      }
      else {
        this.controller_log_level = 0;
      }
      if (initObj.hasOwnProperty('init_with_all_zero_pos')) {
        this.init_with_all_zero_pos = initObj.init_with_all_zero_pos
      }
      else {
        this.init_with_all_zero_pos = false;
      }
      if (initObj.hasOwnProperty('enable_joint_calibration')) {
        this.enable_joint_calibration = initObj.enable_joint_calibration
      }
      else {
        this.enable_joint_calibration = false;
      }
      if (initObj.hasOwnProperty('seneor_position')) {
        this.seneor_position = initObj.seneor_position
      }
      else {
        this.seneor_position = [];
      }
      if (initObj.hasOwnProperty('speed_to_sensor')) {
        this.speed_to_sensor = initObj.speed_to_sensor
      }
      else {
        this.speed_to_sensor = [];
      }
      if (initObj.hasOwnProperty('speed_to_zero')) {
        this.speed_to_zero = initObj.speed_to_zero
      }
      else {
        this.speed_to_zero = [];
      }
      if (initObj.hasOwnProperty('pose_to_eef')) {
        this.pose_to_eef = initObj.pose_to_eef
      }
      else {
        this.pose_to_eef = [];
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Config
    // Serialize message field [controller_log_level]
    bufferOffset = _serializer.int8(obj.controller_log_level, buffer, bufferOffset);
    // Serialize message field [init_with_all_zero_pos]
    bufferOffset = _serializer.bool(obj.init_with_all_zero_pos, buffer, bufferOffset);
    // Serialize message field [enable_joint_calibration]
    bufferOffset = _serializer.bool(obj.enable_joint_calibration, buffer, bufferOffset);
    // Serialize message field [seneor_position]
    bufferOffset = _arraySerializer.float32(obj.seneor_position, buffer, bufferOffset, null);
    // Serialize message field [speed_to_sensor]
    bufferOffset = _arraySerializer.float32(obj.speed_to_sensor, buffer, bufferOffset, null);
    // Serialize message field [speed_to_zero]
    bufferOffset = _arraySerializer.float32(obj.speed_to_zero, buffer, bufferOffset, null);
    // Serialize message field [pose_to_eef]
    // Serialize the length for message field [pose_to_eef]
    bufferOffset = _serializer.uint32(obj.pose_to_eef.length, buffer, bufferOffset);
    obj.pose_to_eef.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [mask]
    bufferOffset = _serializer.int32(obj.mask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Config
    let len;
    let data = new Config(null);
    // Deserialize message field [controller_log_level]
    data.controller_log_level = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [init_with_all_zero_pos]
    data.init_with_all_zero_pos = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_joint_calibration]
    data.enable_joint_calibration = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [seneor_position]
    data.seneor_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [speed_to_sensor]
    data.speed_to_sensor = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [speed_to_zero]
    data.speed_to_zero = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose_to_eef]
    // Deserialize array length for message field [pose_to_eef]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_to_eef = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_to_eef[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [mask]
    data.mask = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.seneor_position.length;
    length += 4 * object.speed_to_sensor.length;
    length += 4 * object.speed_to_zero.length;
    length += 56 * object.pose_to_eef.length;
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/Config';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd76bb6e4c9a57426c629f8fe5205f36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Config(null);
    if (msg.controller_log_level !== undefined) {
      resolved.controller_log_level = msg.controller_log_level;
    }
    else {
      resolved.controller_log_level = 0
    }

    if (msg.init_with_all_zero_pos !== undefined) {
      resolved.init_with_all_zero_pos = msg.init_with_all_zero_pos;
    }
    else {
      resolved.init_with_all_zero_pos = false
    }

    if (msg.enable_joint_calibration !== undefined) {
      resolved.enable_joint_calibration = msg.enable_joint_calibration;
    }
    else {
      resolved.enable_joint_calibration = false
    }

    if (msg.seneor_position !== undefined) {
      resolved.seneor_position = msg.seneor_position;
    }
    else {
      resolved.seneor_position = []
    }

    if (msg.speed_to_sensor !== undefined) {
      resolved.speed_to_sensor = msg.speed_to_sensor;
    }
    else {
      resolved.speed_to_sensor = []
    }

    if (msg.speed_to_zero !== undefined) {
      resolved.speed_to_zero = msg.speed_to_zero;
    }
    else {
      resolved.speed_to_zero = []
    }

    if (msg.pose_to_eef !== undefined) {
      resolved.pose_to_eef = new Array(msg.pose_to_eef.length);
      for (let i = 0; i < resolved.pose_to_eef.length; ++i) {
        resolved.pose_to_eef[i] = geometry_msgs.msg.Pose.Resolve(msg.pose_to_eef[i]);
      }
    }
    else {
      resolved.pose_to_eef = []
    }

    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = 0
    }

    return resolved;
    }
};

// Constants for message
Config.Constants = {
  MASK_LOGLEVEL: 1,
  MASK_ZERO_CALIBRATION: 2,
  MASK_TOOL_POSE: 4,
}

module.exports = Config;
