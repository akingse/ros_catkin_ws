; Auto-generated. Do not edit!


(cl:in-package probot_msgs-srv)


;//! \htmlinclude HeartbeatSrv-request.msg.html

(cl:defclass <HeartbeatSrv-request> (roslisp-msg-protocol:ros-message)
  ((countRequest
    :reader countRequest
    :initarg :countRequest
    :type cl:integer
    :initform 0))
)

(cl:defclass HeartbeatSrv-request (<HeartbeatSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeartbeatSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeartbeatSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<HeartbeatSrv-request> is deprecated: use probot_msgs-srv:HeartbeatSrv-request instead.")))

(cl:ensure-generic-function 'countRequest-val :lambda-list '(m))
(cl:defmethod countRequest-val ((m <HeartbeatSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:countRequest-val is deprecated.  Use probot_msgs-srv:countRequest instead.")
  (countRequest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeartbeatSrv-request>) ostream)
  "Serializes a message object of type '<HeartbeatSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'countRequest)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeartbeatSrv-request>) istream)
  "Deserializes a message object of type '<HeartbeatSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'countRequest) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeartbeatSrv-request>)))
  "Returns string type for a service object of type '<HeartbeatSrv-request>"
  "probot_msgs/HeartbeatSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartbeatSrv-request)))
  "Returns string type for a service object of type 'HeartbeatSrv-request"
  "probot_msgs/HeartbeatSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeartbeatSrv-request>)))
  "Returns md5sum for a message object of type '<HeartbeatSrv-request>"
  "98991985d4cdd4fbc58ba5a8e9c60574")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeartbeatSrv-request)))
  "Returns md5sum for a message object of type 'HeartbeatSrv-request"
  "98991985d4cdd4fbc58ba5a8e9c60574")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeartbeatSrv-request>)))
  "Returns full string definition for message of type '<HeartbeatSrv-request>"
  (cl:format cl:nil "int32 countRequest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeartbeatSrv-request)))
  "Returns full string definition for message of type 'HeartbeatSrv-request"
  (cl:format cl:nil "int32 countRequest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeartbeatSrv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeartbeatSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HeartbeatSrv-request
    (cl:cons ':countRequest (countRequest msg))
))
;//! \htmlinclude HeartbeatSrv-response.msg.html

(cl:defclass <HeartbeatSrv-response> (roslisp-msg-protocol:ros-message)
  ((countResponse
    :reader countResponse
    :initarg :countResponse
    :type cl:integer
    :initform 0))
)

(cl:defclass HeartbeatSrv-response (<HeartbeatSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeartbeatSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeartbeatSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<HeartbeatSrv-response> is deprecated: use probot_msgs-srv:HeartbeatSrv-response instead.")))

(cl:ensure-generic-function 'countResponse-val :lambda-list '(m))
(cl:defmethod countResponse-val ((m <HeartbeatSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:countResponse-val is deprecated.  Use probot_msgs-srv:countResponse instead.")
  (countResponse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeartbeatSrv-response>) ostream)
  "Serializes a message object of type '<HeartbeatSrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'countResponse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeartbeatSrv-response>) istream)
  "Deserializes a message object of type '<HeartbeatSrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'countResponse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeartbeatSrv-response>)))
  "Returns string type for a service object of type '<HeartbeatSrv-response>"
  "probot_msgs/HeartbeatSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartbeatSrv-response)))
  "Returns string type for a service object of type 'HeartbeatSrv-response"
  "probot_msgs/HeartbeatSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeartbeatSrv-response>)))
  "Returns md5sum for a message object of type '<HeartbeatSrv-response>"
  "98991985d4cdd4fbc58ba5a8e9c60574")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeartbeatSrv-response)))
  "Returns md5sum for a message object of type 'HeartbeatSrv-response"
  "98991985d4cdd4fbc58ba5a8e9c60574")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeartbeatSrv-response>)))
  "Returns full string definition for message of type '<HeartbeatSrv-response>"
  (cl:format cl:nil "int32 countResponse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeartbeatSrv-response)))
  "Returns full string definition for message of type 'HeartbeatSrv-response"
  (cl:format cl:nil "int32 countResponse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeartbeatSrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeartbeatSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HeartbeatSrv-response
    (cl:cons ':countResponse (countResponse msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HeartbeatSrv)))
  'HeartbeatSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HeartbeatSrv)))
  'HeartbeatSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartbeatSrv)))
  "Returns string type for a service object of type '<HeartbeatSrv>"
  "probot_msgs/HeartbeatSrv")