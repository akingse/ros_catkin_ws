;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::RefreshPointsSrv)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'RefreshPointsSrv (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::REFRESHPOINTSSRV")
  (make-package "PROBOT_MSGS::REFRESHPOINTSSRV"))
(unless (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST")
  (make-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(unless (find-package "PROBOT_MSGS::REFRESHPOINTSSRVRESPONSE")
  (make-package "PROBOT_MSGS::REFRESHPOINTSSRVRESPONSE"))

(in-package "ROS")





(intern "*POINTS_GET*" (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(shadow '*POINTS_GET* (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(defconstant probot_msgs::RefreshPointsSrvRequest::*POINTS_GET* 0)
(intern "*POINTS_ADD*" (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(shadow '*POINTS_ADD* (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(defconstant probot_msgs::RefreshPointsSrvRequest::*POINTS_ADD* 1)
(intern "*POINTS_UPDATE*" (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(shadow '*POINTS_UPDATE* (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(defconstant probot_msgs::RefreshPointsSrvRequest::*POINTS_UPDATE* 2)
(intern "*POINTS_DELETE*" (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(shadow '*POINTS_DELETE* (find-package "PROBOT_MSGS::REFRESHPOINTSSRVREQUEST"))
(defconstant probot_msgs::RefreshPointsSrvRequest::*POINTS_DELETE* 3)
(defclass probot_msgs::RefreshPointsSrvRequest
  :super ros::object
  :slots (_ctrlCode _pointList ))

(defmethod probot_msgs::RefreshPointsSrvRequest
  (:init
   (&key
    ((:ctrlCode __ctrlCode) 0)
    ((:pointList __pointList) (instance probot_msgs::PredefinedPointList :init))
    )
   (send-super :init)
   (setq _ctrlCode (round __ctrlCode))
   (setq _pointList __pointList)
   self)
  (:ctrlCode
   (&optional __ctrlCode)
   (if __ctrlCode (setq _ctrlCode __ctrlCode)) _ctrlCode)
  (:pointList
   (&rest __pointList)
   (if (keywordp (car __pointList))
       (send* _pointList __pointList)
     (progn
       (if __pointList (setq _pointList (car __pointList)))
       _pointList)))
  (:serialization-length
   ()
   (+
    ;; int8 _ctrlCode
    1
    ;; probot_msgs/PredefinedPointList _pointList
    (send _pointList :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ctrlCode
       (write-byte _ctrlCode s)
     ;; probot_msgs/PredefinedPointList _pointList
       (send _pointList :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ctrlCode
     (setq _ctrlCode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ctrlCode 127) (setq _ctrlCode (- _ctrlCode 256)))
   ;; probot_msgs/PredefinedPointList _pointList
     (send _pointList :deserialize buf ptr-) (incf ptr- (send _pointList :serialization-length))
   ;;
   self)
  )

(defclass probot_msgs::RefreshPointsSrvResponse
  :super ros::object
  :slots (_code _pointListFeedback ))

(defmethod probot_msgs::RefreshPointsSrvResponse
  (:init
   (&key
    ((:code __code) (instance probot_msgs::InterfaceReturnCode :init))
    ((:pointListFeedback __pointListFeedback) (instance probot_msgs::PredefinedPointList :init))
    )
   (send-super :init)
   (setq _code __code)
   (setq _pointListFeedback __pointListFeedback)
   self)
  (:code
   (&rest __code)
   (if (keywordp (car __code))
       (send* _code __code)
     (progn
       (if __code (setq _code (car __code)))
       _code)))
  (:pointListFeedback
   (&rest __pointListFeedback)
   (if (keywordp (car __pointListFeedback))
       (send* _pointListFeedback __pointListFeedback)
     (progn
       (if __pointListFeedback (setq _pointListFeedback (car __pointListFeedback)))
       _pointListFeedback)))
  (:serialization-length
   ()
   (+
    ;; probot_msgs/InterfaceReturnCode _code
    (send _code :serialization-length)
    ;; probot_msgs/PredefinedPointList _pointListFeedback
    (send _pointListFeedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; probot_msgs/InterfaceReturnCode _code
       (send _code :serialize s)
     ;; probot_msgs/PredefinedPointList _pointListFeedback
       (send _pointListFeedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; probot_msgs/InterfaceReturnCode _code
     (send _code :deserialize buf ptr-) (incf ptr- (send _code :serialization-length))
   ;; probot_msgs/PredefinedPointList _pointListFeedback
     (send _pointListFeedback :deserialize buf ptr-) (incf ptr- (send _pointListFeedback :serialization-length))
   ;;
   self)
  )

(defclass probot_msgs::RefreshPointsSrv
  :super ros::object
  :slots ())

(setf (get probot_msgs::RefreshPointsSrv :md5sum-) "45f7b8282295bca51124b6665b808529")
(setf (get probot_msgs::RefreshPointsSrv :datatype-) "probot_msgs/RefreshPointsSrv")
(setf (get probot_msgs::RefreshPointsSrv :request) probot_msgs::RefreshPointsSrvRequest)
(setf (get probot_msgs::RefreshPointsSrv :response) probot_msgs::RefreshPointsSrvResponse)

(defmethod probot_msgs::RefreshPointsSrvRequest
  (:response () (instance probot_msgs::RefreshPointsSrvResponse :init)))

(setf (get probot_msgs::RefreshPointsSrvRequest :md5sum-) "45f7b8282295bca51124b6665b808529")
(setf (get probot_msgs::RefreshPointsSrvRequest :datatype-) "probot_msgs/RefreshPointsSrvRequest")
(setf (get probot_msgs::RefreshPointsSrvRequest :definition-)
      "

int8 ctrlCode

int8 POINTS_GET    = 0
int8 POINTS_ADD    = 1
int8 POINTS_UPDATE = 2
int8 POINTS_DELETE = 3

probot_msgs/PredefinedPointList pointList

================================================================================
MSG: probot_msgs/PredefinedPointList
# The predefined points list message contains all the pre-defined points

PredefinedPoint[] points

================================================================================
MSG: probot_msgs/PredefinedPoint
# The Predefined message contains the information of a pre-defined point on rviz

string name
geometry_msgs/Pose pose
float64[] joints
uint32 digitalOutput
uint32 relayOutput
float64 pointDelayBeforeExecute

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
probot_msgs/InterfaceReturnCode code
probot_msgs/PredefinedPointList pointListFeedback


================================================================================
MSG: probot_msgs/InterfaceReturnCode
# App Interface return codes for requests.  All App Interface service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1
================================================================================
MSG: probot_msgs/PredefinedPointList
# The predefined points list message contains all the pre-defined points

PredefinedPoint[] points

================================================================================
MSG: probot_msgs/PredefinedPoint
# The Predefined message contains the information of a pre-defined point on rviz

string name
geometry_msgs/Pose pose
float64[] joints
uint32 digitalOutput
uint32 relayOutput
float64 pointDelayBeforeExecute

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get probot_msgs::RefreshPointsSrvResponse :md5sum-) "45f7b8282295bca51124b6665b808529")
(setf (get probot_msgs::RefreshPointsSrvResponse :datatype-) "probot_msgs/RefreshPointsSrvResponse")
(setf (get probot_msgs::RefreshPointsSrvResponse :definition-)
      "

int8 ctrlCode

int8 POINTS_GET    = 0
int8 POINTS_ADD    = 1
int8 POINTS_UPDATE = 2
int8 POINTS_DELETE = 3

probot_msgs/PredefinedPointList pointList

================================================================================
MSG: probot_msgs/PredefinedPointList
# The predefined points list message contains all the pre-defined points

PredefinedPoint[] points

================================================================================
MSG: probot_msgs/PredefinedPoint
# The Predefined message contains the information of a pre-defined point on rviz

string name
geometry_msgs/Pose pose
float64[] joints
uint32 digitalOutput
uint32 relayOutput
float64 pointDelayBeforeExecute

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
probot_msgs/InterfaceReturnCode code
probot_msgs/PredefinedPointList pointListFeedback


================================================================================
MSG: probot_msgs/InterfaceReturnCode
# App Interface return codes for requests.  All App Interface service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1
================================================================================
MSG: probot_msgs/PredefinedPointList
# The predefined points list message contains all the pre-defined points

PredefinedPoint[] points

================================================================================
MSG: probot_msgs/PredefinedPoint
# The Predefined message contains the information of a pre-defined point on rviz

string name
geometry_msgs/Pose pose
float64[] joints
uint32 digitalOutput
uint32 relayOutput
float64 pointDelayBeforeExecute

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :probot_msgs/RefreshPointsSrv "45f7b8282295bca51124b6665b808529")


