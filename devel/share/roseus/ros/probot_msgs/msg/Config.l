;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::Config)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'Config (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::CONFIG")
  (make-package "PROBOT_MSGS::CONFIG"))

(in-package "ROS")
;;//! \htmlinclude Config.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*MASK_LOGLEVEL*" (find-package "PROBOT_MSGS::CONFIG"))
(shadow '*MASK_LOGLEVEL* (find-package "PROBOT_MSGS::CONFIG"))
(defconstant probot_msgs::Config::*MASK_LOGLEVEL* 1)
(intern "*MASK_ZERO_CALIBRATION*" (find-package "PROBOT_MSGS::CONFIG"))
(shadow '*MASK_ZERO_CALIBRATION* (find-package "PROBOT_MSGS::CONFIG"))
(defconstant probot_msgs::Config::*MASK_ZERO_CALIBRATION* 2)
(intern "*MASK_TOOL_POSE*" (find-package "PROBOT_MSGS::CONFIG"))
(shadow '*MASK_TOOL_POSE* (find-package "PROBOT_MSGS::CONFIG"))
(defconstant probot_msgs::Config::*MASK_TOOL_POSE* 4)
(defclass probot_msgs::Config
  :super ros::object
  :slots (_controller_log_level _init_with_all_zero_pos _enable_joint_calibration _seneor_position _speed_to_sensor _speed_to_zero _pose_to_eef _mask ))

(defmethod probot_msgs::Config
  (:init
   (&key
    ((:controller_log_level __controller_log_level) 0)
    ((:init_with_all_zero_pos __init_with_all_zero_pos) nil)
    ((:enable_joint_calibration __enable_joint_calibration) nil)
    ((:seneor_position __seneor_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed_to_sensor __speed_to_sensor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed_to_zero __speed_to_zero) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_to_eef __pose_to_eef) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:mask __mask) 0)
    )
   (send-super :init)
   (setq _controller_log_level (round __controller_log_level))
   (setq _init_with_all_zero_pos __init_with_all_zero_pos)
   (setq _enable_joint_calibration __enable_joint_calibration)
   (setq _seneor_position __seneor_position)
   (setq _speed_to_sensor __speed_to_sensor)
   (setq _speed_to_zero __speed_to_zero)
   (setq _pose_to_eef __pose_to_eef)
   (setq _mask (round __mask))
   self)
  (:controller_log_level
   (&optional __controller_log_level)
   (if __controller_log_level (setq _controller_log_level __controller_log_level)) _controller_log_level)
  (:init_with_all_zero_pos
   (&optional __init_with_all_zero_pos)
   (if __init_with_all_zero_pos (setq _init_with_all_zero_pos __init_with_all_zero_pos)) _init_with_all_zero_pos)
  (:enable_joint_calibration
   (&optional __enable_joint_calibration)
   (if __enable_joint_calibration (setq _enable_joint_calibration __enable_joint_calibration)) _enable_joint_calibration)
  (:seneor_position
   (&optional __seneor_position)
   (if __seneor_position (setq _seneor_position __seneor_position)) _seneor_position)
  (:speed_to_sensor
   (&optional __speed_to_sensor)
   (if __speed_to_sensor (setq _speed_to_sensor __speed_to_sensor)) _speed_to_sensor)
  (:speed_to_zero
   (&optional __speed_to_zero)
   (if __speed_to_zero (setq _speed_to_zero __speed_to_zero)) _speed_to_zero)
  (:pose_to_eef
   (&rest __pose_to_eef)
   (if (keywordp (car __pose_to_eef))
       (send* _pose_to_eef __pose_to_eef)
     (progn
       (if __pose_to_eef (setq _pose_to_eef (car __pose_to_eef)))
       _pose_to_eef)))
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:serialization-length
   ()
   (+
    ;; int8 _controller_log_level
    1
    ;; bool _init_with_all_zero_pos
    1
    ;; bool _enable_joint_calibration
    1
    ;; float32[] _seneor_position
    (* 4    (length _seneor_position)) 4
    ;; float32[] _speed_to_sensor
    (* 4    (length _speed_to_sensor)) 4
    ;; float32[] _speed_to_zero
    (* 4    (length _speed_to_zero)) 4
    ;; geometry_msgs/Pose[] _pose_to_eef
    (apply #'+ (send-all _pose_to_eef :serialization-length)) 4
    ;; int32 _mask
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _controller_log_level
       (write-byte _controller_log_level s)
     ;; bool _init_with_all_zero_pos
       (if _init_with_all_zero_pos (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_joint_calibration
       (if _enable_joint_calibration (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _seneor_position
     (write-long (length _seneor_position) s)
     (dotimes (i (length _seneor_position))
       (sys::poke (elt _seneor_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _speed_to_sensor
     (write-long (length _speed_to_sensor) s)
     (dotimes (i (length _speed_to_sensor))
       (sys::poke (elt _speed_to_sensor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _speed_to_zero
     (write-long (length _speed_to_zero) s)
     (dotimes (i (length _speed_to_zero))
       (sys::poke (elt _speed_to_zero i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose[] _pose_to_eef
     (write-long (length _pose_to_eef) s)
     (dolist (elem _pose_to_eef)
       (send elem :serialize s)
       )
     ;; int32 _mask
       (write-long _mask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _controller_log_level
     (setq _controller_log_level (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controller_log_level 127) (setq _controller_log_level (- _controller_log_level 256)))
   ;; bool _init_with_all_zero_pos
     (setq _init_with_all_zero_pos (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_joint_calibration
     (setq _enable_joint_calibration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _seneor_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _seneor_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _seneor_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _speed_to_sensor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_to_sensor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed_to_sensor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _speed_to_zero
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_to_zero (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed_to_zero i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _pose_to_eef
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_to_eef (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _pose_to_eef)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _mask
     (setq _mask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get probot_msgs::Config :md5sum-) "cd76bb6e4c9a57426c629f8fe5205f36")
(setf (get probot_msgs::Config :datatype-) "probot_msgs/Config")
(setf (get probot_msgs::Config :definition-)
      "# The Config message contains system configuration data

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



(provide :probot_msgs/Config "cd76bb6e4c9a57426c629f8fe5205f36")


