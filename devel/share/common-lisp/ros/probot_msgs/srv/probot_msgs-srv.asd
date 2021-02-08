
(cl:in-package :asdf)

(defsystem "probot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :probot_msgs-msg
)
  :components ((:file "_package")
    (:file "HeartbeatSrv" :depends-on ("_package_HeartbeatSrv"))
    (:file "_package_HeartbeatSrv" :depends-on ("_package"))
    (:file "RefreshConfigSrv" :depends-on ("_package_RefreshConfigSrv"))
    (:file "_package_RefreshConfigSrv" :depends-on ("_package"))
    (:file "RefreshPointsSrv" :depends-on ("_package_RefreshPointsSrv"))
    (:file "_package_RefreshPointsSrv" :depends-on ("_package"))
    (:file "SFUCommandCtrl" :depends-on ("_package_SFUCommandCtrl"))
    (:file "_package_SFUCommandCtrl" :depends-on ("_package"))
  ))