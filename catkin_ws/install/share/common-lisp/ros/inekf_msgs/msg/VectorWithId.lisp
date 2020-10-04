; Auto-generated. Do not edit!


(cl:in-package inekf_msgs-msg)


;//! \htmlinclude VectorWithId.msg.html

(cl:defclass <VectorWithId> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass VectorWithId (<VectorWithId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VectorWithId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VectorWithId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inekf_msgs-msg:<VectorWithId> is deprecated: use inekf_msgs-msg:VectorWithId instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <VectorWithId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inekf_msgs-msg:id-val is deprecated.  Use inekf_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <VectorWithId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inekf_msgs-msg:position-val is deprecated.  Use inekf_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VectorWithId>) ostream)
  "Serializes a message object of type '<VectorWithId>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VectorWithId>) istream)
  "Deserializes a message object of type '<VectorWithId>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VectorWithId>)))
  "Returns string type for a message object of type '<VectorWithId>"
  "inekf_msgs/VectorWithId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VectorWithId)))
  "Returns string type for a message object of type 'VectorWithId"
  "inekf_msgs/VectorWithId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VectorWithId>)))
  "Returns md5sum for a message object of type '<VectorWithId>"
  "862d4cb04abf0384b83634e27574137f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VectorWithId)))
  "Returns md5sum for a message object of type 'VectorWithId"
  "862d4cb04abf0384b83634e27574137f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VectorWithId>)))
  "Returns full string definition for message of type '<VectorWithId>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VectorWithId)))
  "Returns full string definition for message of type 'VectorWithId"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VectorWithId>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VectorWithId>))
  "Converts a ROS message object to a list"
  (cl:list 'VectorWithId
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
))
