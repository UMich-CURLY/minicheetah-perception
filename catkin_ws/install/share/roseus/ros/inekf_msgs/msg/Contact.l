;; Auto-generated. Do not edit!


(when (boundp 'inekf_msgs::Contact)
  (if (not (find-package "INEKF_MSGS"))
    (make-package "INEKF_MSGS"))
  (shadow 'Contact (find-package "INEKF_MSGS")))
(unless (find-package "INEKF_MSGS::CONTACT")
  (make-package "INEKF_MSGS::CONTACT"))

(in-package "ROS")
;;//! \htmlinclude Contact.msg.html


(defclass inekf_msgs::Contact
  :super ros::object
  :slots (_id _indicator ))

(defmethod inekf_msgs::Contact
  (:init
   (&key
    ((:id __id) 0)
    ((:indicator __indicator) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _indicator __indicator)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:indicator
   (&optional __indicator)
   (if __indicator (setq _indicator __indicator)) _indicator)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; bool _indicator
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; bool _indicator
       (if _indicator (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _indicator
     (setq _indicator (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get inekf_msgs::Contact :md5sum-) "9b656e87f7598502afc68a75a34bb861")
(setf (get inekf_msgs::Contact :datatype-) "inekf_msgs/Contact")
(setf (get inekf_msgs::Contact :definition-)
      "int32 id
bool indicator


")



(provide :inekf_msgs/Contact "9b656e87f7598502afc68a75a34bb861")


