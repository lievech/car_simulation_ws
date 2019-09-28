; Auto-generated. Do not edit!


(cl:in-package lanelet_map_msgs-msg)


;//! \htmlinclude Way.msg.html

(cl:defclass <Way> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (points
    :reader points
    :initarg :points
    :type (cl:vector lanelet_map_msgs-msg:Node)
   :initform (cl:make-array 0 :element-type 'lanelet_map_msgs-msg:Node :initial-element (cl:make-instance 'lanelet_map_msgs-msg:Node))))
)

(cl:defclass Way (<Way>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Way>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Way)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lanelet_map_msgs-msg:<Way> is deprecated: use lanelet_map_msgs-msg:Way instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:type-val is deprecated.  Use lanelet_map_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Way>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lanelet_map_msgs-msg:points-val is deprecated.  Use lanelet_map_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Way>) ostream)
  "Serializes a message object of type '<Way>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Way>) istream)
  "Deserializes a message object of type '<Way>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lanelet_map_msgs-msg:Node))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Way>)))
  "Returns string type for a message object of type '<Way>"
  "lanelet_map_msgs/Way")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Way)))
  "Returns string type for a message object of type 'Way"
  "lanelet_map_msgs/Way")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Way>)))
  "Returns md5sum for a message object of type '<Way>"
  "7ffd83bddc53a02e7b5a88e26ceab3da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Way)))
  "Returns md5sum for a message object of type 'Way"
  "7ffd83bddc53a02e7b5a88e26ceab3da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Way>)))
  "Returns full string definition for message of type '<Way>"
  (cl:format cl:nil "string type~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Way)))
  "Returns full string definition for message of type 'Way"
  (cl:format cl:nil "string type~%Node[] points~%~%================================================================================~%MSG: lanelet_map_msgs/Node~%int32 id~%string type~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Way>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Way>))
  "Converts a ROS message object to a list"
  (cl:list 'Way
    (cl:cons ':type (type msg))
    (cl:cons ':points (points msg))
))
