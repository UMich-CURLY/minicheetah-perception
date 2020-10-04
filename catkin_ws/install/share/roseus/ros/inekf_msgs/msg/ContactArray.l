;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::ContactArray)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'ContactArray (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::CONTACTARRAY")
  (make-package "INEKF_MSGS::CONTACTARRAY"))

(in-package "ROS")
;;//! \htmlinclude ContactArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass inekf_msgs::ContactArray
  :super ros::object
  :slots (_header _contacts ))

(defmethod inekf_msgs::ContactArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:contacts __contacts) (let (r) (dotimes (i 0) (push (instance inekf_msgs::Contact :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _contacts __contacts)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:contacts
   (&rest __contacts)
   (if (keywordp (car __contacts))
       (send* _contacts __contacts)
     (progn
       (if __contacts (setq _contacts (car __contacts)))
       _contacts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; inekf_msgs/Contact[] _contacts
    (apply #'+ (send-all _contacts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; inekf_msgs/Contact[] _contacts
     (write-long (length _contacts) s)
     (dolist (elem _contacts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; inekf_msgs/Contact[] _contacts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contacts (let (r) (dotimes (i n) (push (instance inekf_msgs::Contact :init) r)) r))
     (dolist (elem- _contacts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get inekf_msgs::ContactArray :md5sum-) "21d911d42a15336d566e5a1f733a4470")
(setf (get inekf_msgs::ContactArray :datatype-) "inekf_msgs/ContactArray")
(setf (get inekf_msgs::ContactArray :definition-)
      "Header header
Contact[] contacts

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
MSG: inekf_msgs/Contact
int32 id
bool indicator


")



(provide :inekf_msgs/ContactArray "21d911d42a15336d566e5a1f733a4470")


