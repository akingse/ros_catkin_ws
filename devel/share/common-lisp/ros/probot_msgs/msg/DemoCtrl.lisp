; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude DemoCtrl.msg.html

(cl:defclass <DemoCtrl> (roslisp-msg-protocol:ros-message)
  ((ctrl
    :reader ctrl
    :initarg :ctrl
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DemoCtrl (<DemoCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DemoCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DemoCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<DemoCtrl> is deprecated: use probot_msgs-msg:DemoCtrl instead.")))

(cl:ensure-generic-function 'ctrl-val :lambda-list '(m))
(cl:defmethod ctrl-val ((m <DemoCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:ctrl-val is deprecated.  Use probot_msgs-msg:ctrl instead.")
  (ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DemoCtrl>) ostream)
  "Serializes a message object of type '<DemoCtrl>"
  (cl:let* ((signed (cl:slot-value msg 'ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DemoCtrl>) istream)
  "Deserializes a message object of type '<DemoCtrl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrl) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DemoCtrl>)))
  "Returns string type for a message object of type '<DemoCtrl>"
  "probot_msgs/DemoCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DemoCtrl)))
  "Returns string type for a message object of type 'DemoCtrl"
  "probot_msgs/DemoCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DemoCtrl>)))
  "Returns md5sum for a message object of type '<DemoCtrl>"
  "bc22a86a6761a3ebfb4241b3cec54085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DemoCtrl)))
  "Returns md5sum for a message object of type 'DemoCtrl"
  "bc22a86a6761a3ebfb4241b3cec54085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DemoCtrl>)))
  "Returns full string definition for message of type '<DemoCtrl>"
  (cl:format cl:nil "int8 ctrl~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DemoCtrl)))
  "Returns full string definition for message of type 'DemoCtrl"
  (cl:format cl:nil "int8 ctrl~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DemoCtrl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DemoCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'DemoCtrl
    (cl:cons ':ctrl (ctrl msg))
))
