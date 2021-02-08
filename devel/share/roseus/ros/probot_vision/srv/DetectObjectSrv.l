;; Auto-generated. Do not edit!


(when (boundp 'probot_vision::DetectObjectSrv)
  (if (not (find-package "PROBOT_VISION"))
    (make-package "PROBOT_VISION"))
  (shadow 'DetectObjectSrv (find-package "PROBOT_VISION")))
(unless (find-package "PROBOT_VISION::DETECTOBJECTSRV")
  (make-package "PROBOT_VISION::DETECTOBJECTSRV"))
(unless (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST")
  (make-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(unless (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE")
  (make-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ALL_OBJECT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(shadow '*ALL_OBJECT* (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(defconstant probot_vision::DetectObjectSrvRequest::*ALL_OBJECT* 1)
(intern "*RED_OBJECT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(shadow '*RED_OBJECT* (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(defconstant probot_vision::DetectObjectSrvRequest::*RED_OBJECT* 2)
(intern "*GREEN_OBJECT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(shadow '*GREEN_OBJECT* (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(defconstant probot_vision::DetectObjectSrvRequest::*GREEN_OBJECT* 3)
(intern "*BLUE_OBJECT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(shadow '*BLUE_OBJECT* (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(defconstant probot_vision::DetectObjectSrvRequest::*BLUE_OBJECT* 4)
(intern "*BLACK_OBJECT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(shadow '*BLACK_OBJECT* (find-package "PROBOT_VISION::DETECTOBJECTSRVREQUEST"))
(defconstant probot_vision::DetectObjectSrvRequest::*BLACK_OBJECT* 5)
(defclass probot_vision::DetectObjectSrvRequest
  :super ros::object
  :slots (_objectType ))

(defmethod probot_vision::DetectObjectSrvRequest
  (:init
   (&key
    ((:objectType __objectType) 0)
    )
   (send-super :init)
   (setq _objectType (round __objectType))
   self)
  (:objectType
   (&optional __objectType)
   (if __objectType (setq _objectType __objectType)) _objectType)
  (:serialization-length
   ()
   (+
    ;; int32 _objectType
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _objectType
       (write-long _objectType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _objectType
     (setq _objectType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(intern "*SUCCESS*" (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(shadow '*SUCCESS* (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(defconstant probot_vision::DetectObjectSrvResponse::*SUCCESS* 0)
(intern "*ERROR*" (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(shadow '*ERROR* (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(defconstant probot_vision::DetectObjectSrvResponse::*ERROR* 1)
(intern "*TIMEOUT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(shadow '*TIMEOUT* (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(defconstant probot_vision::DetectObjectSrvResponse::*TIMEOUT* 2)
(intern "*NOT_DETECTED*" (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(shadow '*NOT_DETECTED* (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(defconstant probot_vision::DetectObjectSrvResponse::*NOT_DETECTED* 3)
(intern "*NOT_SUPPORT*" (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(shadow '*NOT_SUPPORT* (find-package "PROBOT_VISION::DETECTOBJECTSRVRESPONSE"))
(defconstant probot_vision::DetectObjectSrvResponse::*NOT_SUPPORT* 4)
(defclass probot_vision::DetectObjectSrvResponse
  :super ros::object
  :slots (_result _redObjList _greenObjList _blueObjList _blackObjList ))

(defmethod probot_vision::DetectObjectSrvResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:redObjList __redObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:greenObjList __greenObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:blueObjList __blueObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:blackObjList __blackObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _redObjList __redObjList)
   (setq _greenObjList __greenObjList)
   (setq _blueObjList __blueObjList)
   (setq _blackObjList __blackObjList)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:redObjList
   (&rest __redObjList)
   (if (keywordp (car __redObjList))
       (send* _redObjList __redObjList)
     (progn
       (if __redObjList (setq _redObjList (car __redObjList)))
       _redObjList)))
  (:greenObjList
   (&rest __greenObjList)
   (if (keywordp (car __greenObjList))
       (send* _greenObjList __greenObjList)
     (progn
       (if __greenObjList (setq _greenObjList (car __greenObjList)))
       _greenObjList)))
  (:blueObjList
   (&rest __blueObjList)
   (if (keywordp (car __blueObjList))
       (send* _blueObjList __blueObjList)
     (progn
       (if __blueObjList (setq _blueObjList (car __blueObjList)))
       _blueObjList)))
  (:blackObjList
   (&rest __blackObjList)
   (if (keywordp (car __blackObjList))
       (send* _blackObjList __blackObjList)
     (progn
       (if __blackObjList (setq _blackObjList (car __blackObjList)))
       _blackObjList)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/Pose[] _redObjList
    (apply #'+ (send-all _redObjList :serialization-length)) 4
    ;; geometry_msgs/Pose[] _greenObjList
    (apply #'+ (send-all _greenObjList :serialization-length)) 4
    ;; geometry_msgs/Pose[] _blueObjList
    (apply #'+ (send-all _blueObjList :serialization-length)) 4
    ;; geometry_msgs/Pose[] _blackObjList
    (apply #'+ (send-all _blackObjList :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/Pose[] _redObjList
     (write-long (length _redObjList) s)
     (dolist (elem _redObjList)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _greenObjList
     (write-long (length _greenObjList) s)
     (dolist (elem _greenObjList)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _blueObjList
     (write-long (length _blueObjList) s)
     (dolist (elem _blueObjList)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose[] _blackObjList
     (write-long (length _blackObjList) s)
     (dolist (elem _blackObjList)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose[] _redObjList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _redObjList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _redObjList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _greenObjList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _greenObjList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _greenObjList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _blueObjList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blueObjList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _blueObjList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose[] _blackObjList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _blackObjList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _blackObjList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass probot_vision::DetectObjectSrv
  :super ros::object
  :slots ())

(setf (get probot_vision::DetectObjectSrv :md5sum-) "850802356f5638bc276421b4259ada17")
(setf (get probot_vision::DetectObjectSrv :datatype-) "probot_vision/DetectObjectSrv")
(setf (get probot_vision::DetectObjectSrv :request) probot_vision::DetectObjectSrvRequest)
(setf (get probot_vision::DetectObjectSrv :response) probot_vision::DetectObjectSrvResponse)

(defmethod probot_vision::DetectObjectSrvRequest
  (:response () (instance probot_vision::DetectObjectSrvResponse :init)))

(setf (get probot_vision::DetectObjectSrvRequest :md5sum-) "850802356f5638bc276421b4259ada17")
(setf (get probot_vision::DetectObjectSrvRequest :datatype-) "probot_vision/DetectObjectSrvRequest")
(setf (get probot_vision::DetectObjectSrvRequest :definition-)
      "


int32 ALL_OBJECT    = 1
int32 RED_OBJECT    = 2
int32 GREEN_OBJECT  = 3
int32 BLUE_OBJECT   = 4
int32 BLACK_OBJECT  = 5


int32 objectType

---


int32 SUCCESS        = 0
int32 ERROR          = 1
int32 TIMEOUT        = 2
int32 NOT_DETECTED   = 3
int32 NOT_SUPPORT    = 4


int32 result
geometry_msgs/Pose[] redObjList
geometry_msgs/Pose[] greenObjList
geometry_msgs/Pose[] blueObjList
geometry_msgs/Pose[] blackObjList


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

(setf (get probot_vision::DetectObjectSrvResponse :md5sum-) "850802356f5638bc276421b4259ada17")
(setf (get probot_vision::DetectObjectSrvResponse :datatype-) "probot_vision/DetectObjectSrvResponse")
(setf (get probot_vision::DetectObjectSrvResponse :definition-)
      "


int32 ALL_OBJECT    = 1
int32 RED_OBJECT    = 2
int32 GREEN_OBJECT  = 3
int32 BLUE_OBJECT   = 4
int32 BLACK_OBJECT  = 5


int32 objectType

---


int32 SUCCESS        = 0
int32 ERROR          = 1
int32 TIMEOUT        = 2
int32 NOT_DETECTED   = 3
int32 NOT_SUPPORT    = 4


int32 result
geometry_msgs/Pose[] redObjList
geometry_msgs/Pose[] greenObjList
geometry_msgs/Pose[] blueObjList
geometry_msgs/Pose[] blackObjList


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



(provide :probot_vision/DetectObjectSrv "850802356f5638bc276421b4259ada17")


