; Auto-generated. Do not edit!


(cl:in-package probot_msgs-srv)


;//! \htmlinclude SFUCommandCtrl-request.msg.html

(cl:defclass <SFUCommandCtrl-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:string
    :initform ""))
)

(cl:defclass SFUCommandCtrl-request (<SFUCommandCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SFUCommandCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SFUCommandCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<SFUCommandCtrl-request> is deprecated: use probot_msgs-srv:SFUCommandCtrl-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <SFUCommandCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:cmd-val is deprecated.  Use probot_msgs-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SFUCommandCtrl-request>) ostream)
  "Serializes a message object of type '<SFUCommandCtrl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SFUCommandCtrl-request>) istream)
  "Deserializes a message object of type '<SFUCommandCtrl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cmd) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SFUCommandCtrl-request>)))
  "Returns string type for a service object of type '<SFUCommandCtrl-request>"
  "probot_msgs/SFUCommandCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SFUCommandCtrl-request)))
  "Returns string type for a service object of type 'SFUCommandCtrl-request"
  "probot_msgs/SFUCommandCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SFUCommandCtrl-request>)))
  "Returns md5sum for a message object of type '<SFUCommandCtrl-request>"
  "e479b58adc2a7d2843c02e703b0e9f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SFUCommandCtrl-request)))
  "Returns md5sum for a message object of type 'SFUCommandCtrl-request"
  "e479b58adc2a7d2843c02e703b0e9f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SFUCommandCtrl-request>)))
  "Returns full string definition for message of type '<SFUCommandCtrl-request>"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SFUCommandCtrl-request)))
  "Returns full string definition for message of type 'SFUCommandCtrl-request"
  (cl:format cl:nil "string cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SFUCommandCtrl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SFUCommandCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SFUCommandCtrl-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude SFUCommandCtrl-response.msg.html

(cl:defclass <SFUCommandCtrl-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SFUCommandCtrl-response (<SFUCommandCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SFUCommandCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SFUCommandCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-srv:<SFUCommandCtrl-response> is deprecated: use probot_msgs-srv:SFUCommandCtrl-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SFUCommandCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-srv:ret-val is deprecated.  Use probot_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SFUCommandCtrl-response>) ostream)
  "Serializes a message object of type '<SFUCommandCtrl-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SFUCommandCtrl-response>) istream)
  "Deserializes a message object of type '<SFUCommandCtrl-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SFUCommandCtrl-response>)))
  "Returns string type for a service object of type '<SFUCommandCtrl-response>"
  "probot_msgs/SFUCommandCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SFUCommandCtrl-response)))
  "Returns string type for a service object of type 'SFUCommandCtrl-response"
  "probot_msgs/SFUCommandCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SFUCommandCtrl-response>)))
  "Returns md5sum for a message object of type '<SFUCommandCtrl-response>"
  "e479b58adc2a7d2843c02e703b0e9f7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SFUCommandCtrl-response)))
  "Returns md5sum for a message object of type 'SFUCommandCtrl-response"
  "e479b58adc2a7d2843c02e703b0e9f7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SFUCommandCtrl-response>)))
  "Returns full string definition for message of type '<SFUCommandCtrl-response>"
  (cl:format cl:nil "int8 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SFUCommandCtrl-response)))
  "Returns full string definition for message of type 'SFUCommandCtrl-response"
  (cl:format cl:nil "int8 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SFUCommandCtrl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SFUCommandCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SFUCommandCtrl-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SFUCommandCtrl)))
  'SFUCommandCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SFUCommandCtrl)))
  'SFUCommandCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SFUCommandCtrl)))
  "Returns string type for a service object of type '<SFUCommandCtrl>"
  "probot_msgs/SFUCommandCtrl")