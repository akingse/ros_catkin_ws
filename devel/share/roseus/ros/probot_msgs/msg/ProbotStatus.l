;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::ProbotStatus)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'ProbotStatus (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::PROBOTSTATUS")
  (make-package "PROBOT_MSGS::PROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ProbotStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*IO_OFF*" (find-package "PROBOT_MSGS::PROBOTSTATUS"))
(shadow '*IO_OFF* (find-package "PROBOT_MSGS::PROBOTSTATUS"))
(defconstant probot_msgs::ProbotStatus::*IO_OFF* 0)
(intern "*IO_ON*" (find-package "PROBOT_MSGS::PROBOTSTATUS"))
(shadow '*IO_ON* (find-package "PROBOT_MSGS::PROBOTSTATUS"))
(defconstant probot_msgs::ProbotStatus::*IO_ON* 1)
(defclass probot_msgs::ProbotStatus
  :super ros::object
  :slots (_jointsPosition _probotPose _inputIOs _outputIOs _outputRelay _inputButton _inputLimitSensors _inputHomeSensors ))

(defmethod probot_msgs::ProbotStatus
  (:init
   (&key
    ((:jointsPosition __jointsPosition) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:probotPose __probotPose) (instance geometry_msgs::Pose :init))
    ((:inputIOs __inputIOs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:outputIOs __outputIOs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:outputRelay __outputRelay) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:inputButton __inputButton) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:inputLimitSensors __inputLimitSensors) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:inputHomeSensors __inputHomeSensors) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _jointsPosition __jointsPosition)
   (setq _probotPose __probotPose)
   (setq _inputIOs __inputIOs)
   (setq _outputIOs __outputIOs)
   (setq _outputRelay __outputRelay)
   (setq _inputButton __inputButton)
   (setq _inputLimitSensors __inputLimitSensors)
   (setq _inputHomeSensors __inputHomeSensors)
   self)
  (:jointsPosition
   (&optional __jointsPosition)
   (if __jointsPosition (setq _jointsPosition __jointsPosition)) _jointsPosition)
  (:probotPose
   (&rest __probotPose)
   (if (keywordp (car __probotPose))
       (send* _probotPose __probotPose)
     (progn
       (if __probotPose (setq _probotPose (car __probotPose)))
       _probotPose)))
  (:inputIOs
   (&optional __inputIOs)
   (if __inputIOs (setq _inputIOs __inputIOs)) _inputIOs)
  (:outputIOs
   (&optional __outputIOs)
   (if __outputIOs (setq _outputIOs __outputIOs)) _outputIOs)
  (:outputRelay
   (&optional __outputRelay)
   (if __outputRelay (setq _outputRelay __outputRelay)) _outputRelay)
  (:inputButton
   (&optional __inputButton)
   (if __inputButton (setq _inputButton __inputButton)) _inputButton)
  (:inputLimitSensors
   (&optional __inputLimitSensors)
   (if __inputLimitSensors (setq _inputLimitSensors __inputLimitSensors)) _inputLimitSensors)
  (:inputHomeSensors
   (&optional __inputHomeSensors)
   (if __inputHomeSensors (setq _inputHomeSensors __inputHomeSensors)) _inputHomeSensors)
  (:serialization-length
   ()
   (+
    ;; float64[] _jointsPosition
    (* 8    (length _jointsPosition)) 4
    ;; geometry_msgs/Pose _probotPose
    (send _probotPose :serialization-length)
    ;; bool[] _inputIOs
    (* 1    (length _inputIOs)) 4
    ;; bool[] _outputIOs
    (* 1    (length _outputIOs)) 4
    ;; bool[] _outputRelay
    (* 1    (length _outputRelay)) 4
    ;; bool[] _inputButton
    (* 1    (length _inputButton)) 4
    ;; bool[] _inputLimitSensors
    (* 1    (length _inputLimitSensors)) 4
    ;; bool[] _inputHomeSensors
    (* 1    (length _inputHomeSensors)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _jointsPosition
     (write-long (length _jointsPosition) s)
     (dotimes (i (length _jointsPosition))
       (sys::poke (elt _jointsPosition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _probotPose
       (send _probotPose :serialize s)
     ;; bool[] _inputIOs
     (write-long (length _inputIOs) s)
     (dotimes (i (length _inputIOs))
       (if (elt _inputIOs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _outputIOs
     (write-long (length _outputIOs) s)
     (dotimes (i (length _outputIOs))
       (if (elt _outputIOs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _outputRelay
     (write-long (length _outputRelay) s)
     (dotimes (i (length _outputRelay))
       (if (elt _outputRelay i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _inputButton
     (write-long (length _inputButton) s)
     (dotimes (i (length _inputButton))
       (if (elt _inputButton i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _inputLimitSensors
     (write-long (length _inputLimitSensors) s)
     (dotimes (i (length _inputLimitSensors))
       (if (elt _inputLimitSensors i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _inputHomeSensors
     (write-long (length _inputHomeSensors) s)
     (dotimes (i (length _inputHomeSensors))
       (if (elt _inputHomeSensors i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _jointsPosition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointsPosition (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointsPosition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _probotPose
     (send _probotPose :deserialize buf ptr-) (incf ptr- (send _probotPose :serialization-length))
   ;; bool[] _inputIOs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputIOs (make-list n))
     (dotimes (i n)
     (setf (elt _inputIOs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _outputIOs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outputIOs (make-list n))
     (dotimes (i n)
     (setf (elt _outputIOs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _outputRelay
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outputRelay (make-list n))
     (dotimes (i n)
     (setf (elt _outputRelay i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _inputButton
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputButton (make-list n))
     (dotimes (i n)
     (setf (elt _inputButton i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _inputLimitSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputLimitSensors (make-list n))
     (dotimes (i n)
     (setf (elt _inputLimitSensors i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _inputHomeSensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _inputHomeSensors (make-list n))
     (dotimes (i n)
     (setf (elt _inputHomeSensors i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get probot_msgs::ProbotStatus :md5sum-) "8545ed5a2953e67b3a5193c804789850")
(setf (get probot_msgs::ProbotStatus :datatype-) "probot_msgs/ProbotStatus")
(setf (get probot_msgs::ProbotStatus :definition-)
      "float64[] jointsPosition
geometry_msgs/Pose probotPose

bool[] inputIOs
bool[] outputIOs
bool[] outputRelay
bool[] inputButton
bool[] inputLimitSensors
bool[] inputHomeSensors

int8 IO_OFF = 0
int8 IO_ON = 1
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



(provide :probot_msgs/ProbotStatus "8545ed5a2953e67b3a5193c804789850")


