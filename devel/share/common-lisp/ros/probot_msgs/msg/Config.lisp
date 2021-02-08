; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude Config.msg.html

(cl:defclass <Config> (roslisp-msg-protocol:ros-message)
  ((controller_log_level
    :reader controller_log_level
    :initarg :controller_log_level
    :type cl:fixnum
    :initform 0)
   (init_with_all_zero_pos
    :reader init_with_all_zero_pos
    :initarg :init_with_all_zero_pos
    :type cl:boolean
    :initform cl:nil)
   (enable_joint_calibration
    :reader enable_joint_calibration
    :initarg :enable_joint_calibration
    :type cl:boolean
    :initform cl:nil)
   (seneor_position
    :reader seneor_position
    :initarg :seneor_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (speed_to_sensor
    :reader speed_to_sensor
    :initarg :speed_to_sensor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (speed_to_zero
    :reader speed_to_zero
    :initarg :speed_to_zero
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pose_to_eef
    :reader pose_to_eef
    :initarg :pose_to_eef
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (mask
    :reader mask
    :initarg :mask
    :type cl:integer
    :initform 0))
)

(cl:defclass Config (<Config>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Config>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Config)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<Config> is deprecated: use probot_msgs-msg:Config instead.")))

(cl:ensure-generic-function 'controller_log_level-val :lambda-list '(m))
(cl:defmethod controller_log_level-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:controller_log_level-val is deprecated.  Use probot_msgs-msg:controller_log_level instead.")
  (controller_log_level m))

(cl:ensure-generic-function 'init_with_all_zero_pos-val :lambda-list '(m))
(cl:defmethod init_with_all_zero_pos-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:init_with_all_zero_pos-val is deprecated.  Use probot_msgs-msg:init_with_all_zero_pos instead.")
  (init_with_all_zero_pos m))

(cl:ensure-generic-function 'enable_joint_calibration-val :lambda-list '(m))
(cl:defmethod enable_joint_calibration-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:enable_joint_calibration-val is deprecated.  Use probot_msgs-msg:enable_joint_calibration instead.")
  (enable_joint_calibration m))

(cl:ensure-generic-function 'seneor_position-val :lambda-list '(m))
(cl:defmethod seneor_position-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:seneor_position-val is deprecated.  Use probot_msgs-msg:seneor_position instead.")
  (seneor_position m))

(cl:ensure-generic-function 'speed_to_sensor-val :lambda-list '(m))
(cl:defmethod speed_to_sensor-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:speed_to_sensor-val is deprecated.  Use probot_msgs-msg:speed_to_sensor instead.")
  (speed_to_sensor m))

(cl:ensure-generic-function 'speed_to_zero-val :lambda-list '(m))
(cl:defmethod speed_to_zero-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:speed_to_zero-val is deprecated.  Use probot_msgs-msg:speed_to_zero instead.")
  (speed_to_zero m))

(cl:ensure-generic-function 'pose_to_eef-val :lambda-list '(m))
(cl:defmethod pose_to_eef-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:pose_to_eef-val is deprecated.  Use probot_msgs-msg:pose_to_eef instead.")
  (pose_to_eef m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:mask-val is deprecated.  Use probot_msgs-msg:mask instead.")
  (mask m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Config>)))
    "Constants for message type '<Config>"
  '((:MASK_LOGLEVEL . 1)
    (:MASK_ZERO_CALIBRATION . 2)
    (:MASK_TOOL_POSE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Config)))
    "Constants for message type 'Config"
  '((:MASK_LOGLEVEL . 1)
    (:MASK_ZERO_CALIBRATION . 2)
    (:MASK_TOOL_POSE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Config>) ostream)
  "Serializes a message object of type '<Config>"
  (cl:let* ((signed (cl:slot-value msg 'controller_log_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init_with_all_zero_pos) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_joint_calibration) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'seneor_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'seneor_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_to_sensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'speed_to_sensor))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_to_zero))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'speed_to_zero))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_to_eef))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_to_eef))
  (cl:let* ((signed (cl:slot-value msg 'mask)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Config>) istream)
  "Deserializes a message object of type '<Config>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_log_level) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'init_with_all_zero_pos) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_joint_calibration) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'seneor_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'seneor_position)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_to_sensor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_to_sensor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_to_zero) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_to_zero)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_to_eef) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_to_eef)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mask) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Config>)))
  "Returns string type for a message object of type '<Config>"
  "probot_msgs/Config")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Config)))
  "Returns string type for a message object of type 'Config"
  "probot_msgs/Config")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Config>)))
  "Returns md5sum for a message object of type '<Config>"
  "cd76bb6e4c9a57426c629f8fe5205f36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Config)))
  "Returns md5sum for a message object of type 'Config"
  "cd76bb6e4c9a57426c629f8fe5205f36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Config>)))
  "Returns full string definition for message of type '<Config>"
  (cl:format cl:nil "# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Config)))
  "Returns full string definition for message of type 'Config"
  (cl:format cl:nil "# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Config>))
  (cl:+ 0
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'seneor_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_to_sensor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_to_zero) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_to_eef) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Config>))
  "Converts a ROS message object to a list"
  (cl:list 'Config
    (cl:cons ':controller_log_level (controller_log_level msg))
    (cl:cons ':init_with_all_zero_pos (init_with_all_zero_pos msg))
    (cl:cons ':enable_joint_calibration (enable_joint_calibration msg))
    (cl:cons ':seneor_position (seneor_position msg))
    (cl:cons ':speed_to_sensor (speed_to_sensor msg))
    (cl:cons ':speed_to_zero (speed_to_zero msg))
    (cl:cons ':pose_to_eef (pose_to_eef msg))
    (cl:cons ':mask (mask msg))
))
