; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude InterfaceReturnCode.msg.html

(cl:defclass <InterfaceReturnCode> (roslisp-msg-protocol:ros-message)
  ((val
    :reader val
    :initarg :val
    :type cl:fixnum
    :initform 0))
)

(cl:defclass InterfaceReturnCode (<InterfaceReturnCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterfaceReturnCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterfaceReturnCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<InterfaceReturnCode> is deprecated: use probot_msgs-msg:InterfaceReturnCode instead.")))

(cl:ensure-generic-function 'val-val :lambda-list '(m))
(cl:defmethod val-val ((m <InterfaceReturnCode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:val-val is deprecated.  Use probot_msgs-msg:val instead.")
  (val m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InterfaceReturnCode>)))
    "Constants for message type '<InterfaceReturnCode>"
  '((:SUCCESS . 1)
    (:FAILURE . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InterfaceReturnCode)))
    "Constants for message type 'InterfaceReturnCode"
  '((:SUCCESS . 1)
    (:FAILURE . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterfaceReturnCode>) ostream)
  "Serializes a message object of type '<InterfaceReturnCode>"
  (cl:let* ((signed (cl:slot-value msg 'val)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterfaceReturnCode>) istream)
  "Deserializes a message object of type '<InterfaceReturnCode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'val) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterfaceReturnCode>)))
  "Returns string type for a message object of type '<InterfaceReturnCode>"
  "probot_msgs/InterfaceReturnCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterfaceReturnCode)))
  "Returns string type for a message object of type 'InterfaceReturnCode"
  "probot_msgs/InterfaceReturnCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterfaceReturnCode>)))
  "Returns md5sum for a message object of type '<InterfaceReturnCode>"
  "85a4e241266be66b1e1426b03083a412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterfaceReturnCode)))
  "Returns md5sum for a message object of type 'InterfaceReturnCode"
  "85a4e241266be66b1e1426b03083a412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterfaceReturnCode>)))
  "Returns full string definition for message of type '<InterfaceReturnCode>"
  (cl:format cl:nil "# App Interface return codes for requests.  All App Interface service~%# replies are required to have a return code indicating success or failure~%# Specific return codes for different failure should be negative.~%int8 val~%~%int8 SUCCESS = 1~%int8 FAILURE = -1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterfaceReturnCode)))
  "Returns full string definition for message of type 'InterfaceReturnCode"
  (cl:format cl:nil "# App Interface return codes for requests.  All App Interface service~%# replies are required to have a return code indicating success or failure~%# Specific return codes for different failure should be negative.~%int8 val~%~%int8 SUCCESS = 1~%int8 FAILURE = -1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterfaceReturnCode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterfaceReturnCode>))
  "Converts a ROS message object to a list"
  (cl:list 'InterfaceReturnCode
    (cl:cons ':val (val msg))
))
