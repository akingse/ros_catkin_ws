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

class ProbotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointsPosition = null;
      this.probotPose = null;
      this.inputIOs = null;
      this.outputIOs = null;
      this.outputRelay = null;
      this.inputButton = null;
      this.inputLimitSensors = null;
      this.inputHomeSensors = null;
    }
    else {
      if (initObj.hasOwnProperty('jointsPosition')) {
        this.jointsPosition = initObj.jointsPosition
      }
      else {
        this.jointsPosition = [];
      }
      if (initObj.hasOwnProperty('probotPose')) {
        this.probotPose = initObj.probotPose
      }
      else {
        this.probotPose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('inputIOs')) {
        this.inputIOs = initObj.inputIOs
      }
      else {
        this.inputIOs = [];
      }
      if (initObj.hasOwnProperty('outputIOs')) {
        this.outputIOs = initObj.outputIOs
      }
      else {
        this.outputIOs = [];
      }
      if (initObj.hasOwnProperty('outputRelay')) {
        this.outputRelay = initObj.outputRelay
      }
      else {
        this.outputRelay = [];
      }
      if (initObj.hasOwnProperty('inputButton')) {
        this.inputButton = initObj.inputButton
      }
      else {
        this.inputButton = [];
      }
      if (initObj.hasOwnProperty('inputLimitSensors')) {
        this.inputLimitSensors = initObj.inputLimitSensors
      }
      else {
        this.inputLimitSensors = [];
      }
      if (initObj.hasOwnProperty('inputHomeSensors')) {
        this.inputHomeSensors = initObj.inputHomeSensors
      }
      else {
        this.inputHomeSensors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProbotStatus
    // Serialize message field [jointsPosition]
    bufferOffset = _arraySerializer.float64(obj.jointsPosition, buffer, bufferOffset, null);
    // Serialize message field [probotPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.probotPose, buffer, bufferOffset);
    // Serialize message field [inputIOs]
    bufferOffset = _arraySerializer.bool(obj.inputIOs, buffer, bufferOffset, null);
    // Serialize message field [outputIOs]
    bufferOffset = _arraySerializer.bool(obj.outputIOs, buffer, bufferOffset, null);
    // Serialize message field [outputRelay]
    bufferOffset = _arraySerializer.bool(obj.outputRelay, buffer, bufferOffset, null);
    // Serialize message field [inputButton]
    bufferOffset = _arraySerializer.bool(obj.inputButton, buffer, bufferOffset, null);
    // Serialize message field [inputLimitSensors]
    bufferOffset = _arraySerializer.bool(obj.inputLimitSensors, buffer, bufferOffset, null);
    // Serialize message field [inputHomeSensors]
    bufferOffset = _arraySerializer.bool(obj.inputHomeSensors, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProbotStatus
    let len;
    let data = new ProbotStatus(null);
    // Deserialize message field [jointsPosition]
    data.jointsPosition = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [probotPose]
    data.probotPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [inputIOs]
    data.inputIOs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [outputIOs]
    data.outputIOs = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [outputRelay]
    data.outputRelay = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [inputButton]
    data.inputButton = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [inputLimitSensors]
    data.inputLimitSensors = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [inputHomeSensors]
    data.inputHomeSensors = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.jointsPosition.length;
    length += object.inputIOs.length;
    length += object.outputIOs.length;
    length += object.outputRelay.length;
    length += object.inputButton.length;
    length += object.inputLimitSensors.length;
    length += object.inputHomeSensors.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'probot_msgs/ProbotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8545ed5a2953e67b3a5193c804789850';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] jointsPosition
    geometry_msgs/Pose probotPose
    
    bool[] inputIOs
    bool[] outputIOs
    bool[] outputRelay
    bool[] inputButton
    bool[] inputLimitSensors
    bool[] inputHomeSensors
    
    int8 IO_OFF = 0
    int8 IO_ON = 1
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
    const resolved = new ProbotStatus(null);
    if (msg.jointsPosition !== undefined) {
      resolved.jointsPosition = msg.jointsPosition;
    }
    else {
      resolved.jointsPosition = []
    }

    if (msg.probotPose !== undefined) {
      resolved.probotPose = geometry_msgs.msg.Pose.Resolve(msg.probotPose)
    }
    else {
      resolved.probotPose = new geometry_msgs.msg.Pose()
    }

    if (msg.inputIOs !== undefined) {
      resolved.inputIOs = msg.inputIOs;
    }
    else {
      resolved.inputIOs = []
    }

    if (msg.outputIOs !== undefined) {
      resolved.outputIOs = msg.outputIOs;
    }
    else {
      resolved.outputIOs = []
    }

    if (msg.outputRelay !== undefined) {
      resolved.outputRelay = msg.outputRelay;
    }
    else {
      resolved.outputRelay = []
    }

    if (msg.inputButton !== undefined) {
      resolved.inputButton = msg.inputButton;
    }
    else {
      resolved.inputButton = []
    }

    if (msg.inputLimitSensors !== undefined) {
      resolved.inputLimitSensors = msg.inputLimitSensors;
    }
    else {
      resolved.inputLimitSensors = []
    }

    if (msg.inputHomeSensors !== undefined) {
      resolved.inputHomeSensors = msg.inputHomeSensors;
    }
    else {
      resolved.inputHomeSensors = []
    }

    return resolved;
    }
};

// Constants for message
ProbotStatus.Constants = {
  IO_OFF: 0,
  IO_ON: 1,
}

module.exports = ProbotStatus;
