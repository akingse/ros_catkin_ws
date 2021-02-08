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

class JogJoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_index = null;
      this.direction = null;
      this.mode = null;
      this.velocity_scale = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_index')) {
        this.joint_index = initObj.joint_index
      }
      else {
        this.joint_index = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('velocity_scale')) {
        this.velocity_scale = initObj.velocity_scale
      }
      else {
        this.velocity_scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JogJoint
    // Serialize message field [joint_index]
    bufferOffset = _serializer.int8(obj.joint_index, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int8(obj.direction, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [velocity_scale]
    bufferOffset = _serializer.float32(obj.velocity_scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JogJoint
    let len;
    let data = new JogJoint(null);
    // Deserialize message field [joint_index]
    data.joint_index = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [velocity_scale]
    data.velocity_scale = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/JogJoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02f6d1212f80ad72751bc065b3e3523c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Jogging joint message contains control information for jogging
    # a specific joint
    # Set velocity_scale to 0 to stop jogging
    
    # The jogged joint index
    # Negative joint index value means stop jogging
    int8 joint_index
    
    # The jogging direction
    int8 direction
    
    # The jogging mode
    int8 mode
    
    # The velocity scale for move_group interface
    float32 velocity_scale
    
    int8 DIR_PLUS = 0
    int8 DIR_MINUS = 1
    
    int8 MOD_CONTINUOUS            = 0
    int8 MOD_INCREMENT_10_DEGREE   = 1
    int8 MOD_INCREMENT_1_DEGREE    = 2
    int8 MOD_INCREMENT_01_DEGREE   = 3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JogJoint(null);
    if (msg.joint_index !== undefined) {
      resolved.joint_index = msg.joint_index;
    }
    else {
      resolved.joint_index = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.velocity_scale !== undefined) {
      resolved.velocity_scale = msg.velocity_scale;
    }
    else {
      resolved.velocity_scale = 0.0
    }

    return resolved;
    }
};

// Constants for message
JogJoint.Constants = {
  DIR_PLUS: 0,
  DIR_MINUS: 1,
  MOD_CONTINUOUS: 0,
  MOD_INCREMENT_10_DEGREE: 1,
  MOD_INCREMENT_1_DEGREE: 2,
  MOD_INCREMENT_01_DEGREE: 3,
}

module.exports = JogJoint;
