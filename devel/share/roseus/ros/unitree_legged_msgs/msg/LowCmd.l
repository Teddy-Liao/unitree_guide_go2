;; Auto-generated. Do not edit!


(when (boundp 'unitree_legged_msgs::LowCmd)
  (if (not (find-package "UNITREE_LEGGED_MSGS"))
    (make-package "UNITREE_LEGGED_MSGS"))
  (shadow 'LowCmd (find-package "UNITREE_LEGGED_MSGS")))
(unless (find-package "UNITREE_LEGGED_MSGS::LOWCMD")
  (make-package "UNITREE_LEGGED_MSGS::LOWCMD"))

(in-package "ROS")
;;//! \htmlinclude LowCmd.msg.html


(defclass unitree_legged_msgs::LowCmd
  :super ros::object
  :slots (_head _levelFlag _frameReserve _SN _version _bandWidth _motorCmd _bms _wirelessRemote _reserve _crc ))

(defmethod unitree_legged_msgs::LowCmd
  (:init
   (&key
    ((:head __head) (make-array 2 :initial-element 0 :element-type :char))
    ((:levelFlag __levelFlag) 0)
    ((:frameReserve __frameReserve) 0)
    ((:SN __SN) (make-array 2 :initial-element 0 :element-type :integer))
    ((:version __version) (make-array 2 :initial-element 0 :element-type :integer))
    ((:bandWidth __bandWidth) 0)
    ((:motorCmd __motorCmd) (let (r) (dotimes (i 20) (push (instance unitree_legged_msgs::MotorCmd :init) r)) r))
    ((:bms __bms) (instance unitree_legged_msgs::BmsCmd :init))
    ((:wirelessRemote __wirelessRemote) (make-array 40 :initial-element 0 :element-type :char))
    ((:reserve __reserve) 0)
    ((:crc __crc) 0)
    )
   (send-super :init)
   (setq _head __head)
   (setq _levelFlag (round __levelFlag))
   (setq _frameReserve (round __frameReserve))
   (setq _SN __SN)
   (setq _version __version)
   (setq _bandWidth (round __bandWidth))
   (setq _motorCmd __motorCmd)
   (setq _bms __bms)
   (setq _wirelessRemote __wirelessRemote)
   (setq _reserve (round __reserve))
   (setq _crc (round __crc))
   self)
  (:head
   (&optional __head)
   (if __head (setq _head __head)) _head)
  (:levelFlag
   (&optional __levelFlag)
   (if __levelFlag (setq _levelFlag __levelFlag)) _levelFlag)
  (:frameReserve
   (&optional __frameReserve)
   (if __frameReserve (setq _frameReserve __frameReserve)) _frameReserve)
  (:SN
   (&optional __SN)
   (if __SN (setq _SN __SN)) _SN)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:bandWidth
   (&optional __bandWidth)
   (if __bandWidth (setq _bandWidth __bandWidth)) _bandWidth)
  (:motorCmd
   (&rest __motorCmd)
   (if (keywordp (car __motorCmd))
       (send* _motorCmd __motorCmd)
     (progn
       (if __motorCmd (setq _motorCmd (car __motorCmd)))
       _motorCmd)))
  (:bms
   (&rest __bms)
   (if (keywordp (car __bms))
       (send* _bms __bms)
     (progn
       (if __bms (setq _bms (car __bms)))
       _bms)))
  (:wirelessRemote
   (&optional __wirelessRemote)
   (if __wirelessRemote (setq _wirelessRemote __wirelessRemote)) _wirelessRemote)
  (:reserve
   (&optional __reserve)
   (if __reserve (setq _reserve __reserve)) _reserve)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:serialization-length
   ()
   (+
    ;; uint8[2] _head
    (* 1    2)
    ;; uint8 _levelFlag
    1
    ;; uint8 _frameReserve
    1
    ;; uint32[2] _SN
    (* 4    2)
    ;; uint32[2] _version
    (* 4    2)
    ;; uint16 _bandWidth
    2
    ;; unitree_legged_msgs/MotorCmd[20] _motorCmd
    (apply #'+ (send-all _motorCmd :serialization-length))
    ;; unitree_legged_msgs/BmsCmd _bms
    (send _bms :serialization-length)
    ;; uint8[40] _wirelessRemote
    (* 1    40)
    ;; uint32 _reserve
    4
    ;; uint32 _crc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[2] _head
     (princ _head s)
     ;; uint8 _levelFlag
       (write-byte _levelFlag s)
     ;; uint8 _frameReserve
       (write-byte _frameReserve s)
     ;; uint32[2] _SN
     (dotimes (i 2)
       (write-long (elt _SN i) s)
       )
     ;; uint32[2] _version
     (dotimes (i 2)
       (write-long (elt _version i) s)
       )
     ;; uint16 _bandWidth
       (write-word _bandWidth s)
     ;; unitree_legged_msgs/MotorCmd[20] _motorCmd
     (dolist (elem _motorCmd)
       (send elem :serialize s)
       )
     ;; unitree_legged_msgs/BmsCmd _bms
       (send _bms :serialize s)
     ;; uint8[40] _wirelessRemote
     (princ _wirelessRemote s)
     ;; uint32 _reserve
       (write-long _reserve s)
     ;; uint32 _crc
       (write-long _crc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[2] _head
   (setq _head (make-array 2 :element-type :char))
   (replace _head buf :start2 ptr-) (incf ptr- 2)
   ;; uint8 _levelFlag
     (setq _levelFlag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _frameReserve
     (setq _frameReserve (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32[2] _SN
   (dotimes (i (length _SN))
     (setf (elt _SN i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[2] _version
   (dotimes (i (length _version))
     (setf (elt _version i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint16 _bandWidth
     (setq _bandWidth (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; unitree_legged_msgs/MotorCmd[20] _motorCmd
   (dotimes (i 20)
     (send (elt _motorCmd i) :deserialize buf ptr-) (incf ptr- (send (elt _motorCmd i) :serialization-length))
     )
   ;; unitree_legged_msgs/BmsCmd _bms
     (send _bms :deserialize buf ptr-) (incf ptr- (send _bms :serialization-length))
   ;; uint8[40] _wirelessRemote
   (setq _wirelessRemote (make-array 40 :element-type :char))
   (replace _wirelessRemote buf :start2 ptr-) (incf ptr- 40)
   ;; uint32 _reserve
     (setq _reserve (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _crc
     (setq _crc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get unitree_legged_msgs::LowCmd :md5sum-) "7a33b01032a894134df9b65b5cd356d1")
(setf (get unitree_legged_msgs::LowCmd :datatype-) "unitree_legged_msgs/LowCmd")
(setf (get unitree_legged_msgs::LowCmd :definition-)
      "
uint8[2] head
uint8 levelFlag
uint8 frameReserve

uint32[2] SN
uint32[2] version
uint16 bandWidth
MotorCmd[20] motorCmd
BmsCmd bms
uint8[40] wirelessRemote
uint32 reserve

uint32 crc
================================================================================
MSG: unitree_legged_msgs/MotorCmd
uint8 mode           # motor target mode
float32 q            # motor target position
float32 dq           # motor target velocity
float32 tau          # motor target torque
float32 Kp           # motor spring stiffness coefficient
float32 Kd           # motor damper coefficient
uint32[3] reserve    # motor target torque
================================================================================
MSG: unitree_legged_msgs/BmsCmd
uint8 off            # off 0xA5
uint8[3] reserve
")



(provide :unitree_legged_msgs/LowCmd "7a33b01032a894134df9b65b5cd356d1")


