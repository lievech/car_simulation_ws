
(cl:in-package :asdf)

(defsystem "observer_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "observer" :depends-on ("_package_observer"))
    (:file "_package_observer" :depends-on ("_package"))
  ))