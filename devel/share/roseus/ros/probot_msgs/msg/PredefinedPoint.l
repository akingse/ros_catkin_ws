;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::PredefinedPoint)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'PredefinedPoint (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::PREDEFINEDPOINT")
  (make-package "PROBOT_MSGS::PREDEFINEDPOINT"))

(in-package "ROS")
;;//! \htmlinclude PredefinedPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass probot_msgs::PredefinedPoint
  :super ros::object
  :slots (_name _pose _joints _digitalOutput _relayOutput _pointDelayBeforeExecute ))

(defmethod probot_msgs::PredefinedPoint
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:joints __joints) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:digitalOutput __digitalOutput) 0)
    ((:relayOutput __relayOutput) 0)
    ((:pointDelayBeforeExecute __pointDelayBeforeExecute) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   (setq _joints __joints)
   (setq _digitalOutput (round __digitalOutput))
   (setq _relayOutput (round __relayOutput))
   (setq _pointDelayBeforeExecute (float __pointDelayBeforeExecute))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:joints
   (&optional __joints)
   (if __joints (setq _joints __joints)) _joints)
  (:digitalOutput
   (&optional __digitalOutput)
   (if __digitalOutput (setq _digitalOutput __digitalOutput)) _digitalOutput)
  (:relayOutput
   (&optional __relayOutput)
   (if __relayOutput (setq _relayOutput __relayOutput)) _relayOutput)
  (:pointDelayBeforeExecute
   (&optional __pointDelayBeforeExecute)
   (if __pointDelayBeforeExecute (setq _pointDelayBeforeExecute __pointDelayBeforeExecute)) _pointDelayBeforeExecute)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[] _joints
    (* 8    (length _joints)) 4
    ;; uint32 _digitalOutput
    4
    ;; uint32 _relayOutput
    4
    ;; float64 _pointDelayBeforeExecute
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[] _joints
     (write-long (length _joints) s)
     (dotimes (i (length _joints))
       (sys::poke (elt _joints i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint32 _digitalOutput
       (write-long _digitalOutput s)
     ;; uint32 _relayOutput
       (write-long _relayOutput s)
     ;; float64 _pointDelayBeforeExecute
       (sys::poke _pointDelayBeforeExecute (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint32 _digitalOutput
     (setq _digitalOutput (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _relayOutput
     (setq _relayOutput (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _pointDelayBeforeExecute
     (setq _pointDelayBeforeExecute (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get probot_msgs::PredefinedPoint :md5sum-) "f308b55170bd625509ff7caf9b3e7ca9")
(setf (get probot_msgs::PredefinedPoint :datatype-) "probot_msgs/PredefinedPoint")
(setf (get probot_msgs::PredefinedPoint :definition-)
      "# The Predefined message contains the information of a pre-defined point on rviz

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



(provide :probot_msgs/PredefinedPoint "f308b55170bd625509ff7caf9b3e7ca9")


