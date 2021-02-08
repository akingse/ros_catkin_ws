; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude JogPose.msg.html

(cl:defclass <JogPose> (roslisp-msg-protocol:ros-message)
  ((mask
    :reader mask
    :initarg :mask
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
    :initform 0.0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JogPose (<JogPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JogPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JogPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<JogPose> is deprecated: use probot_msgs-msg:JogPose instead.")))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <JogPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:mask-val is deprecated.  Use probot_msgs-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <JogPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:direction-val is deprecated.  Use probot_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JogPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:mode-val is deprecated.  Use probot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'velocity_scale-val :lambda-list '(m))
(cl:defmethod velocity_scale-val ((m <JogPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:velocity_scale-val is deprecated.  Use probot_msgs-msg:velocity_scale instead.")
  (velocity_scale m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <JogPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:frame_id-val is deprecated.  Use probot_msgs-msg:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JogPose>)))
    "Constants for message type '<JogPose>"
  '((:DIR_PLUS . 0)
    (:DIR_MINUS . 1)
    (:JOGGING_STOP . 0)
    (:JOGGING_X . 1)
    (:JOGGING_Y . 2)
    (:JOGGING_Z . 4)
    (:JOGGING_ROLL . 8)
    (:JOGGING_PITCH . 16)
    (:JOGGING_YAW . 32)
    (:MOD_CONTINUOUS . 0)
    (:MOD_INCREMENT_10_MM . 1)
    (:MOD_INCREMENT_1_MM . 2)
    (:MOD_INCREMENT_01_MM . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JogPose)))
    "Constants for message type 'JogPose"
  '((:DIR_PLUS . 0)
    (:DIR_MINUS . 1)
    (:JOGGING_STOP . 0)
    (:JOGGING_X . 1)
    (:JOGGING_Y . 2)
    (:JOGGING_Z . 4)
    (:JOGGING_ROLL . 8)
    (:JOGGING_PITCH . 16)
    (:JOGGING_YAW . 32)
    (:MOD_CONTINUOUS . 0)
    (:MOD_INCREMENT_10_MM . 1)
    (:MOD_INCREMENT_1_MM . 2)
    (:MOD_INCREMENT_01_MM . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JogPose>) ostream)
  "Serializes a message object of type '<JogPose>"
  (cl:let* ((signed (cl:slot-value msg 'mask)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'frame_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JogPose>) istream)
  "Deserializes a message object of type '<JogPose>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mask) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JogPose>)))
  "Returns string type for a message object of type '<JogPose>"
  "probot_msgs/JogPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JogPose)))
  "Returns string type for a message object of type 'JogPose"
  "probot_msgs/JogPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JogPose>)))
  "Returns md5sum for a message object of type '<JogPose>"
  "d193764a9f7e2d9ca8e4aaaa3600bff9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JogPose)))
  "Returns md5sum for a message object of type 'JogPose"
  "d193764a9f7e2d9ca8e4aaaa3600bff9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JogPose>)))
  "Returns full string definition for message of type '<JogPose>"
  (cl:format cl:nil "# The Jogging pose message contains control information for jogging~%# end-effector to a target pose~%# It means stopping jogging if mask is JOGGING_STOP~%~%# The bit map mask to indicate which pose data is jogged~%int8 mask~%~%# The jogging direction~%int8 direction~%~%# The jogging mode~%int8 mode~%~%# The velocity scale for move_group interface~%float32 velocity_scale~%~%# The jogging frame id~%int8 frame_id~%~%int8 DIR_PLUS = 0~%int8 DIR_MINUS = 1~%~%# bit map of jogging~%int8 JOGGING_STOP = 0~%int8 JOGGING_X = 1~%int8 JOGGING_Y = 2~%int8 JOGGING_Z = 4~%int8 JOGGING_ROLL = 8~%int8 JOGGING_PITCH = 16~%int8 JOGGING_YAW = 32~%~%int8 MOD_CONTINUOUS            = 0~%int8 MOD_INCREMENT_10_MM       = 1~%int8 MOD_INCREMENT_1_MM        = 2~%int8 MOD_INCREMENT_01_MM       = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JogPose)))
  "Returns full string definition for message of type 'JogPose"
  (cl:format cl:nil "# The Jogging pose message contains control information for jogging~%# end-effector to a target pose~%# It means stopping jogging if mask is JOGGING_STOP~%~%# The bit map mask to indicate which pose data is jogged~%int8 mask~%~%# The jogging direction~%int8 direction~%~%# The jogging mode~%int8 mode~%~%# The velocity scale for move_group interface~%float32 velocity_scale~%~%# The jogging frame id~%int8 frame_id~%~%int8 DIR_PLUS = 0~%int8 DIR_MINUS = 1~%~%# bit map of jogging~%int8 JOGGING_STOP = 0~%int8 JOGGING_X = 1~%int8 JOGGING_Y = 2~%int8 JOGGING_Z = 4~%int8 JOGGING_ROLL = 8~%int8 JOGGING_PITCH = 16~%int8 JOGGING_YAW = 32~%~%int8 MOD_CONTINUOUS            = 0~%int8 MOD_INCREMENT_10_MM       = 1~%int8 MOD_INCREMENT_1_MM        = 2~%int8 MOD_INCREMENT_01_MM       = 3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JogPose>))
  (cl:+ 0
     1
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JogPose>))
  "Converts a ROS message object to a list"
  (cl:list 'JogPose
    (cl:cons ':mask (mask msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':velocity_scale (velocity_scale msg))
    (cl:cons ':frame_id (frame_id msg))
))
