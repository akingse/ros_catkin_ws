;; Auto-generated. Do not edit!


(when (boundp 'probot_ocr::detectobjectionSrv)
  (if (not (find-package "PROBOT_OCR"))
    (make-package "PROBOT_OCR"))
  (shadow 'detectobjectionSrv (find-package "PROBOT_OCR")))
(unless (find-package "PROBOT_OCR::DETECTOBJECTIONSRV")
  (make-package "PROBOT_OCR::DETECTOBJECTIONSRV"))
(unless (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST")
  (make-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(unless (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE")
  (make-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*ALL_OBJECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*ALL_OBJECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*ALL_OBJECT* 1)
(intern "*RED_OBJECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*RED_OBJECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*RED_OBJECT* 2)
(intern "*GREEN_OBJECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*GREEN_OBJECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*GREEN_OBJECT* 3)
(intern "*BLUE_OBJECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*BLUE_OBJECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*BLUE_OBJECT* 4)
(intern "*BLACK_OBJECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*BLACK_OBJECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*BLACK_OBJECT* 5)
(intern "*TO_DETECT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(shadow '*TO_DETECT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVREQUEST"))
(defconstant probot_ocr::detectobjectionSrvRequest::*TO_DETECT* 6)
(defclass probot_ocr::detectobjectionSrvRequest
  :super ros::object
  :slots (_objectType ))

(defmethod probot_ocr::detectobjectionSrvRequest
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

(intern "*SUCCESS*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*SUCCESS* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_ocr::detectobjectionSrvResponse::*SUCCESS* 0)
(intern "*ERROR*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*ERROR* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_ocr::detectobjectionSrvResponse::*ERROR* 1)
(intern "*TIMEOUT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*TIMEOUT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_ocr::detectobjectionSrvResponse::*TIMEOUT* 2)
(intern "*NOT_DETECTED*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*NOT_DETECTED* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_ocr::detectobjectionSrvResponse::*NOT_DETECTED* 3)
(intern "*NOT_SUPPORT*" (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(shadow '*NOT_SUPPORT* (find-package "PROBOT_OCR::DETECTOBJECTIONSRVRESPONSE"))
(defconstant probot_ocr::detectobjectionSrvResponse::*NOT_SUPPORT* 4)
(defclass probot_ocr::detectobjectionSrvResponse
  :super ros::object
  :slots (_result _charObjList _charName _charNum _angle ))

(defmethod probot_ocr::detectobjectionSrvResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:charObjList __charObjList) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:charName __charName) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:charNum __charNum) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:angle __angle) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _charObjList __charObjList)
   (setq _charName __charName)
   (setq _charNum __charNum)
   (setq _angle __angle)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:charObjList
   (&rest __charObjList)
   (if (keywordp (car __charObjList))
       (send* _charObjList __charObjList)
     (progn
       (if __charObjList (setq _charObjList (car __charObjList)))
       _charObjList)))
  (:charName
   (&optional __charName)
   (if __charName (setq _charName __charName)) _charName)
  (:charNum
   (&optional __charNum)
   (if __charNum (setq _charNum __charNum)) _charNum)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; geometry_msgs/Pose[] _charObjList
    (apply #'+ (send-all _charObjList :serialization-length)) 4
    ;; string[] _charName
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _charName)) 4
    ;; string[] _charNum
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _charNum)) 4
    ;; float64[] _angle
    (* 8    (length _angle)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; geometry_msgs/Pose[] _charObjList
     (write-long (length _charObjList) s)
     (dolist (elem _charObjList)
       (send elem :serialize s)
       )
     ;; string[] _charName
     (write-long (length _charName) s)
     (dolist (elem _charName)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _charNum
     (write-long (length _charNum) s)
     (dolist (elem _charNum)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _angle
     (write-long (length _angle) s)
     (dotimes (i (length _angle))
       (sys::poke (elt _angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose[] _charObjList
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _charObjList (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _charObjList)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _charName
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _charName (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _charName i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _charNum
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _charNum (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _charNum i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _angle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angle (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass probot_ocr::detectobjectionSrv
  :super ros::object
  :slots ())

(setf (get probot_ocr::detectobjectionSrv :md5sum-) "a2a0fbc7168d9342cca042cb3bffafc3")
(setf (get probot_ocr::detectobjectionSrv :datatype-) "probot_ocr/detectobjectionSrv")
(setf (get probot_ocr::detectobjectionSrv :request) probot_ocr::detectobjectionSrvRequest)
(setf (get probot_ocr::detectobjectionSrv :response) probot_ocr::detectobjectionSrvResponse)

(defmethod probot_ocr::detectobjectionSrvRequest
  (:response () (instance probot_ocr::detectobjectionSrvResponse :init)))

(setf (get probot_ocr::detectobjectionSrvRequest :md5sum-) "a2a0fbc7168d9342cca042cb3bffafc3")
(setf (get probot_ocr::detectobjectionSrvRequest :datatype-) "probot_ocr/detectobjectionSrvRequest")
(setf (get probot_ocr::detectobjectionSrvRequest :definition-)
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

geometry_msgs/Pose[] charObjList
string[] charName
string[] charNum
float64[] angle



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

(setf (get probot_ocr::detectobjectionSrvResponse :md5sum-) "a2a0fbc7168d9342cca042cb3bffafc3")
(setf (get probot_ocr::detectobjectionSrvResponse :datatype-) "probot_ocr/detectobjectionSrvResponse")
(setf (get probot_ocr::detectobjectionSrvResponse :definition-)
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

geometry_msgs/Pose[] charObjList
string[] charName
string[] charNum
float64[] angle



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



(provide :probot_ocr/detectobjectionSrv "a2a0fbc7168d9342cca042cb3bffafc3")


