; Auto-generated. Do not edit!


(cl:in-package SegmentationMapping-msg)


;//! \htmlinclude ImageLabelDistribution.msg.html

(cl:defclass <ImageLabelDistribution> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (distribution
    :reader distribution
    :initarg :distribution
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass ImageLabelDistribution (<ImageLabelDistribution>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageLabelDistribution>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageLabelDistribution)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SegmentationMapping-msg:<ImageLabelDistribution> is deprecated: use SegmentationMapping-msg:ImageLabelDistribution instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImageLabelDistribution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SegmentationMapping-msg:header-val is deprecated.  Use SegmentationMapping-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'distribution-val :lambda-list '(m))
(cl:defmethod distribution-val ((m <ImageLabelDistribution>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SegmentationMapping-msg:distribution-val is deprecated.  Use SegmentationMapping-msg:distribution instead.")
  (distribution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageLabelDistribution>) ostream)
  "Serializes a message object of type '<ImageLabelDistribution>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'distribution) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageLabelDistribution>) istream)
  "Deserializes a message object of type '<ImageLabelDistribution>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'distribution) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageLabelDistribution>)))
  "Returns string type for a message object of type '<ImageLabelDistribution>"
  "SegmentationMapping/ImageLabelDistribution")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageLabelDistribution)))
  "Returns string type for a message object of type 'ImageLabelDistribution"
  "SegmentationMapping/ImageLabelDistribution")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageLabelDistribution>)))
  "Returns md5sum for a message object of type '<ImageLabelDistribution>"
  "c7601bdc96663397412b61ff2686aaf0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageLabelDistribution)))
  "Returns md5sum for a message object of type 'ImageLabelDistribution"
  "c7601bdc96663397412b61ff2686aaf0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageLabelDistribution>)))
  "Returns full string definition for message of type '<ImageLabelDistribution>"
  (cl:format cl:nil "~%std_msgs/Header            header~%std_msgs/Float32MultiArray distribution~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageLabelDistribution)))
  "Returns full string definition for message of type 'ImageLabelDistribution"
  (cl:format cl:nil "~%std_msgs/Header            header~%std_msgs/Float32MultiArray distribution~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageLabelDistribution>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'distribution))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageLabelDistribution>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageLabelDistribution
    (cl:cons ':header (header msg))
    (cl:cons ':distribution (distribution msg))
))
