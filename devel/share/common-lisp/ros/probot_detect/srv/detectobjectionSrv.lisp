; Auto-generated. Do not edit!


(cl:in-package probot_detect-srv)


;//! \htmlinclude detectobjectionSrv-request.msg.html

(cl:defclass <detectobjectionSrv-request> (roslisp-msg-protocol:ros-message)
  ((objectType
    :reader objectType
    :initarg :objectType
    :type cl:integer
    :initform 0))
)

(cl:defclass detectobjectionSrv-request (<detectobjectionSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detectobjectionSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detectobjectionSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_detect-srv:<detectobjectionSrv-request> is deprecated: use probot_detect-srv:detectobjectionSrv-request instead.")))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <detectobjectionSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:objectType-val is deprecated.  Use probot_detect-srv:objectType instead.")
  (objectType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<detectobjectionSrv-request>)))
    "Constants for message type '<detectobjectionSrv-request>"
  '((:ALL_OBJECT . 1)
    (:RED_OBJECT . 2)
    (:GREEN_OBJECT . 3)
    (:BLUE_OBJECT . 4)
    (:BLACK_OBJECT . 5)
    (:TO_DETECT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'detectobjectionSrv-request)))
    "Constants for message type 'detectobjectionSrv-request"
  '((:ALL_OBJECT . 1)
    (:RED_OBJECT . 2)
    (:GREEN_OBJECT . 3)
    (:BLUE_OBJECT . 4)
    (:BLACK_OBJECT . 5)
    (:TO_DETECT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detectobjectionSrv-request>) ostream)
  "Serializes a message object of type '<detectobjectionSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'objectType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detectobjectionSrv-request>) istream)
  "Deserializes a message object of type '<detectobjectionSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'objectType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detectobjectionSrv-request>)))
  "Returns string type for a service object of type '<detectobjectionSrv-request>"
  "probot_detect/detectobjectionSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv-request)))
  "Returns string type for a service object of type 'detectobjectionSrv-request"
  "probot_detect/detectobjectionSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detectobjectionSrv-request>)))
  "Returns md5sum for a message object of type '<detectobjectionSrv-request>"
  "629f585055d916a25d4222c22c18c0b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detectobjectionSrv-request)))
  "Returns md5sum for a message object of type 'detectobjectionSrv-request"
  "629f585055d916a25d4222c22c18c0b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detectobjectionSrv-request>)))
  "Returns full string definition for message of type '<detectobjectionSrv-request>"
  (cl:format cl:nil "~%~%~%int32 ALL_OBJECT    = 1~%int32 RED_OBJECT    = 2~%int32 GREEN_OBJECT  = 3~%int32 BLUE_OBJECT   = 4~%int32 BLACK_OBJECT  = 5~%~%int32 TO_DETECT     = 6~%~%~%int32 objectType~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detectobjectionSrv-request)))
  "Returns full string definition for message of type 'detectobjectionSrv-request"
  (cl:format cl:nil "~%~%~%int32 ALL_OBJECT    = 1~%int32 RED_OBJECT    = 2~%int32 GREEN_OBJECT  = 3~%int32 BLUE_OBJECT   = 4~%int32 BLACK_OBJECT  = 5~%~%int32 TO_DETECT     = 6~%~%~%int32 objectType~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detectobjectionSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detectobjectionSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'detectobjectionSrv-request
    (cl:cons ':objectType (objectType msg))
))
;//! \htmlinclude detectobjectionSrv-response.msg.html

(cl:defclass <detectobjectionSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (redObjList
    :reader redObjList
    :initarg :redObjList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (greenObjList
    :reader greenObjList
    :initarg :greenObjList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (blueObjList
    :reader blueObjList
    :initarg :blueObjList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (blackObjList
    :reader blackObjList
    :initarg :blackObjList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (resultList
    :reader resultList
    :initarg :resultList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass detectobjectionSrv-response (<detectobjectionSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detectobjectionSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detectobjectionSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_detect-srv:<detectobjectionSrv-response> is deprecated: use probot_detect-srv:detectobjectionSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:result-val is deprecated.  Use probot_detect-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'redObjList-val :lambda-list '(m))
(cl:defmethod redObjList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:redObjList-val is deprecated.  Use probot_detect-srv:redObjList instead.")
  (redObjList m))

(cl:ensure-generic-function 'greenObjList-val :lambda-list '(m))
(cl:defmethod greenObjList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:greenObjList-val is deprecated.  Use probot_detect-srv:greenObjList instead.")
  (greenObjList m))

(cl:ensure-generic-function 'blueObjList-val :lambda-list '(m))
(cl:defmethod blueObjList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:blueObjList-val is deprecated.  Use probot_detect-srv:blueObjList instead.")
  (blueObjList m))

(cl:ensure-generic-function 'blackObjList-val :lambda-list '(m))
(cl:defmethod blackObjList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:blackObjList-val is deprecated.  Use probot_detect-srv:blackObjList instead.")
  (blackObjList m))

(cl:ensure-generic-function 'resultList-val :lambda-list '(m))
(cl:defmethod resultList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_detect-srv:resultList-val is deprecated.  Use probot_detect-srv:resultList instead.")
  (resultList m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<detectobjectionSrv-response>)))
    "Constants for message type '<detectobjectionSrv-response>"
  '((:SUCCESS . 0)
    (:ERROR . 1)
    (:TIMEOUT . 2)
    (:NOT_DETECTED . 3)
    (:NOT_SUPPORT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'detectobjectionSrv-response)))
    "Constants for message type 'detectobjectionSrv-response"
  '((:SUCCESS . 0)
    (:ERROR . 1)
    (:TIMEOUT . 2)
    (:NOT_DETECTED . 3)
    (:NOT_SUPPORT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <detectobjectionSrv-response>) ostream)
  "Serializes a message object of type '<detectobjectionSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'redObjList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'redObjList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'greenObjList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'greenObjList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blueObjList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blueObjList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blackObjList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blackObjList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'resultList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'resultList))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <detectobjectionSrv-response>) istream)
  "Deserializes a message object of type '<detectobjectionSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'redObjList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'redObjList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'greenObjList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'greenObjList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blueObjList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blueObjList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blackObjList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blackObjList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'resultList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'resultList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detectobjectionSrv-response>)))
  "Returns string type for a service object of type '<detectobjectionSrv-response>"
  "probot_detect/detectobjectionSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv-response)))
  "Returns string type for a service object of type 'detectobjectionSrv-response"
  "probot_detect/detectobjectionSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detectobjectionSrv-response>)))
  "Returns md5sum for a message object of type '<detectobjectionSrv-response>"
  "629f585055d916a25d4222c22c18c0b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detectobjectionSrv-response)))
  "Returns md5sum for a message object of type 'detectobjectionSrv-response"
  "629f585055d916a25d4222c22c18c0b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detectobjectionSrv-response>)))
  "Returns full string definition for message of type '<detectobjectionSrv-response>"
  (cl:format cl:nil "~%~%int32 SUCCESS        = 0~%int32 ERROR          = 1~%int32 TIMEOUT        = 2~%int32 NOT_DETECTED   = 3~%int32 NOT_SUPPORT    = 4~%~%~%int32 result~%geometry_msgs/Pose[] redObjList~%geometry_msgs/Pose[] greenObjList~%geometry_msgs/Pose[] blueObjList~%geometry_msgs/Pose[] blackObjList~%~%geometry_msgs/Pose[] resultList~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detectobjectionSrv-response)))
  "Returns full string definition for message of type 'detectobjectionSrv-response"
  (cl:format cl:nil "~%~%int32 SUCCESS        = 0~%int32 ERROR          = 1~%int32 TIMEOUT        = 2~%int32 NOT_DETECTED   = 3~%int32 NOT_SUPPORT    = 4~%~%~%int32 result~%geometry_msgs/Pose[] redObjList~%geometry_msgs/Pose[] greenObjList~%geometry_msgs/Pose[] blueObjList~%geometry_msgs/Pose[] blackObjList~%~%geometry_msgs/Pose[] resultList~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detectobjectionSrv-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'redObjList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'greenObjList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blueObjList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blackObjList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'resultList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detectobjectionSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'detectobjectionSrv-response
    (cl:cons ':result (result msg))
    (cl:cons ':redObjList (redObjList msg))
    (cl:cons ':greenObjList (greenObjList msg))
    (cl:cons ':blueObjList (blueObjList msg))
    (cl:cons ':blackObjList (blackObjList msg))
    (cl:cons ':resultList (resultList msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'detectobjectionSrv)))
  'detectobjectionSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'detectobjectionSrv)))
  'detectobjectionSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv)))
  "Returns string type for a service object of type '<detectobjectionSrv>"
  "probot_detect/detectobjectionSrv")