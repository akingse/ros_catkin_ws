
(cl:in-package :asdf)

(defsystem "probot_vision-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VisionMatrix" :depends-on ("_package_VisionMatrix"))
    (:file "_package_VisionMatrix" :depends-on ("_package"))
  ))