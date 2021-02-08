
(cl:in-package :asdf)

(defsystem "probot_vision-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectObjectSrv" :depends-on ("_package_DetectObjectSrv"))
    (:file "_package_DetectObjectSrv" :depends-on ("_package"))
  ))