; Auto-generated. Do not edit!


(cl:in-package inekf_msgs-msg)


;//! \htmlinclude ContactArray.msg.html

(cl:defclass <ContactArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (contacts
    :reader contacts
    :initarg :contacts
    :type (cl:vector inekf_msgs-msg:Contact)
   :initform (cl:make-array 0 :element-type 'inekf_msgs-msg:Contact :initial-element (cl:make-instance 'inekf_msgs-msg:Contact))))
)

(cl:defclass ContactArray (<ContactArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContactArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContactArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inekf_msgs-msg:<ContactArray> is deprecated: use inekf_msgs-msg:ContactArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ContactArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inekf_msgs-msg:header-val is deprecated.  Use inekf_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'contacts-val :lambda-list '(m))
(cl:defmethod contacts-val ((m <ContactArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inekf_msgs-msg:contacts-val is deprecated.  Use inekf_msgs-msg:contacts instead.")
  (contacts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContactArray>) ostream)
  "Serializes a message object of type '<ContactArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contacts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contacts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContactArray>) istream)
  "Deserializes a message object of type '<ContactArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contacts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contacts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'inekf_msgs-msg:Contact))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContactArray>)))
  "Returns string type for a message object of type '<ContactArray>"
  "inekf_msgs/ContactArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContactArray)))
  "Returns string type for a message object of type 'ContactArray"
  "inekf_msgs/ContactArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContactArray>)))
  "Returns md5sum for a message object of type '<ContactArray>"
  "21d911d42a15336d566e5a1f733a4470")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContactArray)))
  "Returns md5sum for a message object of type 'ContactArray"
  "21d911d42a15336d566e5a1f733a4470")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContactArray>)))
  "Returns full string definition for message of type '<ContactArray>"
  (cl:format cl:nil "Header header~%Contact[] contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: inekf_msgs/Contact~%int32 id~%bool indicator~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContactArray)))
  "Returns full string definition for message of type 'ContactArray"
  (cl:format cl:nil "Header header~%Contact[] contacts~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: inekf_msgs/Contact~%int32 id~%bool indicator~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContactArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contacts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContactArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ContactArray
    (cl:cons ':header (header msg))
    (cl:cons ':contacts (contacts msg))
))
