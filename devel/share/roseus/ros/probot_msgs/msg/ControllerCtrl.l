;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::ControllerCtrl)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'ControllerCtrl (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::CONTROLLERCTRL")
  (make-package "PROBOT_MSGS::CONTROLLERCTRL"))

(in-package "ROS")
;;//! \htmlinclude ControllerCtrl.msg.html


(defclass probot_msgs::ControllerCtrl
  :super ros::object
  :slots (_ctrl ))

(defmethod probot_msgs::ControllerCtrl
  (:init
   (&key
    ((:ctrl __ctrl) 0)
    )
   (send-super :init)
   (setq _ctrl (round __ctrl))
   self)
  (:ctrl
   (&optional __ctrl)
   (if __ctrl (setq _ctrl __ctrl)) _ctrl)
  (:serialization-length
   ()
   (+
    ;; int8 _ctrl
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ctrl
       (write-byte _ctrl s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ctrl
     (setq _ctrl (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ctrl 127) (setq _ctrl (- _ctrl 256)))
   ;;
   self)
  )

(setf (get probot_msgs::ControllerCtrl :md5sum-) "bc22a86a6761a3ebfb4241b3cec54085")
(setf (get probot_msgs::ControllerCtrl :datatype-) "probot_msgs/ControllerCtrl")
(setf (get probot_msgs::ControllerCtrl :definition-)
      "int8 ctrl
")



(provide :probot_msgs/ControllerCtrl "bc22a86a6761a3ebfb4241b3cec54085")


