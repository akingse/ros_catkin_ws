; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude SFUVersionNum.msg.html

(cl:defclass <SFUVersionNum> (roslisp-msg-protocol:ros-message)
  ((version
    :reader version
    :initarg :version
    :type cl:string
    :initform ""))
)

(cl:defclass SFUVersionNum (<SFUVersionNum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SFUVersionNum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SFUVersionNum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<SFUVersionNum> is deprecated: use probot_msgs-msg:SFUVersionNum instead.")))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <SFUVersionNum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:version-val is deprecated.  Use probot_msgs-msg:version instead.")
  (version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SFUVersionNum>) ostream)
  "Serializes a message object of type '<SFUVersionNum>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SFUVersionNum>) istream)
  "Deserializes a message object of type '<SFUVersionNum>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SFUVersionNum>)))
  "Returns string type for a message object of type '<SFUVersionNum>"
  "probot_msgs/SFUVersionNum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SFUVersionNum)))
  "Returns string type for a message object of type 'SFUVersionNum"
  "probot_msgs/SFUVersionNum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SFUVersionNum>)))
  "Returns md5sum for a message object of type '<SFUVersionNum>"
  "1a6f3c569a7ebe01c997148cb8f0f453")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SFUVersionNum)))
  "Returns md5sum for a message object of type 'SFUVersionNum"
  "1a6f3c569a7ebe01c997148cb8f0f453")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SFUVersionNum>)))
  "Returns full string definition for message of type '<SFUVersionNum>"
  (cl:format cl:nil "string version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SFUVersionNum)))
  "Returns full string definition for message of type 'SFUVersionNum"
  (cl:format cl:nil "string version~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SFUVersionNum>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SFUVersionNum>))
  "Converts a ROS message object to a list"
  (cl:list 'SFUVersionNum
    (cl:cons ':version (version msg))
))
