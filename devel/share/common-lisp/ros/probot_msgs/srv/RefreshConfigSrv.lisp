; Auto-generated. Do not edit!


(cl:in-package probot_msgs-srv)


;//! \htmlinclude RefreshConfigSrv-request.msg.html

(cl:defclass <RefreshConfigSrv-request> (roslisp-msg-protocol:ros-message)
  ((ctrlCode
    :reader ctrlCode
    :initarg :ctrlCode
    :type cl:fixnum
    :initform 0)
   (config
    :reader config
    :initarg :config
    :type probot_msgs-msg:Config
    :initform (cl:make-instance 'probot_msgs-msg:Config)))
)

(cl:defclass RefreshConfigSrv-request (<RefreshConfigSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefreshConfigSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefreshConfigSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<RefreshConfigSrv-request> is deprecated: use probot_msgs-srv:RefreshConfigSrv-request instead.")))

(cl:ensure-generic-function 'ctrlCode-val :lambda-list '(m))
(cl:defmethod ctrlCode-val ((m <RefreshConfigSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:ctrlCode-val is deprecated.  Use probot_msgs-srv:ctrlCode instead.")
  (ctrlCode m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <RefreshConfigSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:config-val is deprecated.  Use probot_msgs-srv:config instead.")
  (config m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RefreshConfigSrv-request>)))
    "Constants for message type '<RefreshConfigSrv-request>"
  '((:CONFIG_GET . 0)
    (:CONFIG_SET . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RefreshConfigSrv-request)))
    "Constants for message type 'RefreshConfigSrv-request"
  '((:CONFIG_GET . 0)
    (:CONFIG_SET . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefreshConfigSrv-request>) ostream)
  "Serializes a message object of type '<RefreshConfigSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'ctrlCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefreshConfigSrv-request>) istream)
  "Deserializes a message object of type '<RefreshConfigSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrlCode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefreshConfigSrv-request>)))
  "Returns string type for a service object of type '<RefreshConfigSrv-request>"
  "probot_msgs/RefreshConfigSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshConfigSrv-request)))
  "Returns string type for a service object of type 'RefreshConfigSrv-request"
  "probot_msgs/RefreshConfigSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefreshConfigSrv-request>)))
  "Returns md5sum for a message object of type '<RefreshConfigSrv-request>"
  "2cd6e800d4c302c3f9e5141f29a85fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefreshConfigSrv-request)))
  "Returns md5sum for a message object of type 'RefreshConfigSrv-request"
  "2cd6e800d4c302c3f9e5141f29a85fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefreshConfigSrv-request>)))
  "Returns full string definition for message of type '<RefreshConfigSrv-request>"
  (cl:format cl:nil "~%~%int8 ctrlCode~%~%int8 CONFIG_GET    = 0~%int8 CONFIG_SET    = 1~%~%probot_msgs/Config config~%~%================================================================================~%MSG: probot_msgs/Config~%# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefreshConfigSrv-request)))
  "Returns full string definition for message of type 'RefreshConfigSrv-request"
  (cl:format cl:nil "~%~%int8 ctrlCode~%~%int8 CONFIG_GET    = 0~%int8 CONFIG_SET    = 1~%~%probot_msgs/Config config~%~%================================================================================~%MSG: probot_msgs/Config~%# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefreshConfigSrv-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefreshConfigSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RefreshConfigSrv-request
    (cl:cons ':ctrlCode (ctrlCode msg))
    (cl:cons ':config (config msg))
))
;//! \htmlinclude RefreshConfigSrv-response.msg.html

(cl:defclass <RefreshConfigSrv-response> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type probot_msgs-msg:InterfaceReturnCode
    :initform (cl:make-instance 'probot_msgs-msg:InterfaceReturnCode))
   (config_feedback
    :reader config_feedback
    :initarg :config_feedback
    :type probot_msgs-msg:Config
    :initform (cl:make-instance 'probot_msgs-msg:Config)))
)

(cl:defclass RefreshConfigSrv-response (<RefreshConfigSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefreshConfigSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefreshConfigSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<RefreshConfigSrv-response> is deprecated: use probot_msgs-srv:RefreshConfigSrv-response instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <RefreshConfigSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:code-val is deprecated.  Use probot_msgs-srv:code instead.")
  (code m))

(cl:ensure-generic-function 'config_feedback-val :lambda-list '(m))
(cl:defmethod config_feedback-val ((m <RefreshConfigSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:config_feedback-val is deprecated.  Use probot_msgs-srv:config_feedback instead.")
  (config_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefreshConfigSrv-response>) ostream)
  "Serializes a message object of type '<RefreshConfigSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'code) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefreshConfigSrv-response>) istream)
  "Deserializes a message object of type '<RefreshConfigSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'code) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefreshConfigSrv-response>)))
  "Returns string type for a service object of type '<RefreshConfigSrv-response>"
  "probot_msgs/RefreshConfigSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshConfigSrv-response)))
  "Returns string type for a service object of type 'RefreshConfigSrv-response"
  "probot_msgs/RefreshConfigSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefreshConfigSrv-response>)))
  "Returns md5sum for a message object of type '<RefreshConfigSrv-response>"
  "2cd6e800d4c302c3f9e5141f29a85fce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefreshConfigSrv-response)))
  "Returns md5sum for a message object of type 'RefreshConfigSrv-response"
  "2cd6e800d4c302c3f9e5141f29a85fce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefreshConfigSrv-response>)))
  "Returns full string definition for message of type '<RefreshConfigSrv-response>"
  (cl:format cl:nil "probot_msgs/InterfaceReturnCode code~%probot_msgs/Config config_feedback~%~%~%================================================================================~%MSG: probot_msgs/InterfaceReturnCode~%# App Interface return codes for requests.  All App Interface service~%# replies are required to have a return code indicating success or failure~%# Specific return codes for different failure should be negative.~%int8 val~%~%int8 SUCCESS = 1~%int8 FAILURE = -1~%================================================================================~%MSG: probot_msgs/Config~%# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefreshConfigSrv-response)))
  "Returns full string definition for message of type 'RefreshConfigSrv-response"
  (cl:format cl:nil "probot_msgs/InterfaceReturnCode code~%probot_msgs/Config config_feedback~%~%~%================================================================================~%MSG: probot_msgs/InterfaceReturnCode~%# App Interface return codes for requests.  All App Interface service~%# replies are required to have a return code indicating success or failure~%# Specific return codes for different failure should be negative.~%int8 val~%~%int8 SUCCESS = 1~%int8 FAILURE = -1~%================================================================================~%MSG: probot_msgs/Config~%# The Config message contains system configuration data~%~%# The output log level for controller~%int8 controller_log_level~%bool init_with_all_zero_pos~%~%# The zero calibration parameters~%bool        enable_joint_calibration~%float32[]   seneor_position~%float32[]   speed_to_sensor~%float32[]   speed_to_zero~%~%# The tool's relative pose to end-effector(tool0)~%# This is used to jog tool instead of end-effector~%# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)~%geometry_msgs/Pose[] pose_to_eef~%~%# The bit-map mask of valid fields which this message contains~%int32 mask~%~%int32 MASK_LOGLEVEL          = 1~%int32 MASK_ZERO_CALIBRATION  = 2~%int32 MASK_TOOL_POSE         = 4~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefreshConfigSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefreshConfigSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RefreshConfigSrv-response
    (cl:cons ':code (code msg))
    (cl:cons ':config_feedback (config_feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RefreshConfigSrv)))
  'RefreshConfigSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RefreshConfigSrv)))
  'RefreshConfigSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefreshConfigSrv)))
  "Returns string type for a service object of type '<RefreshConfigSrv>"
  "probot_msgs/RefreshConfigSrv")