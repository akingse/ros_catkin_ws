;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::DemoCtrl)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'DemoCtrl (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::DEMOCTRL")
  (make-package "PROBOT_MSGS::DEMOCTRL"))

(in-package "ROS")
;;//! \htmlinclude DemoCtrl.msg.html


(defclass probot_msgs::DemoCtrl
  :super ros::object
  :slots (_ctrl ))

(defmethod probot_msgs::DemoCtrl
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

(setf (get probot_msgs::DemoCtrl :md5sum-) "bc22a86a6761a3ebfb4241b3cec54085")
(setf (get probot_msgs::DemoCtrl :datatype-) "probot_msgs/DemoCtrl")
(setf (get probot_msgs::DemoCtrl :definition-)
      "int8 ctrl
")



(provide :probot_msgs/DemoCtrl "bc22a86a6761a3ebfb4241b3cec54085")


