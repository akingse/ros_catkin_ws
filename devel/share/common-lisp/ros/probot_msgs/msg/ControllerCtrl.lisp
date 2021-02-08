; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude ControllerCtrl.msg.html

(cl:defclass <ControllerCtrl> (roslisp-msg-protocol:ros-message)
  ((ctrl
    :reader ctrl
    :initarg :ctrl
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControllerCtrl (<ControllerCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<ControllerCtrl> is deprecated: use probot_msgs-msg:ControllerCtrl instead.")))

(cl:ensure-generic-function 'ctrl-val :lambda-list '(m))
(cl:defmethod ctrl-val ((m <ControllerCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:ctrl-val is deprecated.  Use probot_msgs-msg:ctrl instead.")
  (ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerCtrl>) ostream)
  "Serializes a message object of type '<ControllerCtrl>"
  (cl:let* ((signed (cl:slot-value msg 'ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerCtrl>) istream)
  "Deserializes a message object of type '<ControllerCtrl>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrl) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerCtrl>)))
  "Returns string type for a message object of type '<ControllerCtrl>"
  "probot_msgs/ControllerCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerCtrl)))
  "Returns string type for a message object of type 'ControllerCtrl"
  "probot_msgs/ControllerCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerCtrl>)))
  "Returns md5sum for a message object of type '<ControllerCtrl>"
  "bc22a86a6761a3ebfb4241b3cec54085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerCtrl)))
  "Returns md5sum for a message object of type 'ControllerCtrl"
  "bc22a86a6761a3ebfb4241b3cec54085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerCtrl>)))
  "Returns full string definition for message of type '<ControllerCtrl>"
  (cl:format cl:nil "int8 ctrl~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerCtrl)))
  "Returns full string definition for message of type 'ControllerCtrl"
  (cl:format cl:nil "int8 ctrl~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerCtrl>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerCtrl
    (cl:cons ':ctrl (ctrl msg))
))
