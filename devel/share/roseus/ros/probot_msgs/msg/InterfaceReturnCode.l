;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::InterfaceReturnCode)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'InterfaceReturnCode (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::INTERFACERETURNCODE")
  (make-package "PROBOT_MSGS::INTERFACERETURNCODE"))

(in-package "ROS")
;;//! \htmlinclude InterfaceReturnCode.msg.html


(intern "*SUCCESS*" (find-package "PROBOT_MSGS::INTERFACERETURNCODE"))
(shadow '*SUCCESS* (find-package "PROBOT_MSGS::INTERFACERETURNCODE"))
(defconstant probot_msgs::InterfaceReturnCode::*SUCCESS* 1)
(intern "*FAILURE*" (find-package "PROBOT_MSGS::INTERFACERETURNCODE"))
(shadow '*FAILURE* (find-package "PROBOT_MSGS::INTERFACERETURNCODE"))
(defconstant probot_msgs::InterfaceReturnCode::*FAILURE* -1)
(defclass probot_msgs::InterfaceReturnCode
  :super ros::object
  :slots (_val ))

(defmethod probot_msgs::InterfaceReturnCode
  (:init
   (&key
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _val (round __val))
   self)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int8 _val
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _val
       (write-byte _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _val
     (setq _val (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _val 127) (setq _val (- _val 256)))
   ;;
   self)
  )

(setf (get probot_msgs::InterfaceReturnCode :md5sum-) "85a4e241266be66b1e1426b03083a412")
(setf (get probot_msgs::InterfaceReturnCode :datatype-) "probot_msgs/InterfaceReturnCode")
(setf (get probot_msgs::InterfaceReturnCode :definition-)
      "# App Interface return codes for requests.  All App Interface service
# replies are required to have a return code indicating success or failure
# Specific return codes for different failure should be negative.
int8 val

int8 SUCCESS = 1
int8 FAILURE = -1
")



(provide :probot_msgs/InterfaceReturnCode "85a4e241266be66b1e1426b03083a412")


