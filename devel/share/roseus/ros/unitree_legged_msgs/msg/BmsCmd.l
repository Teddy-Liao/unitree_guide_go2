;; Auto-generated. Do not edit!


(when (boundp 'unitree_legged_msgs::BmsCmd)
  (if (not (find-package "UNITREE_LEGGED_MSGS"))
    (make-package "UNITREE_LEGGED_MSGS"))
  (shadow 'BmsCmd (find-package "UNITREE_LEGGED_MSGS")))
(unless (find-package "UNITREE_LEGGED_MSGS::BMSCMD")
  (make-package "UNITREE_LEGGED_MSGS::BMSCMD"))

(in-package "ROS")
;;//! \htmlinclude BmsCmd.msg.html


(defclass unitree_legged_msgs::BmsCmd
  :super ros::object
  :slots (_off _reserve ))

(defmethod unitree_legged_msgs::BmsCmd
  (:init
   (&key
    ((:off __off) 0)
    ((:reserve __reserve) (make-array 3 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _off (round __off))
   (setq _reserve __reserve)
   self)
  (:off
   (&optional __off)
   (if __off (setq _off __off)) _off)
  (:reserve
   (&optional __reserve)
   (if __reserve (setq _reserve __reserve)) _reserve)
  (:serialization-length
   ()
   (+
    ;; uint8 _off
    1
    ;; uint8[3] _reserve
    (* 1    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _off
       (write-byte _off s)
     ;; uint8[3] _reserve
     (princ _reserve s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _off
     (setq _off (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[3] _reserve
   (setq _reserve (make-array 3 :element-type :char))
   (replace _reserve buf :start2 ptr-) (incf ptr- 3)
   ;;
   self)
  )

(setf (get unitree_legged_msgs::BmsCmd :md5sum-) "c09195f3200bd8917201f8805a3fe1d1")
(setf (get unitree_legged_msgs::BmsCmd :datatype-) "unitree_legged_msgs/BmsCmd")
(setf (get unitree_legged_msgs::BmsCmd :definition-)
      "uint8 off            # off 0xA5
uint8[3] reserve
")



(provide :unitree_legged_msgs/BmsCmd "c09195f3200bd8917201f8805a3fe1d1")


