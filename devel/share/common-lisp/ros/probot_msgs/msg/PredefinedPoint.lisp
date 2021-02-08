; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude PredefinedPoint.msg.html

(cl:defclass <PredefinedPoint> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (joints
    :reader joints
    :initarg :joints
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (digitalOutput
    :reader digitalOutput
    :initarg :digitalOutput
    :type cl:integer
    :initform 0)
   (relayOutput
    :reader relayOutput
    :initarg :relayOutput
    :type cl:integer
    :initform 0)
   (pointDelayBeforeExecute
    :reader pointDelayBeforeExecute
    :initarg :pointDelayBeforeExecute
    :type cl:float
    :initform 0.0))
)

(cl:defclass PredefinedPoint (<PredefinedPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredefinedPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredefinedPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<PredefinedPoint> is deprecated: use probot_msgs-msg:PredefinedPoint instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:name-val is deprecated.  Use probot_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:pose-val is deprecated.  Use probot_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:joints-val is deprecated.  Use probot_msgs-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'digitalOutput-val :lambda-list '(m))
(cl:defmethod digitalOutput-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:digitalOutput-val is deprecated.  Use probot_msgs-msg:digitalOutput instead.")
  (digitalOutput m))

(cl:ensure-generic-function 'relayOutput-val :lambda-list '(m))
(cl:defmethod relayOutput-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:relayOutput-val is deprecated.  Use probot_msgs-msg:relayOutput instead.")
  (relayOutput m))

(cl:ensure-generic-function 'pointDelayBeforeExecute-val :lambda-list '(m))
(cl:defmethod pointDelayBeforeExecute-val ((m <PredefinedPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:pointDelayBeforeExecute-val is deprecated.  Use probot_msgs-msg:pointDelayBeforeExecute instead.")
  (pointDelayBeforeExecute m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredefinedPoint>) ostream)
  "Serializes a message object of type '<PredefinedPoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digitalOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digitalOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digitalOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digitalOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relayOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relayOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'relayOutput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'relayOutput)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pointDelayBeforeExecute))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredefinedPoint>) istream)
  "Deserializes a message object of type '<PredefinedPoint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digitalOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'digitalOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'digitalOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'digitalOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relayOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relayOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'relayOutput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'relayOutput)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pointDelayBeforeExecute) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredefinedPoint>)))
  "Returns string type for a message object of type '<PredefinedPoint>"
  "probot_msgs/PredefinedPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredefinedPoint)))
  "Returns string type for a message object of type 'PredefinedPoint"
  "probot_msgs/PredefinedPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredefinedPoint>)))
  "Returns md5sum for a message object of type '<PredefinedPoint>"
  "f308b55170bd625509ff7caf9b3e7ca9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredefinedPoint)))
  "Returns md5sum for a message object of type 'PredefinedPoint"
  "f308b55170bd625509ff7caf9b3e7ca9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredefinedPoint>)))
  "Returns full string definition for message of type '<PredefinedPoint>"
  (cl:format cl:nil "# The Predefined message contains the information of a pre-defined point on rviz~%~%string name~%geometry_msgs/Pose pose~%float64[] joints~%uint32 digitalOutput~%uint32 relayOutput~%float64 pointDelayBeforeExecute~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredefinedPoint)))
  "Returns full string definition for message of type 'PredefinedPoint"
  (cl:format cl:nil "# The Predefined message contains the information of a pre-defined point on rviz~%~%string name~%geometry_msgs/Pose pose~%float64[] joints~%uint32 digitalOutput~%uint32 relayOutput~%float64 pointDelayBeforeExecute~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredefinedPoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredefinedPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PredefinedPoint
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':digitalOutput (digitalOutput msg))
    (cl:cons ':relayOutput (relayOutput msg))
    (cl:cons ':pointDelayBeforeExecute (pointDelayBeforeExecute msg))
))
