
(cl:in-package :asdf)

(defsystem "vehicle_force_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VehicleForce" :depends-on ("_package_VehicleForce"))
    (:file "_package_VehicleForce" :depends-on ("_package"))
  ))