;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::JogPose)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'JogPose (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::JOGPOSE")
  (make-package "PROBOT_MSGS::JOGPOSE"))

(in-package "ROS")
;;//! \htmlinclude JogPose.msg.html


(intern "*DIR_PLUS*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*DIR_PLUS* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*DIR_PLUS* 0)
(intern "*DIR_MINUS*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*DIR_MINUS* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*DIR_MINUS* 1)
(intern "*JOGGING_STOP*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_STOP* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_STOP* 0)
(intern "*JOGGING_X*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_X* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_X* 1)
(intern "*JOGGING_Y*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_Y* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_Y* 2)
(intern "*JOGGING_Z*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_Z* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_Z* 4)
(intern "*JOGGING_ROLL*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_ROLL* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_ROLL* 8)
(intern "*JOGGING_PITCH*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_PITCH* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_PITCH* 16)
(intern "*JOGGING_YAW*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*JOGGING_YAW* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*JOGGING_YAW* 32)
(intern "*MOD_CONTINUOUS*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*MOD_CONTINUOUS* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*MOD_CONTINUOUS* 0)
(intern "*MOD_INCREMENT_10_MM*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*MOD_INCREMENT_10_MM* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*MOD_INCREMENT_10_MM* 1)
(intern "*MOD_INCREMENT_1_MM*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*MOD_INCREMENT_1_MM* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*MOD_INCREMENT_1_MM* 2)
(intern "*MOD_INCREMENT_01_MM*" (find-package "PROBOT_MSGS::JOGPOSE"))
(shadow '*MOD_INCREMENT_01_MM* (find-package "PROBOT_MSGS::JOGPOSE"))
(defconstant probot_msgs::JogPose::*MOD_INCREMENT_01_MM* 3)
(defclass probot_msgs::JogPose
  :super ros::object
  :slots (_mask _direction _mode _velocity_scale _frame_id ))

(defmethod probot_msgs::JogPose
  (:init
   (&key
    ((:mask __mask) 0)
    ((:direction __direction) 0)
    ((:mode __mode) 0)
    ((:velocity_scale __velocity_scale) 0.0)
    ((:frame_id __frame_id) 0)
    )
   (send-super :init)
   (setq _mask (round __mask))
   (setq _direction (round __direction))
   (setq _mode (round __mode))
   (setq _velocity_scale (float __velocity_scale))
   (setq _frame_id (round __frame_id))
   self)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:velocity_scale
   (&optional __velocity_scale)
   (if __velocity_scale (setq _velocity_scale __velocity_scale)) _velocity_scale)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; int8 _mask
    1
    ;; int8 _direction
    1
    ;; int8 _mode
    1
    ;; float32 _velocity_scale
    4
    ;; int8 _frame_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mask
       (write-byte _mask s)
     ;; int8 _direction
       (write-byte _direction s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; float32 _velocity_scale
       (sys::poke _velocity_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _frame_id
       (write-byte _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mask
     (setq _mask (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mask 127) (setq _mask (- _mask 256)))
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; float32 _velocity_scale
     (setq _velocity_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _frame_id
     (setq _frame_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _frame_id 127) (setq _frame_id (- _frame_id 256)))
   ;;
   self)
  )

(setf (get probot_msgs::JogPose :md5sum-) "d193764a9f7e2d9ca8e4aaaa3600bff9")
(setf (get probot_msgs::JogPose :datatype-) "probot_msgs/JogPose")
(setf (get probot_msgs::JogPose :definition-)
      "# The Jogging pose message contains control information for jogging
# end-effector to a target pose
# It means stopping jogging if mask is JOGGING_STOP

# The bit map mask to indicate which pose data is jogged
int8 mask

# The jogging direction
int8 direction

# The jogging mode
int8 mode

# The velocity scale for move_group interface
float32 velocity_scale

# The jogging frame id
int8 frame_id

int8 DIR_PLUS = 0
int8 DIR_MINUS = 1

# bit map of jogging
int8 JOGGING_STOP = 0
int8 JOGGING_X = 1
int8 JOGGING_Y = 2
int8 JOGGING_Z = 4
int8 JOGGING_ROLL = 8
int8 JOGGING_PITCH = 16
int8 JOGGING_YAW = 32

int8 MOD_CONTINUOUS            = 0
int8 MOD_INCREMENT_10_MM       = 1
int8 MOD_INCREMENT_1_MM        = 2
int8 MOD_INCREMENT_01_MM       = 3
")



(provide :probot_msgs/JogPose "d193764a9f7e2d9ca8e4aaaa3600bff9")


