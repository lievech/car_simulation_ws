;; Auto-generated. Do not edit!


(when (boundp 'vehicle_force_msgs::VehicleForce)
  (if (not (find-package "VEHICLE_FORCE_MSGS"))
    (make-package "VEHICLE_FORCE_MSGS"))
  (shadow 'VehicleForce (find-package "VEHICLE_FORCE_MSGS")))
(unless (find-package "VEHICLE_FORCE_MSGS::VEHICLEFORCE")
  (make-package "VEHICLE_FORCE_MSGS::VEHICLEFORCE"))

(in-package "ROS")
;;//! \htmlinclude VehicleForce.msg.html


(defclass vehicle_force_msgs::VehicleForce
  :super ros::object
  :slots (_frontlateralforce _frontslipangle _rearlateralforce _rearslipangle _frontlongitudinalforce _rearlongitudinalforce _vxdot _deltadot ))

(defmethod vehicle_force_msgs::VehicleForce
  (:init
   (&key
    ((:frontlateralforce __frontlateralforce) 0.0)
    ((:frontslipangle __frontslipangle) 0.0)
    ((:rearlateralforce __rearlateralforce) 0.0)
    ((:rearslipangle __rearslipangle) 0.0)
    ((:frontlongitudinalforce __frontlongitudinalforce) 0.0)
    ((:rearlongitudinalforce __rearlongitudinalforce) 0.0)
    ((:vxdot __vxdot) 0.0)
    ((:deltadot __deltadot) 0.0)
    )
   (send-super :init)
   (setq _frontlateralforce (float __frontlateralforce))
   (setq _frontslipangle (float __frontslipangle))
   (setq _rearlateralforce (float __rearlateralforce))
   (setq _rearslipangle (float __rearslipangle))
   (setq _frontlongitudinalforce (float __frontlongitudinalforce))
   (setq _rearlongitudinalforce (float __rearlongitudinalforce))
   (setq _vxdot (float __vxdot))
   (setq _deltadot (float __deltadot))
   self)
  (:frontlateralforce
   (&optional __frontlateralforce)
   (if __frontlateralforce (setq _frontlateralforce __frontlateralforce)) _frontlateralforce)
  (:frontslipangle
   (&optional __frontslipangle)
   (if __frontslipangle (setq _frontslipangle __frontslipangle)) _frontslipangle)
  (:rearlateralforce
   (&optional __rearlateralforce)
   (if __rearlateralforce (setq _rearlateralforce __rearlateralforce)) _rearlateralforce)
  (:rearslipangle
   (&optional __rearslipangle)
   (if __rearslipangle (setq _rearslipangle __rearslipangle)) _rearslipangle)
  (:frontlongitudinalforce
   (&optional __frontlongitudinalforce)
   (if __frontlongitudinalforce (setq _frontlongitudinalforce __frontlongitudinalforce)) _frontlongitudinalforce)
  (:rearlongitudinalforce
   (&optional __rearlongitudinalforce)
   (if __rearlongitudinalforce (setq _rearlongitudinalforce __rearlongitudinalforce)) _rearlongitudinalforce)
  (:vxdot
   (&optional __vxdot)
   (if __vxdot (setq _vxdot __vxdot)) _vxdot)
  (:deltadot
   (&optional __deltadot)
   (if __deltadot (setq _deltadot __deltadot)) _deltadot)
  (:serialization-length
   ()
   (+
    ;; float32 _frontlateralforce
    4
    ;; float32 _frontslipangle
    4
    ;; float32 _rearlateralforce
    4
    ;; float32 _rearslipangle
    4
    ;; float32 _frontlongitudinalforce
    4
    ;; float32 _rearlongitudinalforce
    4
    ;; float32 _vxdot
    4
    ;; float32 _deltadot
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _frontlateralforce
       (sys::poke _frontlateralforce (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontslipangle
       (sys::poke _frontslipangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearlateralforce
       (sys::poke _rearlateralforce (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearslipangle
       (sys::poke _rearslipangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontlongitudinalforce
       (sys::poke _frontlongitudinalforce (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearlongitudinalforce
       (sys::poke _rearlongitudinalforce (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vxdot
       (sys::poke _vxdot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deltadot
       (sys::poke _deltadot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _frontlateralforce
     (setq _frontlateralforce (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontslipangle
     (setq _frontslipangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearlateralforce
     (setq _rearlateralforce (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearslipangle
     (setq _rearslipangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontlongitudinalforce
     (setq _frontlongitudinalforce (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearlongitudinalforce
     (setq _rearlongitudinalforce (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vxdot
     (setq _vxdot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deltadot
     (setq _deltadot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vehicle_force_msgs::VehicleForce :md5sum-) "c2afff5c6ed09aa9fbd688ff68067a55")
(setf (get vehicle_force_msgs::VehicleForce :datatype-) "vehicle_force_msgs/VehicleForce")
(setf (get vehicle_force_msgs::VehicleForce :definition-)
      "# This message decribes the forces of vehicle from road

float32 frontlateralforce
float32 frontslipangle
float32 rearlateralforce
float32 rearslipangle
float32 frontlongitudinalforce
float32 rearlongitudinalforce
float32 vxdot
float32 deltadot

")



(provide :vehicle_force_msgs/VehicleForce "c2afff5c6ed09aa9fbd688ff68067a55")


