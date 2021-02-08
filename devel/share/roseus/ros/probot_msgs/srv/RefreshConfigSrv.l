;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::RefreshConfigSrv)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'RefreshConfigSrv (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::REFRESHCONFIGSRV")
  (make-package "PROBOT_MSGS::REFRESHCONFIGSRV"))
(unless (find-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST")
  (make-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST"))
(unless (find-package "PROBOT_MSGS::REFRESHCONFIGSRVRESPONSE")
  (make-package "PROBOT_MSGS::REFRESHCONFIGSRVRESPONSE"))

(in-package "ROS")





(intern "*CONFIG_GET*" (find-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST"))
(shadow '*CONFIG_GET* (find-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST"))
(defconstant probot_msgs::RefreshConfigSrvRequest::*CONFIG_GET* 0)
(intern "*CONFIG_SET*" (find-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST"))
(shadow '*CONFIG_SET* (find-package "PROBOT_MSGS::REFRESHCONFIGSRVREQUEST"))
(defconstant probot_msgs::RefreshConfigSrvRequest::*CONFIG_SET* 1)
(defclass probot_msgs::RefreshConfigSrvRequest
  :super ros::object
  :slots (_ctrlCode _config ))

(defmethod probot_msgs::RefreshConfigSrvRequest
  (:init
   (&key
    ((:ctrlCode __ctrlCode) 0)
    ((:config __config) (instance probot_msgs::Config :init))
    )
   (send-super :init)
   (setq _ctrlCode (round __ctrlCode))
   (setq _config __config)
   self)
  (:ctrlCode
   (&optional __ctrlCode)
   (if __ctrlCode (setq _ctrlCode __ctrlCode)) _ctrlCode)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:serialization-length
   ()
   (+
    ;; int8 _ctrlCode
    1
    ;; probot_msgs/Config _config
    (send _config :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ctrlCode
       (write-byte _ctrlCode s)
     ;; probot_msgs/Config _config
       (send _config :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ctrlCode
     (setq _ctrlCode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ctrlCode 127) (setq _ctrlCode (- _ctrlCode 256)))
   ;; probot_msgs/Config _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;;
   self)
  )

(defclass probot_msgs::RefreshConfigSrvResponse
  :super ros::object
  :slots (_code _config_feedback ))

(defmethod probot_msgs::RefreshConfigSrvResponse
  (:init
   (&key
    ((:code __code) (instance probot_msgs::InterfaceReturnCode :init))
    ((:config_feedback __config_feedback) (instance probot_msgs::Config :init))
    )
   (send-super :init)
   (setq _code __code)
   (setq _config_feedback __config_feedback)
   self)
  (:code
   (&rest __code)
   (if (keywordp (car __code))
       (send* _code __code)
     (progn
       (if __code (setq _code (car __code)))
       _code)))
  (:config_feedback
   (&rest __config_feedback)
   (if (keywordp (car __config_feedback))
       (send* _config_feedback __config_feedback)
     (progn
       (if __config_feedback (setq _config_feedback (car __config_feedback)))
       _config_feedback)))
  (:serialization-length
   ()
   (+
    ;; probot_msgs/InterfaceReturnCode _code
    (send _code :serialization-length)
    ;; probot_msgs/Config _config_feedback
    (send _config_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; probot_msgs/InterfaceReturnCode _code
       (send _code :serialize s)
     ;; probot_msgs/Config _config_feedback
       (send _config_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; probot_msgs/InterfaceReturnCode _code
     (send _code :deserialize buf ptr-) (incf ptr- (send _code :serialization-length))
   ;; probot_msgs/Config _config_feedback
     (send _config_feedback :deserialize buf ptr-) (incf ptr- (send _config_feedback :serialization-length))
   ;;
   self)
  )

(defclass probot_msgs::RefreshConfigSrv
  :super ros::object
  :slots ())

(setf (get probot_msgs::RefreshConfigSrv :md5sum-) "2cd6e800d4c302c3f9e5141f29a85fce")
(setf (get probot_msgs::RefreshConfigSrv :datatype-) "probot_msgs/RefreshConfigSrv")
(setf (get probot_msgs::RefreshConfigSrv :request) probot_msgs::RefreshConfigSrvRequest)
(setf (get probot_msgs::RefreshConfigSrv :response) probot_msgs::RefreshConfigSrvResponse)

(defmethod probot_msgs::RefreshConfigSrvRequest
  (:response () (instance probot_msgs::RefreshConfigSrvResponse :init)))

(setf (get probot_msgs::RefreshConfigSrvRequest :md5sum-) "2cd6e800d4c302c3f9e5141f29a85fce")
(setf (get probot_msgs::RefreshConfigSrvRequest :datatype-) "probot_msgs/RefreshConfigSrvRequest")
(setf (get probot_msgs::RefreshConfigSrvRequest :definition-)
      "

int8 ctrlCode

int8 CONFIG_GET    = 0
int8 CONFIG_SET    = 1

probot_msgs/Config config

================================================================================
MSG: probot_msgs/Config
# The Config message contains system configuration data

# The output log level for controller
int8 controller_log_level
bool init_with_all_zero_pos

# The zero calibration parameters
bool        enable_joint_calibration
float32[]   seneor_position
float32[]   speed_to_sensor
float32[]   speed_to_zero

# The tool's relative pose to end-effector(tool0)
# This is used to jog tool instead of end-effector
# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
geometry_msgs/Pose[] pose_to_eef

# The bit-map mask of valid fields which this message contains
int32 mask

int32 MASK_LOGLEVEL          = 1
int32 MASK_ZERO_CALIBRATION  = 2
int32 MASK_TOOL_POSE         = 4

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
probot_msgs/Config config_feedback


================================================================================
MSG: probot_msgs/InterfaceReturnCode
# App Interface return codes for requests.  All App Interface service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1
================================================================================
MSG: probot_msgs/Config
# The Config message contains system configuration data

# The output log level for controller
int8 controller_log_level
bool init_with_all_zero_pos

# The zero calibration parameters
bool        enable_joint_calibration
float32[]   seneor_position
float32[]   speed_to_sensor
float32[]   speed_to_zero

# The tool's relative pose to end-effector(tool0)
# This is used to jog tool instead of end-effector
# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
geometry_msgs/Pose[] pose_to_eef

# The bit-map mask of valid fields which this message contains
int32 mask

int32 MASK_LOGLEVEL          = 1
int32 MASK_ZERO_CALIBRATION  = 2
int32 MASK_TOOL_POSE         = 4

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

(setf (get probot_msgs::RefreshConfigSrvResponse :md5sum-) "2cd6e800d4c302c3f9e5141f29a85fce")
(setf (get probot_msgs::RefreshConfigSrvResponse :datatype-) "probot_msgs/RefreshConfigSrvResponse")
(setf (get probot_msgs::RefreshConfigSrvResponse :definition-)
      "

int8 ctrlCode

int8 CONFIG_GET    = 0
int8 CONFIG_SET    = 1

probot_msgs/Config config

================================================================================
MSG: probot_msgs/Config
# The Config message contains system configuration data

# The output log level for controller
int8 controller_log_level
bool init_with_all_zero_pos

# The zero calibration parameters
bool        enable_joint_calibration
float32[]   seneor_position
float32[]   speed_to_sensor
float32[]   speed_to_zero

# The tool's relative pose to end-effector(tool0)
# This is used to jog tool instead of end-effector
# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
geometry_msgs/Pose[] pose_to_eef

# The bit-map mask of valid fields which this message contains
int32 mask

int32 MASK_LOGLEVEL          = 1
int32 MASK_ZERO_CALIBRATION  = 2
int32 MASK_TOOL_POSE         = 4

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
probot_msgs/Config config_feedback


================================================================================
MSG: probot_msgs/InterfaceReturnCode
# App Interface return codes for requests.  All App Interface service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1
================================================================================
MSG: probot_msgs/Config
# The Config message contains system configuration data

# The output log level for controller
int8 controller_log_level
bool init_with_all_zero_pos

# The zero calibration parameters
bool        enable_joint_calibration
float32[]   seneor_position
float32[]   speed_to_sensor
float32[]   speed_to_zero

# The tool's relative pose to end-effector(tool0)
# This is used to jog tool instead of end-effector
# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)
geometry_msgs/Pose[] pose_to_eef

# The bit-map mask of valid fields which this message contains
int32 mask

int32 MASK_LOGLEVEL          = 1
int32 MASK_ZERO_CALIBRATION  = 2
int32 MASK_TOOL_POSE         = 4

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



(provide :probot_msgs/RefreshConfigSrv "2cd6e800d4c302c3f9e5141f29a85fce")


