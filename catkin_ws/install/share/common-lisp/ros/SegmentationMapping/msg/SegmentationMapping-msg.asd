
(cl:in-package :asdf)

(defsystem "SegmentationMapping-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageLabelDistribution" :depends-on ("_package_ImageLabelDistribution"))
    (:file "_package_ImageLabelDistribution" :depends-on ("_package"))
  ))