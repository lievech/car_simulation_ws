;; Auto-generated. Do not edit!


(when (boundp 'observer_msgs::observer)
  (if (not (find-package "OBSERVER_MSGS"))
    (make-package "OBSERVER_MSGS"))
  (shadow 'observer (find-package "OBSERVER_MSGS")))
(unless (find-package "OBSERVER_MSGS::OBSERVER")
  (make-package "OBSERVER_MSGS::OBSERVER"))

(in-package "ROS")
;;//! \htmlinclude observer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass observer_msgs::observer
  :super ros::object
  :slots (_header _des_steering_angle _cur_steering_angle _lateral_error _heading_error _linear_v_x _linear_v_y _linear_v_z _angular_v_x _angular_v_y _angular_v_z _position_x _position_y _position_z _acc_x _acc_y _acc_z _time_cost ))

(defmethod observer_msgs::observer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:des_steering_angle __des_steering_angle) 0.0)
    ((:cur_steering_angle __cur_steering_angle) 0.0)
    ((:lateral_error __lateral_error) 0.0)
    ((:heading_error __heading_error) 0.0)
    ((:linear_v_x __linear_v_x) 0.0)
    ((:linear_v_y __linear_v_y) 0.0)
    ((:linear_v_z __linear_v_z) 0.0)
    ((:angular_v_x __angular_v_x) 0.0)
    ((:angular_v_y __angular_v_y) 0.0)
    ((:angular_v_z __angular_v_z) 0.0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:position_z __position_z) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:time_cost __time_cost) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _des_steering_angle (float __des_steering_angle))
   (setq _cur_steering_angle (float __cur_steering_angle))
   (setq _lateral_error (float __lateral_error))
   (setq _heading_error (float __heading_error))
   (setq _linear_v_x (float __linear_v_x))
   (setq _linear_v_y (float __linear_v_y))
   (setq _linear_v_z (float __linear_v_z))
   (setq _angular_v_x (float __angular_v_x))
   (setq _angular_v_y (float __angular_v_y))
   (setq _angular_v_z (float __angular_v_z))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _position_z (float __position_z))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _time_cost (float __time_cost))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:des_steering_angle
   (&optional __des_steering_angle)
   (if __des_steering_angle (setq _des_steering_angle __des_steering_angle)) _des_steering_angle)
  (:cur_steering_angle
   (&optional __cur_steering_angle)
   (if __cur_steering_angle (setq _cur_steering_angle __cur_steering_angle)) _cur_steering_angle)
  (:lateral_error
   (&optional __lateral_error)
   (if __lateral_error (setq _lateral_error __lateral_error)) _lateral_error)
  (:heading_error
   (&optional __heading_error)
   (if __heading_error (setq _heading_error __heading_error)) _heading_error)
  (:linear_v_x
   (&optional __linear_v_x)
   (if __linear_v_x (setq _linear_v_x __linear_v_x)) _linear_v_x)
  (:linear_v_y
   (&optional __linear_v_y)
   (if __linear_v_y (setq _linear_v_y __linear_v_y)) _linear_v_y)
  (:linear_v_z
   (&optional __linear_v_z)
   (if __linear_v_z (setq _linear_v_z __linear_v_z)) _linear_v_z)
  (:angular_v_x
   (&optional __angular_v_x)
   (if __angular_v_x (setq _angular_v_x __angular_v_x)) _angular_v_x)
  (:angular_v_y
   (&optional __angular_v_y)
   (if __angular_v_y (setq _angular_v_y __angular_v_y)) _angular_v_y)
  (:angular_v_z
   (&optional __angular_v_z)
   (if __angular_v_z (setq _angular_v_z __angular_v_z)) _angular_v_z)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:position_z
   (&optional __position_z)
   (if __position_z (setq _position_z __position_z)) _position_z)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:time_cost
   (&optional __time_cost)
   (if __time_cost (setq _time_cost __time_cost)) _time_cost)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _des_steering_angle
    8
    ;; float64 _cur_steering_angle
    8
    ;; float64 _lateral_error
    8
    ;; float64 _heading_error
    8
    ;; float64 _linear_v_x
    8
    ;; float64 _linear_v_y
    8
    ;; float64 _linear_v_z
    8
    ;; float64 _angular_v_x
    8
    ;; float64 _angular_v_y
    8
    ;; float64 _angular_v_z
    8
    ;; float64 _position_x
    8
    ;; float64 _position_y
    8
    ;; float64 _position_z
    8
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ;; float32 _time_cost
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _des_steering_angle
       (sys::poke _des_steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cur_steering_angle
       (sys::poke _cur_steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_error
       (sys::poke _lateral_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_error
       (sys::poke _heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_v_x
       (sys::poke _linear_v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_v_y
       (sys::poke _linear_v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_v_z
       (sys::poke _linear_v_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_v_x
       (sys::poke _angular_v_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_v_y
       (sys::poke _angular_v_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_v_z
       (sys::poke _angular_v_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_z
       (sys::poke _position_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _time_cost
       (sys::poke _time_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _des_steering_angle
     (setq _des_steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cur_steering_angle
     (setq _cur_steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_error
     (setq _lateral_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_error
     (setq _heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_v_x
     (setq _linear_v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_v_y
     (setq _linear_v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_v_z
     (setq _linear_v_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_v_x
     (setq _angular_v_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_v_y
     (setq _angular_v_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_v_z
     (setq _angular_v_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_x
     (setq _position_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_y
     (setq _position_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_z
     (setq _position_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _time_cost
     (setq _time_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get observer_msgs::observer :md5sum-) "e2f52368ad4e8041253811aff6250629")
(setf (get observer_msgs::observer :datatype-) "observer_msgs/observer")
(setf (get observer_msgs::observer :definition-)
      "Header header

float64 des_steering_angle
float64 cur_steering_angle

float64 lateral_error
float64 heading_error

float64 linear_v_x
float64 linear_v_y
float64 linear_v_z

float64 angular_v_x
float64 angular_v_y
float64 angular_v_z

float64 position_x
float64 position_y
float64 position_z

float64 acc_x
float64 acc_y
float64 acc_z

float32 time_cost

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :observer_msgs/observer "e2f52368ad4e8041253811aff6250629")


