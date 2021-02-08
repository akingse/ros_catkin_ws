;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::JogJoint)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'JogJoint (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::JOGJOINT")
  (make-package "PROBOT_MSGS::JOGJOINT"))

(in-package "ROS")
;;//! \htmlinclude JogJoint.msg.html


(intern "*DIR_PLUS*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*DIR_PLUS* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*DIR_PLUS* 0)
(intern "*DIR_MINUS*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*DIR_MINUS* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*DIR_MINUS* 1)
(intern "*MOD_CONTINUOUS*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*MOD_CONTINUOUS* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*MOD_CONTINUOUS* 0)
(intern "*MOD_INCREMENT_10_DEGREE*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*MOD_INCREMENT_10_DEGREE* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*MOD_INCREMENT_10_DEGREE* 1)
(intern "*MOD_INCREMENT_1_DEGREE*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*MOD_INCREMENT_1_DEGREE* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*MOD_INCREMENT_1_DEGREE* 2)
(intern "*MOD_INCREMENT_01_DEGREE*" (find-package "PROBOT_MSGS::JOGJOINT"))
(shadow '*MOD_INCREMENT_01_DEGREE* (find-package "PROBOT_MSGS::JOGJOINT"))
(defconstant probot_msgs::JogJoint::*MOD_INCREMENT_01_DEGREE* 3)
(defclass probot_msgs::JogJoint
  :super ros::object
  :slots (_joint_index _direction _mode _velocity_scale ))

(defmethod probot_msgs::JogJoint
  (:init
   (&key
    ((:joint_index __joint_index) 0)
    ((:direction __direction) 0)
    ((:mode __mode) 0)
    ((:velocity_scale __velocity_scale) 0.0)
    )
   (send-super :init)
   (setq _joint_index (round __joint_index))
   (setq _direction (round __direction))
   (setq _mode (round __mode))
   (setq _velocity_scale (float __velocity_scale))
   self)
  (:joint_index
   (&optional __joint_index)
   (if __joint_index (setq _joint_index __joint_index)) _joint_index)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:velocity_scale
   (&optional __velocity_scale)
   (if __velocity_scale (setq _velocity_scale __velocity_scale)) _velocity_scale)
  (:serialization-length
   ()
   (+
    ;; int8 _joint_index
    1
    ;; int8 _direction
    1
    ;; int8 _mode
    1
    ;; float32 _velocity_scale
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _joint_index
       (write-byte _joint_index s)
     ;; int8 _direction
       (write-byte _direction s)
     ;; int8 _mode
       (write-byte _mode s)
     ;; float32 _velocity_scale
       (sys::poke _velocity_scale (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _joint_index
     (setq _joint_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _joint_index 127) (setq _joint_index (- _joint_index 256)))
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; float32 _velocity_scale
     (setq _velocity_scale (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get probot_msgs::JogJoint :md5sum-) "02f6d1212f80ad72751bc065b3e3523c")
(setf (get probot_msgs::JogJoint :datatype-) "probot_msgs/JogJoint")
(setf (get probot_msgs::JogJoint :definition-)
      "# The Jogging joint message contains control information for jogging
# a specific joint
# Set velocity_scale to 0 to stop jogging

# The jogged joint index
# Negative joint index value means stop jogging
int8 joint_index

# The jogging direction
int8 direction

# The jogging mode
int8 mode

# The velocity scale for move_group interface
float32 velocity_scale

int8 DIR_PLUS = 0
int8 DIR_MINUS = 1

int8 MOD_CONTINUOUS            = 0
int8 MOD_INCREMENT_10_DEGREE   = 1
int8 MOD_INCREMENT_1_DEGREE    = 2
int8 MOD_INCREMENT_01_DEGREE   = 3
")



(provide :probot_msgs/JogJoint "02f6d1212f80ad72751bc065b3e3523c")


