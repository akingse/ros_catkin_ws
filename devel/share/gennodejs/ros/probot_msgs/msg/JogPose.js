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

class JogPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mask = null;
      this.direction = null;
      this.mode = null;
      this.velocity_scale = null;
      this.frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = 0;
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
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JogPose
    // Serialize message field [mask]
    bufferOffset = _serializer.int8(obj.mask, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int8(obj.direction, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [velocity_scale]
    bufferOffset = _serializer.float32(obj.velocity_scale, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.int8(obj.frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JogPose
    let len;
    let data = new JogPose(null);
    // Deserialize message field [mask]
    data.mask = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [velocity_scale]
    data.velocity_scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/JogPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd193764a9f7e2d9ca8e4aaaa3600bff9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Jogging pose message contains control information for jogging
    # end-effector to a target pose
    # It means stopping jogging if mask is JOGGING_STOP
    
    # The bit map mask to indicate which pose data is jogged
    int8 mask
    
    # The jogging direction
    int8 direction
    
    # The jogging mode
    int8 mode
    
    # The velocity scale for move_group interface
    float32 velocity_scale
    
    # The jogging frame id
    int8 frame_id
    
    int8 DIR_PLUS = 0
    int8 DIR_MINUS = 1
    
    # bit map of jogging
    int8 JOGGING_STOP = 0
    int8 JOGGING_X = 1
    int8 JOGGING_Y = 2
    int8 JOGGING_Z = 4
    int8 JOGGING_ROLL = 8
    int8 JOGGING_PITCH = 16
    int8 JOGGING_YAW = 32
    
    int8 MOD_CONTINUOUS            = 0
    int8 MOD_INCREMENT_10_MM       = 1
    int8 MOD_INCREMENT_1_MM        = 2
    int8 MOD_INCREMENT_01_MM       = 3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JogPose(null);
    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = 0
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

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    return resolved;
    }
};

// Constants for message
JogPose.Constants = {
  DIR_PLUS: 0,
  DIR_MINUS: 1,
  JOGGING_STOP: 0,
  JOGGING_X: 1,
  JOGGING_Y: 2,
  JOGGING_Z: 4,
  JOGGING_ROLL: 8,
  JOGGING_PITCH: 16,
  JOGGING_YAW: 32,
  MOD_CONTINUOUS: 0,
  MOD_INCREMENT_10_MM: 1,
  MOD_INCREMENT_1_MM: 2,
  MOD_INCREMENT_01_MM: 3,
}

module.exports = JogPose;
