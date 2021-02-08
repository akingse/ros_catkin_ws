; Auto-generated. Do not edit!


(cl:in-package probot_ocr-srv)


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
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_ocr-srv:<detectobjectionSrv-request> is deprecated: use probot_ocr-srv:detectobjectionSrv-request instead.")))

(cl:ensure-generic-function 'objectType-val :lambda-list '(m))
(cl:defmethod objectType-val ((m <detectobjectionSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:objectType-val is deprecated.  Use probot_ocr-srv:objectType instead.")
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
  "probot_ocr/detectobjectionSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv-request)))
  "Returns string type for a service object of type 'detectobjectionSrv-request"
  "probot_ocr/detectobjectionSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detectobjectionSrv-request>)))
  "Returns md5sum for a message object of type '<detectobjectionSrv-request>"
  "a2a0fbc7168d9342cca042cb3bffafc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detectobjectionSrv-request)))
  "Returns md5sum for a message object of type 'detectobjectionSrv-request"
  "a2a0fbc7168d9342cca042cb3bffafc3")
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
   (charObjList
    :reader charObjList
    :initarg :charObjList
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (charName
    :reader charName
    :initarg :charName
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (charNum
    :reader charNum
    :initarg :charNum
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (angle
    :reader angle
    :initarg :angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass detectobjectionSrv-response (<detectobjectionSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <detectobjectionSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'detectobjectionSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_ocr-srv:<detectobjectionSrv-response> is deprecated: use probot_ocr-srv:detectobjectionSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:result-val is deprecated.  Use probot_ocr-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'charObjList-val :lambda-list '(m))
(cl:defmethod charObjList-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:charObjList-val is deprecated.  Use probot_ocr-srv:charObjList instead.")
  (charObjList m))

(cl:ensure-generic-function 'charName-val :lambda-list '(m))
(cl:defmethod charName-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:charName-val is deprecated.  Use probot_ocr-srv:charName instead.")
  (charName m))

(cl:ensure-generic-function 'charNum-val :lambda-list '(m))
(cl:defmethod charNum-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:charNum-val is deprecated.  Use probot_ocr-srv:charNum instead.")
  (charNum m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <detectobjectionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_ocr-srv:angle-val is deprecated.  Use probot_ocr-srv:angle instead.")
  (angle m))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'charObjList))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'charObjList))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'charName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'charName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'charNum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'charNum))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'angle))))
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
   (cl:slot-value msg 'angle))
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
  (cl:setf (cl:slot-value msg 'charObjList) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'charObjList)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'charName) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'charName)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'charNum) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'charNum)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'angle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'angle)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<detectobjectionSrv-response>)))
  "Returns string type for a service object of type '<detectobjectionSrv-response>"
  "probot_ocr/detectobjectionSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv-response)))
  "Returns string type for a service object of type 'detectobjectionSrv-response"
  "probot_ocr/detectobjectionSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<detectobjectionSrv-response>)))
  "Returns md5sum for a message object of type '<detectobjectionSrv-response>"
  "a2a0fbc7168d9342cca042cb3bffafc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'detectobjectionSrv-response)))
  "Returns md5sum for a message object of type 'detectobjectionSrv-response"
  "a2a0fbc7168d9342cca042cb3bffafc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<detectobjectionSrv-response>)))
  "Returns full string definition for message of type '<detectobjectionSrv-response>"
  (cl:format cl:nil "~%~%int32 SUCCESS        = 0~%int32 ERROR          = 1~%int32 TIMEOUT        = 2~%int32 NOT_DETECTED   = 3~%int32 NOT_SUPPORT    = 4~%~%~%int32 result~%~%geometry_msgs/Pose[] charObjList~%string[] charName~%string[] charNum~%float64[] angle~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'detectobjectionSrv-response)))
  "Returns full string definition for message of type 'detectobjectionSrv-response"
  (cl:format cl:nil "~%~%int32 SUCCESS        = 0~%int32 ERROR          = 1~%int32 TIMEOUT        = 2~%int32 NOT_DETECTED   = 3~%int32 NOT_SUPPORT    = 4~%~%~%int32 result~%~%geometry_msgs/Pose[] charObjList~%string[] charName~%string[] charNum~%float64[] angle~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <detectobjectionSrv-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'charObjList) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'charName) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'charNum) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <detectobjectionSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'detectobjectionSrv-response
    (cl:cons ':result (result msg))
    (cl:cons ':charObjList (charObjList msg))
    (cl:cons ':charName (charName msg))
    (cl:cons ':charNum (charNum msg))
    (cl:cons ':angle (angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'detectobjectionSrv)))
  'detectobjectionSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'detectobjectionSrv)))
  'detectobjectionSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'detectobjectionSrv)))
  "Returns string type for a service object of type '<detectobjectionSrv>"
  "probot_ocr/detectobjectionSrv")