;; Auto-generated. Do not edit!


(when (boundp 'probot_detect::detectobjectionSrv)
  (if (not (find-package "PROBOT_DETECT"))
    (make-package "PROBOT_DETECT"))
  (shadow 'detectobjectionSrv (find-package "PROBOT_DETECT")))
(unless (find-package "PROBOT_DETECT::DETECTOBJECTIONSRV")
  (make-package "PROBOT_DETECT::DETECTOBJECTIONSRV"))
(unless (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST")
  (make-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(unless (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE")
  (make-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ALL_OBJECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*ALL_OBJECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*ALL_OBJECT* 1)
(intern "*RED_OBJECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*RED_OBJECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*RED_OBJECT* 2)
(intern "*GREEN_OBJECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*GREEN_OBJECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*GREEN_OBJECT* 3)
(intern "*BLUE_OBJECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*BLUE_OBJECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*BLUE_OBJECT* 4)
(intern "*BLACK_OBJECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*BLACK_OBJECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*BLACK_OBJECT* 5)
(intern "*TO_DETECT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(shadow '*TO_DETECT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_detect::detectobjectionSrvRequest::*TO_DETECT* 6)
(defclass probot_detect::detectobjectionSrvRequest
  :super ros::object
  :slots (_objectType ))

(defmethod probot_detect::detectobjectionSrvRequest
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

(intern "*SUCCESS*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*SUCCESS* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_detect::detectobjectionSrvResponse::*SUCCESS* 0)
(intern "*ERROR*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*ERROR* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_detect::detectobjectionSrvResponse::*ERROR* 1)
(intern "*TIMEOUT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*TIMEOUT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_detect::detectobjectionSrvResponse::*TIMEOUT* 2)
(intern "*NOT_DETECTED*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*NOT_DETECTED* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_detect::detectobjectionSrvResponse::*NOT_DETECTED* 3)
(intern "*NOT_SUPPORT*" (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*NOT_SUPPORT* (find-package "PROBOT_DETECT::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_detect::detectobjectionSrvResponse::*NOT_SUPPORT* 4)
(defclass probot_detect::detectobjectionSrvResponse
  :super ros::object
  :slots (_result _redObjList _greenObjList _blueObjList _blackObjList _resultList ))

(defmethod probot_detect::detectobjectionSrvResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:redObjList __redObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:greenObjList __greenObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:blueObjList __blueObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:blackObjList __blackObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:resultList __resultList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _redObjList __redObjList)
   (setq _greenObjList __greenObjList)
   (setq _blueObjList __blueObjList)
   (setq _blackObjList __blackObjList)
   (setq _resultList __resultList)
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
  (:resultList
   (&rest __resultList)
   (if (keywordp (car __resultList))
       (send* _resultList __resultList)
     (progn
       (if __resultList (setq _resultList (car __resultList)))
       _resultList)))
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
    ;; geometry_msgs/Pose[] _resultList
    (apply #'+ (send-all _resultList :serialization-length)) 4
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
     ;; geometry_msgs/Pose[] _resultList
     (write-long (length _resultList) s)
     (dolist (elem _resultList)
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
   ;; geometry_msgs/Pose[] _resultList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resultList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _resultList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass probot_detect::detectobjectionSrv
  :super ros::object
  :slots ())

(setf (get probot_detect::detectobjectionSrv :md5sum-) "629f585055d916a25d4222c22c18c0b5")
(setf (get probot_detect::detectobjectionSrv :datatype-) "probot_detect/detectobjectionSrv")
(setf (get probot_detect::detectobjectionSrv :request) probot_detect::detectobjectionSrvRequest)
(setf (get probot_detect::detectobjectionSrv :response) probot_detect::detectobjectionSrvResponse)

(defmethod probot_detect::detectobjectionSrvRequest
  (:response () (instance probot_detect::detectobjectionSrvResponse :init)))

(setf (get probot_detect::detectobjectionSrvRequest :md5sum-) "629f585055d916a25d4222c22c18c0b5")
(setf (get probot_detect::detectobjectionSrvRequest :datatype-) "probot_detect/detectobjectionSrvRequest")
(setf (get probot_detect::detectobjectionSrvRequest :definition-)
      "


int32 ALL_OBJECT    = 1
int32 RED_OBJECT    = 2
int32 GREEN_OBJECT  = 3
int32 BLUE_OBJECT   = 4
int32 BLACK_OBJECT  = 5

int32 TO_DETECT     = 6


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

geometry_msgs/Pose[] resultList


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

(setf (get probot_detect::detectobjectionSrvResponse :md5sum-) "629f585055d916a25d4222c22c18c0b5")
(setf (get probot_detect::detectobjectionSrvResponse :datatype-) "probot_detect/detectobjectionSrvResponse")
(setf (get probot_detect::detectobjectionSrvResponse :definition-)
      "


int32 ALL_OBJECT    = 1
int32 RED_OBJECT    = 2
int32 GREEN_OBJECT  = 3
int32 BLUE_OBJECT   = 4
int32 BLACK_OBJECT  = 5

int32 TO_DETECT     = 6


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

geometry_msgs/Pose[] resultList


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



(provide :probot_detect/detectobjectionSrv "629f585055d916a25d4222c22c18c0b5")


