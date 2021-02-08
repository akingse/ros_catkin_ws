;; Auto-generated. Do not edit!


(when (boundp 'probot_msgs::SFUVersionNum)
  (if (not (find-package "PROBOT_MSGS"))
    (make-package "PROBOT_MSGS"))
  (shadow 'SFUVersionNum (find-package "PROBOT_MSGS")))
(unless (find-package "PROBOT_MSGS::SFUVERSIONNUM")
  (make-package "PROBOT_MSGS::SFUVERSIONNUM"))

(in-package "ROS")
;;//! \htmlinclude SFUVersionNum.msg.html


(defclass probot_msgs::SFUVersionNum
  :super ros::object
  :slots (_version ))

(defmethod probot_msgs::SFUVersionNum
  (:init
   (&key
    ((:version __version) "")
    )
   (send-super :init)
   (setq _version (string __version))
   self)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:serialization-length
   ()
   (+
    ;; string _version
    4 (length _version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get probot_msgs::SFUVersionNum :md5sum-) "1a6f3c569a7ebe01c997148cb8f0f453")
(setf (get probot_msgs::SFUVersionNum :datatype-) "probot_msgs/SFUVersionNum")
(setf (get probot_msgs::SFUVersionNum :definition-)
      "string version

")



(provide :probot_msgs/SFUVersionNum "1a6f3c569a7ebe01c997148cb8f0f453")


