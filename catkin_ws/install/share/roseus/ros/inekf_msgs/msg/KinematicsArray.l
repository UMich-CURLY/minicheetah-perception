;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::KinematicsArray)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'KinematicsArray (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::KINEMATICSARRAY")
  (make-package "INEKF_MSGS::KINEMATICSARRAY"))

(in-package "ROS")
;;//! \htmlinclude KinematicsArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass inekf_msgs::KinematicsArray
  :super ros::object
  :slots (_header _frames ))

(defmethod inekf_msgs::KinematicsArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frames __frames) (let (r) (dotimes (i 0) (push (instance inekf_msgs::Kinematics :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _frames __frames)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frames
   (&rest __frames)
   (if (keywordp (car __frames))
       (send* _frames __frames)
     (progn
       (if __frames (setq _frames (car __frames)))
       _frames)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; inekf_msgs/Kinematics[] _frames
    (apply #'+ (send-all _frames :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; inekf_msgs/Kinematics[] _frames
     (write-long (length _frames) s)
     (dolist (elem _frames)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; inekf_msgs/Kinematics[] _frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frames (let (r) (dotimes (i n) (push (instance inekf_msgs::Kinematics :init) r)) r))
     (dolist (elem- _frames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get inekf_msgs::KinematicsArray :md5sum-) "4b884fa68e050b5e1db84e96861a148f")
(setf (get inekf_msgs::KinematicsArray :datatype-) "inekf_msgs/KinematicsArray")
(setf (get inekf_msgs::KinematicsArray :definition-)
      "Header header
Kinematics[] frames

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
MSG: inekf_msgs/Kinematics
int32 id
geometry_msgs/PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :inekf_msgs/KinematicsArray "4b884fa68e050b5e1db84e96861a148f")


