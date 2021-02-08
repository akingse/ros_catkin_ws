;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::PredefinedPointList)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'PredefinedPointList (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::PREDEFINEDPOINTLIST")
  (make-package "PROBOT_MSGS::PREDEFINEDPOINTLIST"))

(in-package "ROS")
;;//! \htmlinclude PredefinedPointList.msg.html


(defclass probot_msgs::PredefinedPointList
  :super ros::object
  :slots (_points ))

(defmethod probot_msgs::PredefinedPointList
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance probot_msgs::PredefinedPoint :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; probot_msgs/PredefinedPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; probot_msgs/PredefinedPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; probot_msgs/PredefinedPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance probot_msgs::PredefinedPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get probot_msgs::PredefinedPointList :md5sum-) "8339ed0e8007f7ed7eb571e91644c004")
(setf (get probot_msgs::PredefinedPointList :datatype-) "probot_msgs/PredefinedPointList")
(setf (get probot_msgs::PredefinedPointList :definition-)
      "# The predefined points list message contains all the pre-defined points

PredefinedPoint[] points

================================================================================
MSG: probot_msgs/PredefinedPoint
# The Predefined message contains the information of a pre-defined point on rviz

string name
geometry_msgs/Pose pose
float64[] joints
uint32 digitalOutput
uint32 relayOutput
float64 pointDelayBeforeExecute

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



(provide :probot_msgs/PredefinedPointList "8339ed0e8007f7ed7eb571e91644c004")


