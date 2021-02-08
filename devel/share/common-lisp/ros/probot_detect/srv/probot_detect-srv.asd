
(cl:in-package :asdf)

(defsystem "probot_detect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "detectobjectionSrv" :depends-on ("_package_detectobjectionSrv"))
    (:file "_package_detectobjectionSrv" :depends-on ("_package"))
  ))