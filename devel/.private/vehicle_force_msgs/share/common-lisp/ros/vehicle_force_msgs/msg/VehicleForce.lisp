; Auto-generated. Do not edit!


(cl:in-package vehicle_force_msgs-msg)


;//! \htmlinclude VehicleForce.msg.html

(cl:defclass <VehicleForce> (roslisp-msg-protocol:ros-message)
  ((frontlateralforce
    :reader frontlateralforce
    :initarg :frontlateralforce
    :type cl:float
    :initform 0.0)
   (frontslipangle
    :reader frontslipangle
    :initarg :frontslipangle
    :type cl:float
    :initform 0.0)
   (rearlateralforce
    :reader rearlateralforce
    :initarg :rearlateralforce
    :type cl:float
    :initform 0.0)
   (rearslipangle
    :reader rearslipangle
    :initarg :rearslipangle
    :type cl:float
    :initform 0.0)
   (frontlongitudinalforce
    :reader frontlongitudinalforce
    :initarg :frontlongitudinalforce
    :type cl:float
    :initform 0.0)
   (rearlongitudinalforce
    :reader rearlongitudinalforce
    :initarg :rearlongitudinalforce
    :type cl:float
    :initform 0.0)
   (vxdot
    :reader vxdot
    :initarg :vxdot
    :type cl:float
    :initform 0.0)
   (deltadot
    :reader deltadot
    :initarg :deltadot
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleForce (<VehicleForce>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleForce>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleForce)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_force_msgs-msg:<VehicleForce> is deprecated: use vehicle_force_msgs-msg:VehicleForce instead.")))

(cl:ensure-generic-function 'frontlateralforce-val :lambda-list '(m))
(cl:defmethod frontlateralforce-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:frontlateralforce-val is deprecated.  Use vehicle_force_msgs-msg:frontlateralforce instead.")
  (frontlateralforce m))

(cl:ensure-generic-function 'frontslipangle-val :lambda-list '(m))
(cl:defmethod frontslipangle-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:frontslipangle-val is deprecated.  Use vehicle_force_msgs-msg:frontslipangle instead.")
  (frontslipangle m))

(cl:ensure-generic-function 'rearlateralforce-val :lambda-list '(m))
(cl:defmethod rearlateralforce-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:rearlateralforce-val is deprecated.  Use vehicle_force_msgs-msg:rearlateralforce instead.")
  (rearlateralforce m))

(cl:ensure-generic-function 'rearslipangle-val :lambda-list '(m))
(cl:defmethod rearslipangle-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:rearslipangle-val is deprecated.  Use vehicle_force_msgs-msg:rearslipangle instead.")
  (rearslipangle m))

(cl:ensure-generic-function 'frontlongitudinalforce-val :lambda-list '(m))
(cl:defmethod frontlongitudinalforce-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:frontlongitudinalforce-val is deprecated.  Use vehicle_force_msgs-msg:frontlongitudinalforce instead.")
  (frontlongitudinalforce m))

(cl:ensure-generic-function 'rearlongitudinalforce-val :lambda-list '(m))
(cl:defmethod rearlongitudinalforce-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:rearlongitudinalforce-val is deprecated.  Use vehicle_force_msgs-msg:rearlongitudinalforce instead.")
  (rearlongitudinalforce m))

(cl:ensure-generic-function 'vxdot-val :lambda-list '(m))
(cl:defmethod vxdot-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:vxdot-val is deprecated.  Use vehicle_force_msgs-msg:vxdot instead.")
  (vxdot m))

(cl:ensure-generic-function 'deltadot-val :lambda-list '(m))
(cl:defmethod deltadot-val ((m <VehicleForce>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_force_msgs-msg:deltadot-val is deprecated.  Use vehicle_force_msgs-msg:deltadot instead.")
  (deltadot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleForce>) ostream)
  "Serializes a message object of type '<VehicleForce>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontlateralforce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontslipangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearlateralforce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearslipangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontlongitudinalforce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearlongitudinalforce))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vxdot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deltadot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleForce>) istream)
  "Deserializes a message object of type '<VehicleForce>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontlateralforce) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontslipangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearlateralforce) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearslipangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontlongitudinalforce) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearlongitudinalforce) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vxdot) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deltadot) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleForce>)))
  "Returns string type for a message object of type '<VehicleForce>"
  "vehicle_force_msgs/VehicleForce")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleForce)))
  "Returns string type for a message object of type 'VehicleForce"
  "vehicle_force_msgs/VehicleForce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleForce>)))
  "Returns md5sum for a message object of type '<VehicleForce>"
  "c2afff5c6ed09aa9fbd688ff68067a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleForce)))
  "Returns md5sum for a message object of type 'VehicleForce"
  "c2afff5c6ed09aa9fbd688ff68067a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleForce>)))
  "Returns full string definition for message of type '<VehicleForce>"
  (cl:format cl:nil "# This message decribes the forces of vehicle from road~%~%float32 frontlateralforce~%float32 frontslipangle~%float32 rearlateralforce~%float32 rearslipangle~%float32 frontlongitudinalforce~%float32 rearlongitudinalforce~%float32 vxdot~%float32 deltadot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleForce)))
  "Returns full string definition for message of type 'VehicleForce"
  (cl:format cl:nil "# This message decribes the forces of vehicle from road~%~%float32 frontlateralforce~%float32 frontslipangle~%float32 rearlateralforce~%float32 rearslipangle~%float32 frontlongitudinalforce~%float32 rearlongitudinalforce~%float32 vxdot~%float32 deltadot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleForce>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleForce>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleForce
    (cl:cons ':frontlateralforce (frontlateralforce msg))
    (cl:cons ':frontslipangle (frontslipangle msg))
    (cl:cons ':rearlateralforce (rearlateralforce msg))
    (cl:cons ':rearslipangle (rearslipangle msg))
    (cl:cons ':frontlongitudinalforce (frontlongitudinalforce msg))
    (cl:cons ':rearlongitudinalforce (rearlongitudinalforce msg))
    (cl:cons ':vxdot (vxdot msg))
    (cl:cons ':deltadot (deltadot msg))
))
