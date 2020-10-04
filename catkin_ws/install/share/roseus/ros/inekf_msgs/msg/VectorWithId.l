;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::VectorWithId)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'VectorWithId (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::VECTORWITHID")
  (make-package "INEKF_MSGS::VECTORWITHID"))

(in-package "ROS")
;;//! \htmlinclude VectorWithId.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass inekf_msgs::VectorWithId
  :super ros::object
  :slots (_id _position ))

(defmethod inekf_msgs::VectorWithId
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get inekf_msgs::VectorWithId :md5sum-) "862d4cb04abf0384b83634e27574137f")
(setf (get inekf_msgs::VectorWithId :datatype-) "inekf_msgs/VectorWithId")
(setf (get inekf_msgs::VectorWithId :definition-)
      "int32 id
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :inekf_msgs/VectorWithId "862d4cb04abf0384b83634e27574137f")


