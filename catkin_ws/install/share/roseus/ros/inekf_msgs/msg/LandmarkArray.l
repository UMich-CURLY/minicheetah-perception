;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::LandmarkArray)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'LandmarkArray (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::LANDMARKARRAY")
  (make-package "INEKF_MSGS::LANDMARKARRAY"))

(in-package "ROS")
;;//! \htmlinclude LandmarkArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass inekf_msgs::LandmarkArray
  :super ros::object
  :slots (_header _landmarks ))

(defmethod inekf_msgs::LandmarkArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance inekf_msgs::VectorWithId :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _landmarks __landmarks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; inekf_msgs/VectorWithId[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; inekf_msgs/VectorWithId[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; inekf_msgs/VectorWithId[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance inekf_msgs::VectorWithId :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get inekf_msgs::LandmarkArray :md5sum-) "785787915a1ac5c409c99b8e39adb3e0")
(setf (get inekf_msgs::LandmarkArray :datatype-) "inekf_msgs/LandmarkArray")
(setf (get inekf_msgs::LandmarkArray :definition-)
      "Header header
VectorWithId[] landmarks

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
string frame_id

================================================================================
MSG: inekf_msgs/VectorWithId
int32 id
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :inekf_msgs/LandmarkArray "785787915a1ac5c409c99b8e39adb3e0")


