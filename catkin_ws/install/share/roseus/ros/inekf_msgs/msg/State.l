;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::State)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'State (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::STATE")
  (make-package "INEKF_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass inekf_msgs::State
  :super ros::object
  :slots (_header _orientation _velocity _position _covariance _contacts _landmarks _gyroscope_bias _accelerometer_bias ))

(defmethod inekf_msgs::State
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:covariance __covariance) (make-array 81 :initial-element 0.0 :element-type :float))
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push (instance inekf_msgs::VectorWithId :init) r)) r))
    ((:landmarks __landmarks) (let (r) (dotimes (i 0) (push (instance inekf_msgs::VectorWithId :init) r)) r))
    ((:gyroscope_bias __gyroscope_bias) (instance geometry_msgs::Vector3 :init))
    ((:accelerometer_bias __accelerometer_bias) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _orientation __orientation)
   (setq _velocity __velocity)
   (setq _position __position)
   (setq _covariance __covariance)
   (setq _contacts __contacts)
   (setq _landmarks __landmarks)
   (setq _gyroscope_bias __gyroscope_bias)
   (setq _accelerometer_bias __accelerometer_bias)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:contacts
   (&rest __contacts)
   (if (keywordp (car __contacts))
       (send* _contacts __contacts)
     (progn
       (if __contacts (setq _contacts (car __contacts)))
       _contacts)))
  (:landmarks
   (&rest __landmarks)
   (if (keywordp (car __landmarks))
       (send* _landmarks __landmarks)
     (progn
       (if __landmarks (setq _landmarks (car __landmarks)))
       _landmarks)))
  (:gyroscope_bias
   (&rest __gyroscope_bias)
   (if (keywordp (car __gyroscope_bias))
       (send* _gyroscope_bias __gyroscope_bias)
     (progn
       (if __gyroscope_bias (setq _gyroscope_bias (car __gyroscope_bias)))
       _gyroscope_bias)))
  (:accelerometer_bias
   (&rest __accelerometer_bias)
   (if (keywordp (car __accelerometer_bias))
       (send* _accelerometer_bias __accelerometer_bias)
     (progn
       (if __accelerometer_bias (setq _accelerometer_bias (car __accelerometer_bias)))
       _accelerometer_bias)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64[81] _covariance
    (* 8    81)
    ;; inekf_msgs/VectorWithId[] _contacts
    (apply #'+ (send-all _contacts :serialization-length)) 4
    ;; inekf_msgs/VectorWithId[] _landmarks
    (apply #'+ (send-all _landmarks :serialization-length)) 4
    ;; geometry_msgs/Vector3 _gyroscope_bias
    (send _gyroscope_bias :serialization-length)
    ;; geometry_msgs/Vector3 _accelerometer_bias
    (send _accelerometer_bias :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64[81] _covariance
     (dotimes (i 81)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; inekf_msgs/VectorWithId[] _contacts
     (write-long (length _contacts) s)
     (dolist (elem _contacts)
       (send elem :serialize s)
       )
     ;; inekf_msgs/VectorWithId[] _landmarks
     (write-long (length _landmarks) s)
     (dolist (elem _landmarks)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3 _gyroscope_bias
       (send _gyroscope_bias :serialize s)
     ;; geometry_msgs/Vector3 _accelerometer_bias
       (send _accelerometer_bias :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[81] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; inekf_msgs/VectorWithId[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (let (r) (dotimes (i n) (push (instance inekf_msgs::VectorWithId :init) r)) r))
     (dolist (elem- _contacts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; inekf_msgs/VectorWithId[] _landmarks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks (let (r) (dotimes (i n) (push (instance inekf_msgs::VectorWithId :init) r)) r))
     (dolist (elem- _landmarks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3 _gyroscope_bias
     (send _gyroscope_bias :deserialize buf ptr-) (incf ptr- (send _gyroscope_bias :serialization-length))
   ;; geometry_msgs/Vector3 _accelerometer_bias
     (send _accelerometer_bias :deserialize buf ptr-) (incf ptr- (send _accelerometer_bias :serialization-length))
   ;;
   self)
  )

(setf (get inekf_msgs::State :md5sum-) "e7343162f53e88be8c7489511184bffa")
(setf (get inekf_msgs::State :datatype-) "inekf_msgs/State")
(setf (get inekf_msgs::State :definition-)
      "Header header
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 velocity
geometry_msgs/Point position
float64[81] covariance
VectorWithId[] contacts
VectorWithId[] landmarks
geometry_msgs/Vector3 gyroscope_bias
geometry_msgs/Vector3 accelerometer_bias


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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: inekf_msgs/VectorWithId
int32 id
geometry_msgs/Point position

")



(provide :inekf_msgs/State "e7343162f53e88be8c7489511184bffa")


