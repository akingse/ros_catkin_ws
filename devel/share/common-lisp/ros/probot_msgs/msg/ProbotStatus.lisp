; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude ProbotStatus.msg.html

(cl:defclass <ProbotStatus> (roslisp-msg-protocol:ros-message)
  ((jointsPosition
    :reader jointsPosition
    :initarg :jointsPosition
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (probotPose
    :reader probotPose
    :initarg :probotPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (inputIOs
    :reader inputIOs
    :initarg :inputIOs
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (outputIOs
    :reader outputIOs
    :initarg :outputIOs
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (outputRelay
    :reader outputRelay
    :initarg :outputRelay
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (inputButton
    :reader inputButton
    :initarg :inputButton
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (inputLimitSensors
    :reader inputLimitSensors
    :initarg :inputLimitSensors
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (inputHomeSensors
    :reader inputHomeSensors
    :initarg :inputHomeSensors
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass ProbotStatus (<ProbotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProbotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProbotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<ProbotStatus> is deprecated: use probot_msgs-msg:ProbotStatus instead.")))

(cl:ensure-generic-function 'jointsPosition-val :lambda-list '(m))
(cl:defmethod jointsPosition-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:jointsPosition-val is deprecated.  Use probot_msgs-msg:jointsPosition instead.")
  (jointsPosition m))

(cl:ensure-generic-function 'probotPose-val :lambda-list '(m))
(cl:defmethod probotPose-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:probotPose-val is deprecated.  Use probot_msgs-msg:probotPose instead.")
  (probotPose m))

(cl:ensure-generic-function 'inputIOs-val :lambda-list '(m))
(cl:defmethod inputIOs-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:inputIOs-val is deprecated.  Use probot_msgs-msg:inputIOs instead.")
  (inputIOs m))

(cl:ensure-generic-function 'outputIOs-val :lambda-list '(m))
(cl:defmethod outputIOs-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:outputIOs-val is deprecated.  Use probot_msgs-msg:outputIOs instead.")
  (outputIOs m))

(cl:ensure-generic-function 'outputRelay-val :lambda-list '(m))
(cl:defmethod outputRelay-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:outputRelay-val is deprecated.  Use probot_msgs-msg:outputRelay instead.")
  (outputRelay m))

(cl:ensure-generic-function 'inputButton-val :lambda-list '(m))
(cl:defmethod inputButton-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:inputButton-val is deprecated.  Use probot_msgs-msg:inputButton instead.")
  (inputButton m))

(cl:ensure-generic-function 'inputLimitSensors-val :lambda-list '(m))
(cl:defmethod inputLimitSensors-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:inputLimitSensors-val is deprecated.  Use probot_msgs-msg:inputLimitSensors instead.")
  (inputLimitSensors m))

(cl:ensure-generic-function 'inputHomeSensors-val :lambda-list '(m))
(cl:defmethod inputHomeSensors-val ((m <ProbotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:inputHomeSensors-val is deprecated.  Use probot_msgs-msg:inputHomeSensors instead.")
  (inputHomeSensors m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProbotStatus>)))
    "Constants for message type '<ProbotStatus>"
  '((:IO_OFF . 0)
    (:IO_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProbotStatus)))
    "Constants for message type 'ProbotStatus"
  '((:IO_OFF . 0)
    (:IO_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProbotStatus>) ostream)
  "Serializes a message object of type '<ProbotStatus>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointsPosition))))
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
   (cl:slot-value msg 'jointsPosition))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'probotPose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inputIOs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inputIOs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'outputIOs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'outputIOs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'outputRelay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'outputRelay))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inputButton))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inputButton))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inputLimitSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inputLimitSensors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'inputHomeSensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'inputHomeSensors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProbotStatus>) istream)
  "Deserializes a message object of type '<ProbotStatus>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointsPosition) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointsPosition)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'probotPose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inputIOs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inputIOs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'outputIOs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'outputIOs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'outputRelay) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'outputRelay)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inputButton) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inputButton)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inputLimitSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inputLimitSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'inputHomeSensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'inputHomeSensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProbotStatus>)))
  "Returns string type for a message object of type '<ProbotStatus>"
  "probot_msgs/ProbotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProbotStatus)))
  "Returns string type for a message object of type 'ProbotStatus"
  "probot_msgs/ProbotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProbotStatus>)))
  "Returns md5sum for a message object of type '<ProbotStatus>"
  "8545ed5a2953e67b3a5193c804789850")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProbotStatus)))
  "Returns md5sum for a message object of type 'ProbotStatus"
  "8545ed5a2953e67b3a5193c804789850")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProbotStatus>)))
  "Returns full string definition for message of type '<ProbotStatus>"
  (cl:format cl:nil "float64[] jointsPosition~%geometry_msgs/Pose probotPose~%~%bool[] inputIOs~%bool[] outputIOs~%bool[] outputRelay~%bool[] inputButton~%bool[] inputLimitSensors~%bool[] inputHomeSensors~%~%int8 IO_OFF = 0~%int8 IO_ON = 1~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProbotStatus)))
  "Returns full string definition for message of type 'ProbotStatus"
  (cl:format cl:nil "float64[] jointsPosition~%geometry_msgs/Pose probotPose~%~%bool[] inputIOs~%bool[] outputIOs~%bool[] outputRelay~%bool[] inputButton~%bool[] inputLimitSensors~%bool[] inputHomeSensors~%~%int8 IO_OFF = 0~%int8 IO_ON = 1~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProbotStatus>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointsPosition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'probotPose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inputIOs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'outputIOs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'outputRelay) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inputButton) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inputLimitSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'inputHomeSensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProbotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ProbotStatus
    (cl:cons ':jointsPosition (jointsPosition msg))
    (cl:cons ':probotPose (probotPose msg))
    (cl:cons ':inputIOs (inputIOs msg))
    (cl:cons ':outputIOs (outputIOs msg))
    (cl:cons ':outputRelay (outputRelay msg))
    (cl:cons ':inputButton (inputButton msg))
    (cl:cons ':inputLimitSensors (inputLimitSensors msg))
    (cl:cons ':inputHomeSensors (inputHomeSensors msg))
))
