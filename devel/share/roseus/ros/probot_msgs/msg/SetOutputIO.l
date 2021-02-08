;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::SetOutputIO)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'SetOutputIO (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::SETOUTPUTIO")
  (make-package "PROBOT_MSGS::SETOUTPUTIO"))

(in-package "ROS")
;;//! \htmlinclude SetOutputIO.msg.html


(intern "*TYPE_DIGITAL*" (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(shadow '*TYPE_DIGITAL* (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(defconstant probot_msgs::SetOutputIO::*TYPE_DIGITAL* 0)
(intern "*TYPE_RELAY*" (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(shadow '*TYPE_RELAY* (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(defconstant probot_msgs::SetOutputIO::*TYPE_RELAY* 1)
(intern "*IO_OFF*" (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(shadow '*IO_OFF* (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(defconstant probot_msgs::SetOutputIO::*IO_OFF* 0)
(intern "*IO_ON*" (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(shadow '*IO_ON* (find-package "PROBOT_MSGS::SETOUTPUTIO"))
(defconstant probot_msgs::SetOutputIO::*IO_ON* 1)
(defclass probot_msgs::SetOutputIO
  :super ros::object
  :slots (_type _mask _status ))

(defmethod probot_msgs::SetOutputIO
  (:init
   (&key
    ((:type __type) 0)
    ((:mask __mask) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _mask (round __mask))
   (setq _status (round __status))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:mask
   (&optional __mask)
   (if __mask (setq _mask __mask)) _mask)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int8 _type
    1
    ;; uint32 _mask
    4
    ;; uint32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _type
       (write-byte _type s)
     ;; uint32 _mask
       (write-long _mask s)
     ;; uint32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; uint32 _mask
     (setq _mask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get probot_msgs::SetOutputIO :md5sum-) "6449e032301ef457b18691c68ae57e69")
(setf (get probot_msgs::SetOutputIO :datatype-) "probot_msgs/SetOutputIO")
(setf (get probot_msgs::SetOutputIO :definition-)
      "int8 type
uint32 mask
uint32 status

int8 TYPE_DIGITAL  = 0
int8 TYPE_RELAY    = 1

int8 IO_OFF  = 0
int8 IO_ON = 1

")



(provide :probot_msgs/SetOutputIO "6449e032301ef457b18691c68ae57e69")


