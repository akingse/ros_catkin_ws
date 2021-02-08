; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude SetOutputIO.msg.html

(cl:defclass <SetOutputIO> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (mask
    :reader mask
    :initarg :mask
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass SetOutputIO (<SetOutputIO>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetOutputIO>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetOutputIO)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<SetOutputIO> is deprecated: use probot_msgs-msg:SetOutputIO instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SetOutputIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:type-val is deprecated.  Use probot_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'mask-val :lambda-list '(m))
(cl:defmethod mask-val ((m <SetOutputIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:mask-val is deprecated.  Use probot_msgs-msg:mask instead.")
  (mask m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetOutputIO>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:status-val is deprecated.  Use probot_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetOutputIO>)))
    "Constants for message type '<SetOutputIO>"
  '((:TYPE_DIGITAL . 0)
    (:TYPE_RELAY . 1)
    (:IO_OFF . 0)
    (:IO_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetOutputIO)))
    "Constants for message type 'SetOutputIO"
  '((:TYPE_DIGITAL . 0)
    (:TYPE_RELAY . 1)
    (:IO_OFF . 0)
    (:IO_ON . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetOutputIO>) ostream)
  "Serializes a message object of type '<SetOutputIO>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetOutputIO>) istream)
  "Deserializes a message object of type '<SetOutputIO>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mask)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetOutputIO>)))
  "Returns string type for a message object of type '<SetOutputIO>"
  "probot_msgs/SetOutputIO")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOutputIO)))
  "Returns string type for a message object of type 'SetOutputIO"
  "probot_msgs/SetOutputIO")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetOutputIO>)))
  "Returns md5sum for a message object of type '<SetOutputIO>"
  "6449e032301ef457b18691c68ae57e69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetOutputIO)))
  "Returns md5sum for a message object of type 'SetOutputIO"
  "6449e032301ef457b18691c68ae57e69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetOutputIO>)))
  "Returns full string definition for message of type '<SetOutputIO>"
  (cl:format cl:nil "int8 type~%uint32 mask~%uint32 status~%~%int8 TYPE_DIGITAL  = 0~%int8 TYPE_RELAY    = 1~%~%int8 IO_OFF  = 0~%int8 IO_ON = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetOutputIO)))
  "Returns full string definition for message of type 'SetOutputIO"
  (cl:format cl:nil "int8 type~%uint32 mask~%uint32 status~%~%int8 TYPE_DIGITAL  = 0~%int8 TYPE_RELAY    = 1~%~%int8 IO_OFF  = 0~%int8 IO_ON = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetOutputIO>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetOutputIO>))
  "Converts a ROS message object to a list"
  (cl:list 'SetOutputIO
    (cl:cons ':type (type msg))
    (cl:cons ':mask (mask msg))
    (cl:cons ':status (status msg))
))
