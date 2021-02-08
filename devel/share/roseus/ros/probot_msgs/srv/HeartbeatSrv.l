;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::HeartbeatSrv)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'HeartbeatSrv (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::HEARTBEATSRV")
  (make-package "PROBOT_MSGS::HEARTBEATSRV"))
(unless (find-package "PROBOT_MSGS::HEARTBEATSRVREQUEST")
  (make-package "PROBOT_MSGS::HEARTBEATSRVREQUEST"))
(unless (find-package "PROBOT_MSGS::HEARTBEATSRVRESPONSE")
  (make-package "PROBOT_MSGS::HEARTBEATSRVRESPONSE"))

(in-package "ROS")





(defclass probot_msgs::HeartbeatSrvRequest
  :super ros::object
  :slots (_countRequest ))

(defmethod probot_msgs::HeartbeatSrvRequest
  (:init
   (&key
    ((:countRequest __countRequest) 0)
    )
   (send-super :init)
   (setq _countRequest (round __countRequest))
   self)
  (:countRequest
   (&optional __countRequest)
   (if __countRequest (setq _countRequest __countRequest)) _countRequest)
  (:serialization-length
   ()
   (+
    ;; int32 _countRequest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _countRequest
       (write-long _countRequest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _countRequest
     (setq _countRequest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass probot_msgs::HeartbeatSrvResponse
  :super ros::object
  :slots (_countResponse ))

(defmethod probot_msgs::HeartbeatSrvResponse
  (:init
   (&key
    ((:countResponse __countResponse) 0)
    )
   (send-super :init)
   (setq _countResponse (round __countResponse))
   self)
  (:countResponse
   (&optional __countResponse)
   (if __countResponse (setq _countResponse __countResponse)) _countResponse)
  (:serialization-length
   ()
   (+
    ;; int32 _countResponse
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _countResponse
       (write-long _countResponse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _countResponse
     (setq _countResponse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass probot_msgs::HeartbeatSrv
  :super ros::object
  :slots ())

(setf (get probot_msgs::HeartbeatSrv :md5sum-) "98991985d4cdd4fbc58ba5a8e9c60574")
(setf (get probot_msgs::HeartbeatSrv :datatype-) "probot_msgs/HeartbeatSrv")
(setf (get probot_msgs::HeartbeatSrv :request) probot_msgs::HeartbeatSrvRequest)
(setf (get probot_msgs::HeartbeatSrv :response) probot_msgs::HeartbeatSrvResponse)

(defmethod probot_msgs::HeartbeatSrvRequest
  (:response () (instance probot_msgs::HeartbeatSrvResponse :init)))

(setf (get probot_msgs::HeartbeatSrvRequest :md5sum-) "98991985d4cdd4fbc58ba5a8e9c60574")
(setf (get probot_msgs::HeartbeatSrvRequest :datatype-) "probot_msgs/HeartbeatSrvRequest")
(setf (get probot_msgs::HeartbeatSrvRequest :definition-)
      "int32 countRequest
---
int32 countResponse
")

(setf (get probot_msgs::HeartbeatSrvResponse :md5sum-) "98991985d4cdd4fbc58ba5a8e9c60574")
(setf (get probot_msgs::HeartbeatSrvResponse :datatype-) "probot_msgs/HeartbeatSrvResponse")
(setf (get probot_msgs::HeartbeatSrvResponse :definition-)
      "int32 countRequest
---
int32 countResponse
")



(provide :probot_msgs/HeartbeatSrv "98991985d4cdd4fbc58ba5a8e9c60574")


