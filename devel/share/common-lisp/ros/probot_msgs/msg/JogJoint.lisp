; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude JogJoint.msg.html

(cl:defclass <JogJoint> (roslisp-msg-protocol:ros-message)
  ((joint_index
    :reader joint_index
    :initarg :joint_index
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (velocity_scale
    :reader velocity_scale
    :initarg :velocity_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass JogJoint (<JogJoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JogJoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JogJoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<JogJoint> is deprecated: use probot_msgs-msg:JogJoint instead.")))

(cl:ensure-generic-function 'joint_index-val :lambda-list '(m))
(cl:defmethod joint_index-val ((m <JogJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:joint_index-val is deprecated.  Use probot_msgs-msg:joint_index instead.")
  (joint_index m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <JogJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:direction-val is deprecated.  Use probot_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JogJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:mode-val is deprecated.  Use probot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'velocity_scale-val :lambda-list '(m))
(cl:defmethod velocity_scale-val ((m <JogJoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:velocity_scale-val is deprecated.  Use probot_msgs-msg:velocity_scale instead.")
  (velocity_scale m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JogJoint>)))
    "Constants for message type '<JogJoint>"
  '((:DIR_PLUS . 0)
    (:DIR_MINUS . 1)
    (:MOD_CONTINUOUS . 0)
    (:MOD_INCREMENT_10_DEGREE . 1)
    (:MOD_INCREMENT_1_DEGREE . 2)
    (:MOD_INCREMENT_01_DEGREE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JogJoint)))
    "Constants for message type 'JogJoint"
  '((:DIR_PLUS . 0)
    (:DIR_MINUS . 1)
    (:MOD_CONTINUOUS . 0)
    (:MOD_INCREMENT_10_DEGREE . 1)
    (:MOD_INCREMENT_1_DEGREE . 2)
    (:MOD_INCREMENT_01_DEGREE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JogJoint>) ostream)
  "Serializes a message object of type '<JogJoint>"
  (cl:let* ((signed (cl:slot-value msg 'joint_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JogJoint>) istream)
  "Deserializes a message object of type '<JogJoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JogJoint>)))
  "Returns string type for a message object of type '<JogJoint>"
  "probot_msgs/JogJoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JogJoint)))
  "Returns string type for a message object of type 'JogJoint"
  "probot_msgs/JogJoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JogJoint>)))
  "Returns md5sum for a message object of type '<JogJoint>"
  "02f6d1212f80ad72751bc065b3e3523c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JogJoint)))
  "Returns md5sum for a message object of type 'JogJoint"
  "02f6d1212f80ad72751bc065b3e3523c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JogJoint>)))
  "Returns full string definition for message of type '<JogJoint>"
  (cl:format cl:nil "# The Jogging joint message contains control information for jogging~%# a specific joint~%# Set velocity_scale to 0 to stop jogging~%~%# The jogged joint index~%# Negative joint index value means stop jogging~%int8 joint_index~%~%# The jogging direction~%int8 direction~%~%# The jogging mode~%int8 mode~%~%# The velocity scale for move_group interface~%float32 velocity_scale~%~%int8 DIR_PLUS = 0~%int8 DIR_MINUS = 1~%~%int8 MOD_CONTINUOUS            = 0~%int8 MOD_INCREMENT_10_DEGREE   = 1~%int8 MOD_INCREMENT_1_DEGREE    = 2~%int8 MOD_INCREMENT_01_DEGREE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JogJoint)))
  "Returns full string definition for message of type 'JogJoint"
  (cl:format cl:nil "# The Jogging joint message contains control information for jogging~%# a specific joint~%# Set velocity_scale to 0 to stop jogging~%~%# The jogged joint index~%# Negative joint index value means stop jogging~%int8 joint_index~%~%# The jogging direction~%int8 direction~%~%# The jogging mode~%int8 mode~%~%# The velocity scale for move_group interface~%float32 velocity_scale~%~%int8 DIR_PLUS = 0~%int8 DIR_MINUS = 1~%~%int8 MOD_CONTINUOUS            = 0~%int8 MOD_INCREMENT_10_DEGREE   = 1~%int8 MOD_INCREMENT_1_DEGREE    = 2~%int8 MOD_INCREMENT_01_DEGREE   = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JogJoint>))
  (cl:+ 0
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JogJoint>))
  "Converts a ROS message object to a list"
  (cl:list 'JogJoint
    (cl:cons ':joint_index (joint_index msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':velocity_scale (velocity_scale msg))
))
