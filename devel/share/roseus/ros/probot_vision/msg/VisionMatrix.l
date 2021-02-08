;; Auto-generated. Do not edit!


(when (boundp 'probot_vision::VisionMatrix)
  (if (not (find-package "PROBOT_VISION"))
    (make-package "PROBOT_VISION"))
  (shadow 'VisionMatrix (find-package "PROBOT_VISION")))
(unless (find-package "PROBOT_VISION::VISIONMATRIX")
  (make-package "PROBOT_VISION::VISIONMATRIX"))

(in-package "ROS")
;;//! \htmlinclude VisionMatrix.msg.html


(defclass probot_vision::VisionMatrix
  :super ros::object
  :slots (_cameraMatrix _distCoeffs _ExternalMatrix _hmatrix _xmatrix ))

(defmethod probot_vision::VisionMatrix
  (:init
   (&key
    ((:cameraMatrix __cameraMatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:distCoeffs __distCoeffs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ExternalMatrix __ExternalMatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:hmatrix __hmatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:xmatrix __xmatrix) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _cameraMatrix __cameraMatrix)
   (setq _distCoeffs __distCoeffs)
   (setq _ExternalMatrix __ExternalMatrix)
   (setq _hmatrix __hmatrix)
   (setq _xmatrix __xmatrix)
   self)
  (:cameraMatrix
   (&optional __cameraMatrix)
   (if __cameraMatrix (setq _cameraMatrix __cameraMatrix)) _cameraMatrix)
  (:distCoeffs
   (&optional __distCoeffs)
   (if __distCoeffs (setq _distCoeffs __distCoeffs)) _distCoeffs)
  (:ExternalMatrix
   (&optional __ExternalMatrix)
   (if __ExternalMatrix (setq _ExternalMatrix __ExternalMatrix)) _ExternalMatrix)
  (:hmatrix
   (&optional __hmatrix)
   (if __hmatrix (setq _hmatrix __hmatrix)) _hmatrix)
  (:xmatrix
   (&optional __xmatrix)
   (if __xmatrix (setq _xmatrix __xmatrix)) _xmatrix)
  (:serialization-length
   ()
   (+
    ;; float64[] _cameraMatrix
    (* 8    (length _cameraMatrix)) 4
    ;; float64[] _distCoeffs
    (* 8    (length _distCoeffs)) 4
    ;; float64[] _ExternalMatrix
    (* 8    (length _ExternalMatrix)) 4
    ;; float64[] _hmatrix
    (* 8    (length _hmatrix)) 4
    ;; float64[] _xmatrix
    (* 8    (length _xmatrix)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _cameraMatrix
     (write-long (length _cameraMatrix) s)
     (dotimes (i (length _cameraMatrix))
       (sys::poke (elt _cameraMatrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _distCoeffs
     (write-long (length _distCoeffs) s)
     (dotimes (i (length _distCoeffs))
       (sys::poke (elt _distCoeffs i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ExternalMatrix
     (write-long (length _ExternalMatrix) s)
     (dotimes (i (length _ExternalMatrix))
       (sys::poke (elt _ExternalMatrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _hmatrix
     (write-long (length _hmatrix) s)
     (dotimes (i (length _hmatrix))
       (sys::poke (elt _hmatrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _xmatrix
     (write-long (length _xmatrix) s)
     (dotimes (i (length _xmatrix))
       (sys::poke (elt _xmatrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _cameraMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameraMatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cameraMatrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _distCoeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distCoeffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distCoeffs i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ExternalMatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ExternalMatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ExternalMatrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _hmatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hmatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hmatrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _xmatrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xmatrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _xmatrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get probot_vision::VisionMatrix :md5sum-) "c2e4f9b4abcd2e9270ca5b9713f7ed35")
(setf (get probot_vision::VisionMatrix :datatype-) "probot_vision/VisionMatrix")
(setf (get probot_vision::VisionMatrix :definition-)
      "float64[] cameraMatrix
float64[] distCoeffs
float64[] ExternalMatrix
float64[] hmatrix
float64[] xmatrix

")



(provide :probot_vision/VisionMatrix "c2e4f9b4abcd2e9270ca5b9713f7ed35")


