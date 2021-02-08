; Auto-generated. Do not edit!


(cl:in-package probot_msgs-msg)


;//! \htmlinclude PredefinedPointList.msg.html

(cl:defclass <PredefinedPointList> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector probot_msgs-msg:PredefinedPoint)
   :initform (cl:make-array 0 :element-type 'probot_msgs-msg:PredefinedPoint :initial-element (cl:make-instance 'probot_msgs-msg:PredefinedPoint))))
)

(cl:defclass PredefinedPointList (<PredefinedPointList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredefinedPointList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredefinedPointList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name probot_msgs-msg:<PredefinedPointList> is deprecated: use probot_msgs-msg:PredefinedPointList instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <PredefinedPointList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader probot_msgs-msg:points-val is deprecated.  Use probot_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredefinedPointList>) ostream)
  "Serializes a message object of type '<PredefinedPointList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredefinedPointList>) istream)
  "Deserializes a message object of type '<PredefinedPointList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'probot_msgs-msg:PredefinedPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredefinedPointList>)))
  "Returns string type for a message object of type '<PredefinedPointList>"
  "probot_msgs/PredefinedPointList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredefinedPointList)))
  "Returns string type for a message object of type 'PredefinedPointList"
  "probot_msgs/PredefinedPointList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredefinedPointList>)))
  "Returns md5sum for a message object of type '<PredefinedPointList>"
  "8339ed0e8007f7ed7eb571e91644c004")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredefinedPointList)))
  "Returns md5sum for a message object of type 'PredefinedPointList"
  "8339ed0e8007f7ed7eb571e91644c004")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredefinedPointList>)))
  "Returns full string definition for message of type '<PredefinedPointList>"
  (cl:format cl:nil "# The predefined points list message contains all the pre-defined points~%~%PredefinedPoint[] points~%~%================================================================================~%MSG: probot_msgs/PredefinedPoint~%# The Predefined message contains the information of a pre-defined point on rviz~%~%string name~%geometry_msgs/Pose pose~%float64[] joints~%uint32 digitalOutput~%uint32 relayOutput~%float64 pointDelayBeforeExecute~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredefinedPointList)))
  "Returns full string definition for message of type 'PredefinedPointList"
  (cl:format cl:nil "# The predefined points list message contains all the pre-defined points~%~%PredefinedPoint[] points~%~%================================================================================~%MSG: probot_msgs/PredefinedPoint~%# The Predefined message contains the information of a pre-defined point on rviz~%~%string name~%geometry_msgs/Pose pose~%float64[] joints~%uint32 digitalOutput~%uint32 relayOutput~%float64 pointDelayBeforeExecute~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredefinedPointList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredefinedPointList>))
  "Converts a ROS message object to a list"
  (cl:list 'PredefinedPointList
    (cl:cons ':points (points msg))
))
