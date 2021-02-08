;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::SFUCommandCtrl)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'SFUCommandCtrl (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::SFUCOMMANDCTRL")
  (make-package "PROBOT_MSGS::SFUCOMMANDCTRL"))
(unless (find-package "PROBOT_MSGS::SFUCOMMANDCTRLREQUEST")
  (make-package "PROBOT_MSGS::SFUCOMMANDCTRLREQUEST"))
(unless (find-package "PROBOT_MSGS::SFUCOMMANDCTRLRESPONSE")
  (make-package "PROBOT_MSGS::SFUCOMMANDCTRLRESPONSE"))

(in-package "ROS")





(defclass probot_msgs::SFUCommandCtrlRequest
  :super ros::object
  :slots (_cmd ))

(defmethod probot_msgs::SFUCommandCtrlRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass probot_msgs::SFUCommandCtrlResponse
  :super ros::object
  :slots (_ret ))

(defmethod probot_msgs::SFUCommandCtrlResponse
  (:init
   (&key
    ((:ret __ret) 0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; int8 _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _ret
       (write-byte _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _ret
     (setq _ret (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ret 127) (setq _ret (- _ret 256)))
   ;;
   self)
  )

(defclass probot_msgs::SFUCommandCtrl
  :super ros::object
  :slots ())

(setf (get probot_msgs::SFUCommandCtrl :md5sum-) "e479b58adc2a7d2843c02e703b0e9f7f")
(setf (get probot_msgs::SFUCommandCtrl :datatype-) "probot_msgs/SFUCommandCtrl")
(setf (get probot_msgs::SFUCommandCtrl :request) probot_msgs::SFUCommandCtrlRequest)
(setf (get probot_msgs::SFUCommandCtrl :response) probot_msgs::SFUCommandCtrlResponse)

(defmethod probot_msgs::SFUCommandCtrlRequest
  (:response () (instance probot_msgs::SFUCommandCtrlResponse :init)))

(setf (get probot_msgs::SFUCommandCtrlRequest :md5sum-) "e479b58adc2a7d2843c02e703b0e9f7f")
(setf (get probot_msgs::SFUCommandCtrlRequest :datatype-) "probot_msgs/SFUCommandCtrlRequest")
(setf (get probot_msgs::SFUCommandCtrlRequest :definition-)
      "string cmd
---
int8 ret
")

(setf (get probot_msgs::SFUCommandCtrlResponse :md5sum-) "e479b58adc2a7d2843c02e703b0e9f7f")
(setf (get probot_msgs::SFUCommandCtrlResponse :datatype-) "probot_msgs/SFUCommandCtrlResponse")
(setf (get probot_msgs::SFUCommandCtrlResponse :definition-)
      "string cmd
---
int8 ret
")



(provide :probot_msgs/SFUCommandCtrl "e479b58adc2a7d2843c02e703b0e9f7f")


