;; Auto-generated. Do not edit!


(when (boundp 'unitree_legged_msgs::HighCmd)
  (if (not (find-package "UNITREE_LEGGED_MSGS"))
    (make-package "UNITREE_LEGGED_MSGS"))
  (shadow 'HighCmd (find-package "UNITREE_LEGGED_MSGS")))
(unless (find-package "UNITREE_LEGGED_MSGS::HIGHCMD")
  (make-package "UNITREE_LEGGED_MSGS::HIGHCMD"))

(in-package "ROS")
;;//! \htmlinclude HighCmd.msg.html


(defclass unitree_legged_msgs::HighCmd
  :super ros::object
  :slots (_head _levelFlag _frameReserve _SN _version _bandWidth _mode _gaitType _speedLevel _footRaiseHeight _bodyHeight _position _euler _velocity _yawSpeed _bms _led _wirelessRemote _reserve _crc ))

(defmethod unitree_legged_msgs::HighCmd
  (:init
   (&key
    ((:head __head) (make-array 2 :initial-element 0 :element-type :char))
    ((:levelFlag __levelFlag) 0)
    ((:frameReserve __frameReserve) 0)
    ((:SN __SN) (make-array 2 :initial-element 0 :element-type :integer))
    ((:version __version) (make-array 2 :initial-element 0 :element-type :integer))
    ((:bandWidth __bandWidth) 0)
    ((:mode __mode) 0)
    ((:gaitType __gaitType) 0)
    ((:speedLevel __speedLevel) 0)
    ((:footRaiseHeight __footRaiseHeight) 0.0)
    ((:bodyHeight __bodyHeight) 0.0)
    ((:position __position) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:euler __euler) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:yawSpeed __yawSpeed) 0.0)
    ((:bms __bms) (instance unitree_legged_msgs::BmsCmd :init))
    ((:led __led) (let (r) (dotimes (i 4) (push (instance unitree_legged_msgs::LED :init) r)) r))
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
   (setq _mode (round __mode))
   (setq _gaitType (round __gaitType))
   (setq _speedLevel (round __speedLevel))
   (setq _footRaiseHeight (float __footRaiseHeight))
   (setq _bodyHeight (float __bodyHeight))
   (setq _position __position)
   (setq _euler __euler)
   (setq _velocity __velocity)
   (setq _yawSpeed (float __yawSpeed))
   (setq _bms __bms)
   (setq _led __led)
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
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:gaitType
   (&optional __gaitType)
   (if __gaitType (setq _gaitType __gaitType)) _gaitType)
  (:speedLevel
   (&optional __speedLevel)
   (if __speedLevel (setq _speedLevel __speedLevel)) _speedLevel)
  (:footRaiseHeight
   (&optional __footRaiseHeight)
   (if __footRaiseHeight (setq _footRaiseHeight __footRaiseHeight)) _footRaiseHeight)
  (:bodyHeight
   (&optional __bodyHeight)
   (if __bodyHeight (setq _bodyHeight __bodyHeight)) _bodyHeight)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:euler
   (&optional __euler)
   (if __euler (setq _euler __euler)) _euler)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:yawSpeed
   (&optional __yawSpeed)
   (if __yawSpeed (setq _yawSpeed __yawSpeed)) _yawSpeed)
  (:bms
   (&rest __bms)
   (if (keywordp (car __bms))
       (send* _bms __bms)
     (progn
       (if __bms (setq _bms (car __bms)))
       _bms)))
  (:led
   (&rest __led)
   (if (keywordp (car __led))
       (send* _led __led)
     (progn
       (if __led (setq _led (car __led)))
       _led)))
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
    ;; uint8 _mode
    1
    ;; uint8 _gaitType
    1
    ;; uint8 _speedLevel
    1
    ;; float32 _footRaiseHeight
    4
    ;; float32 _bodyHeight
    4
    ;; float32[2] _position
    (* 4    2)
    ;; float32[3] _euler
    (* 4    3)
    ;; float32[2] _velocity
    (* 4    2)
    ;; float32 _yawSpeed
    4
    ;; unitree_legged_msgs/BmsCmd _bms
    (send _bms :serialization-length)
    ;; unitree_legged_msgs/LED[4] _led
    (apply #'+ (send-all _led :serialization-length))
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
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _gaitType
       (write-byte _gaitType s)
     ;; uint8 _speedLevel
       (write-byte _speedLevel s)
     ;; float32 _footRaiseHeight
       (sys::poke _footRaiseHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bodyHeight
       (sys::poke _bodyHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[2] _position
     (dotimes (i 2)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _euler
     (dotimes (i 3)
       (sys::poke (elt _euler i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _velocity
     (dotimes (i 2)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _yawSpeed
       (sys::poke _yawSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; unitree_legged_msgs/BmsCmd _bms
       (send _bms :serialize s)
     ;; unitree_legged_msgs/LED[4] _led
     (dolist (elem _led)
       (send elem :serialize s)
       )
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
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gaitType
     (setq _gaitType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speedLevel
     (setq _speedLevel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _footRaiseHeight
     (setq _footRaiseHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bodyHeight
     (setq _bodyHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[2] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _euler
   (dotimes (i (length _euler))
     (setf (elt _euler i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _yawSpeed
     (setq _yawSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; unitree_legged_msgs/BmsCmd _bms
     (send _bms :deserialize buf ptr-) (incf ptr- (send _bms :serialization-length))
   ;; unitree_legged_msgs/LED[4] _led
   (dotimes (i 4)
     (send (elt _led i) :deserialize buf ptr-) (incf ptr- (send (elt _led i) :serialization-length))
     )
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

(setf (get unitree_legged_msgs::HighCmd :md5sum-) "b4825051cf66ae8183b54c57dba16b66")
(setf (get unitree_legged_msgs::HighCmd :datatype-) "unitree_legged_msgs/HighCmd")
(setf (get unitree_legged_msgs::HighCmd :definition-)
      "uint8[2] head
uint8 levelFlag
uint8 frameReserve

uint32[2] SN
uint32[2] version
uint16 bandWidth
uint8 mode 

uint8 gaitType		   
uint8 speedLevel			   
float32 footRaiseHeight		   
float32 bodyHeight	   
float32[2] position 
float32[3] euler	   
float32[2] velocity 
float32 yawSpeed				   
BmsCmd bms
LED[4] led
uint8[40] wirelessRemote
uint32 reserve

uint32 crc
================================================================================
MSG: unitree_legged_msgs/BmsCmd
uint8 off            # off 0xA5
uint8[3] reserve
================================================================================
MSG: unitree_legged_msgs/LED
uint8 r
uint8 g
uint8 b
")



(provide :unitree_legged_msgs/HighCmd "b4825051cf66ae8183b54c57dba16b66")


