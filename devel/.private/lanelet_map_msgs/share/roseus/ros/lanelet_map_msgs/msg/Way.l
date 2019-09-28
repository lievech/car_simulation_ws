;; Auto-generated. Do not edit!


(when (boundp 'lanelet_map_msgs::Way)
  (if (not (find-package "LANELET_MAP_MSGS"))
    (make-package "LANELET_MAP_MSGS"))
  (shadow 'Way (find-package "LANELET_MAP_MSGS")))
(unless (find-package "LANELET_MAP_MSGS::WAY")
  (make-package "LANELET_MAP_MSGS::WAY"))

(in-package "ROS")
;;//! \htmlinclude Way.msg.html


(defclass lanelet_map_msgs::Way
  :super ros::object
  :slots (_type _points ))

(defmethod lanelet_map_msgs::Way
  (:init
   (&key
    ((:type __type) "")
    ((:points __points) (let (r) (dotimes (i 0) (push (instance lanelet_map_msgs::Node :init) r)) r))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _points __points)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; lanelet_map_msgs/Node[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; lanelet_map_msgs/Node[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; lanelet_map_msgs/Node[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance lanelet_map_msgs::Node :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lanelet_map_msgs::Way :md5sum-) "7ffd83bddc53a02e7b5a88e26ceab3da")
(setf (get lanelet_map_msgs::Way :datatype-) "lanelet_map_msgs/Way")
(setf (get lanelet_map_msgs::Way :definition-)
      "string type
Node[] points

================================================================================
MSG: lanelet_map_msgs/Node
int32 id
string type
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :lanelet_map_msgs/Way "7ffd83bddc53a02e7b5a88e26ceab3da")


