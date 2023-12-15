;; Auto-generated. Do not edit!


(when (boundp 'unitree_legged_msgs::HighState)
  (if (not (find-package "UNITREE_LEGGED_MSGS"))
    (make-package "UNITREE_LEGGED_MSGS"))
  (shadow 'HighState (find-package "UNITREE_LEGGED_MSGS")))
(unless (find-package "UNITREE_LEGGED_MSGS::HIGHSTATE")
  (make-package "UNITREE_LEGGED_MSGS::HIGHSTATE"))

(in-package "ROS")
;;//! \htmlinclude HighState.msg.html


(defclass unitree_legged_msgs::HighState
  :super ros::object
  :slots (_head _levelFlag _frameReserve _SN _version _bandWidth _imu _motorState _bms _footForce _footForceEst _mode _progress _gaitType _footRaiseHeight _position _bodyHeight _velocity _yawSpeed _rangeObstacle _footPosition2Body _footSpeed2Body _wirelessRemote _reserve _crc ))

(defmethod unitree_legged_msgs::HighState
  (:init
   (&key
    ((:head __head) (make-array 2 :initial-element 0 :element-type :char))
    ((:levelFlag __levelFlag) 0)
    ((:frameReserve __frameReserve) 0)
    ((:SN __SN) (make-array 2 :initial-element 0 :element-type :integer))
    ((:version __version) (make-array 2 :initial-element 0 :element-type :integer))
    ((:bandWidth __bandWidth) 0)
    ((:imu __imu) (instance unitree_legged_msgs::IMU :init))
    ((:motorState __motorState) (let (r) (dotimes (i 20) (push (instance unitree_legged_msgs::MotorState :init) r)) r))
    ((:bms __bms) (instance unitree_legged_msgs::BmsState :init))
    ((:footForce __footForce) (make-array 4 :initial-element 0 :element-type :integer))
    ((:footForceEst __footForceEst) (make-array 4 :initial-element 0 :element-type :integer))
    ((:mode __mode) 0)
    ((:progress __progress) 0.0)
    ((:gaitType __gaitType) 0)
    ((:footRaiseHeight __footRaiseHeight) 0.0)
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:bodyHeight __bodyHeight) 0.0)
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:yawSpeed __yawSpeed) 0.0)
    ((:rangeObstacle __rangeObstacle) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:footPosition2Body __footPosition2Body) (let (r) (dotimes (i 4) (push (instance unitree_legged_msgs::Cartesian :init) r)) r))
    ((:footSpeed2Body __footSpeed2Body) (let (r) (dotimes (i 4) (push (instance unitree_legged_msgs::Cartesian :init) r)) r))
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
   (setq _imu __imu)
   (setq _motorState __motorState)
   (setq _bms __bms)
   (setq _footForce __footForce)
   (setq _footForceEst __footForceEst)
   (setq _mode (round __mode))
   (setq _progress (float __progress))
   (setq _gaitType (round __gaitType))
   (setq _footRaiseHeight (float __footRaiseHeight))
   (setq _position __position)
   (setq _bodyHeight (float __bodyHeight))
   (setq _velocity __velocity)
   (setq _yawSpeed (float __yawSpeed))
   (setq _rangeObstacle __rangeObstacle)
   (setq _footPosition2Body __footPosition2Body)
   (setq _footSpeed2Body __footSpeed2Body)
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
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:motorState
   (&rest __motorState)
   (if (keywordp (car __motorState))
       (send* _motorState __motorState)
     (progn
       (if __motorState (setq _motorState (car __motorState)))
       _motorState)))
  (:bms
   (&rest __bms)
   (if (keywordp (car __bms))
       (send* _bms __bms)
     (progn
       (if __bms (setq _bms (car __bms)))
       _bms)))
  (:footForce
   (&optional __footForce)
   (if __footForce (setq _footForce __footForce)) _footForce)
  (:footForceEst
   (&optional __footForceEst)
   (if __footForceEst (setq _footForceEst __footForceEst)) _footForceEst)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:gaitType
   (&optional __gaitType)
   (if __gaitType (setq _gaitType __gaitType)) _gaitType)
  (:footRaiseHeight
   (&optional __footRaiseHeight)
   (if __footRaiseHeight (setq _footRaiseHeight __footRaiseHeight)) _footRaiseHeight)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:bodyHeight
   (&optional __bodyHeight)
   (if __bodyHeight (setq _bodyHeight __bodyHeight)) _bodyHeight)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:yawSpeed
   (&optional __yawSpeed)
   (if __yawSpeed (setq _yawSpeed __yawSpeed)) _yawSpeed)
  (:rangeObstacle
   (&optional __rangeObstacle)
   (if __rangeObstacle (setq _rangeObstacle __rangeObstacle)) _rangeObstacle)
  (:footPosition2Body
   (&rest __footPosition2Body)
   (if (keywordp (car __footPosition2Body))
       (send* _footPosition2Body __footPosition2Body)
     (progn
       (if __footPosition2Body (setq _footPosition2Body (car __footPosition2Body)))
       _footPosition2Body)))
  (:footSpeed2Body
   (&rest __footSpeed2Body)
   (if (keywordp (car __footSpeed2Body))
       (send* _footSpeed2Body __footSpeed2Body)
     (progn
       (if __footSpeed2Body (setq _footSpeed2Body (car __footSpeed2Body)))
       _footSpeed2Body)))
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
    ;; unitree_legged_msgs/IMU _imu
    (send _imu :serialization-length)
    ;; unitree_legged_msgs/MotorState[20] _motorState
    (apply #'+ (send-all _motorState :serialization-length))
    ;; unitree_legged_msgs/BmsState _bms
    (send _bms :serialization-length)
    ;; int16[4] _footForce
    (* 2    4)
    ;; int16[4] _footForceEst
    (* 2    4)
    ;; uint8 _mode
    1
    ;; float32 _progress
    4
    ;; uint8 _gaitType
    1
    ;; float32 _footRaiseHeight
    4
    ;; float32[3] _position
    (* 4    3)
    ;; float32 _bodyHeight
    4
    ;; float32[3] _velocity
    (* 4    3)
    ;; float32 _yawSpeed
    4
    ;; float32[4] _rangeObstacle
    (* 4    4)
    ;; unitree_legged_msgs/Cartesian[4] _footPosition2Body
    (apply #'+ (send-all _footPosition2Body :serialization-length))
    ;; unitree_legged_msgs/Cartesian[4] _footSpeed2Body
    (apply #'+ (send-all _footSpeed2Body :serialization-length))
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
     ;; unitree_legged_msgs/IMU _imu
       (send _imu :serialize s)
     ;; unitree_legged_msgs/MotorState[20] _motorState
     (dolist (elem _motorState)
       (send elem :serialize s)
       )
     ;; unitree_legged_msgs/BmsState _bms
       (send _bms :serialize s)
     ;; int16[4] _footForce
     (dotimes (i 4)
       (write-word (elt _footForce i) s)
       )
     ;; int16[4] _footForceEst
     (dotimes (i 4)
       (write-word (elt _footForceEst i) s)
       )
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gaitType
       (write-byte _gaitType s)
     ;; float32 _footRaiseHeight
       (sys::poke _footRaiseHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _bodyHeight
       (sys::poke _bodyHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _yawSpeed
       (sys::poke _yawSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[4] _rangeObstacle
     (dotimes (i 4)
       (sys::poke (elt _rangeObstacle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; unitree_legged_msgs/Cartesian[4] _footPosition2Body
     (dolist (elem _footPosition2Body)
       (send elem :serialize s)
       )
     ;; unitree_legged_msgs/Cartesian[4] _footSpeed2Body
     (dolist (elem _footSpeed2Body)
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
   ;; unitree_legged_msgs/IMU _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; unitree_legged_msgs/MotorState[20] _motorState
   (dotimes (i 20)
     (send (elt _motorState i) :deserialize buf ptr-) (incf ptr- (send (elt _motorState i) :serialization-length))
     )
   ;; unitree_legged_msgs/BmsState _bms
     (send _bms :deserialize buf ptr-) (incf ptr- (send _bms :serialization-length))
   ;; int16[4] _footForce
   (dotimes (i (length _footForce))
     (setf (elt _footForce i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; int16[4] _footForceEst
   (dotimes (i (length _footForceEst))
     (setf (elt _footForceEst i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gaitType
     (setq _gaitType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _footRaiseHeight
     (setq _footRaiseHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _bodyHeight
     (setq _bodyHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _yawSpeed
     (setq _yawSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[4] _rangeObstacle
   (dotimes (i (length _rangeObstacle))
     (setf (elt _rangeObstacle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; unitree_legged_msgs/Cartesian[4] _footPosition2Body
   (dotimes (i 4)
     (send (elt _footPosition2Body i) :deserialize buf ptr-) (incf ptr- (send (elt _footPosition2Body i) :serialization-length))
     )
   ;; unitree_legged_msgs/Cartesian[4] _footSpeed2Body
   (dotimes (i 4)
     (send (elt _footSpeed2Body i) :deserialize buf ptr-) (incf ptr- (send (elt _footSpeed2Body i) :serialization-length))
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

(setf (get unitree_legged_msgs::HighState :md5sum-) "7904f43019dadf7640d573b4c14b9066")
(setf (get unitree_legged_msgs::HighState :datatype-) "unitree_legged_msgs/HighState")
(setf (get unitree_legged_msgs::HighState :definition-)
      "
uint8[2] head
uint8 levelFlag
uint8 frameReserve

uint32[2] SN
uint32[2] version
uint16 bandWidth
IMU imu
MotorState[20] motorState
BmsState bms
int16[4] footForce
int16[4] footForceEst
uint8 mode
float32 progress
uint8 gaitType		   
float32 footRaiseHeight		  
float32[3] position 
float32 bodyHeight			  
float32[3] velocity 
float32 yawSpeed				   
float32[4] rangeObstacle
Cartesian[4] footPosition2Body 
Cartesian[4] footSpeed2Body	
uint8[40] wirelessRemote
uint32 reserve

uint32 crc
================================================================================
MSG: unitree_legged_msgs/IMU
float32[4] quaternion
float32[3] gyroscope
float32[3] accelerometer
float32[3] rpy
int8 temperature
================================================================================
MSG: unitree_legged_msgs/MotorState
uint8 mode           # motor current mode 
float32 q            # motor current position（rad）
float32 dq           # motor current speed（rad/s）
float32 ddq          # motor current speed（rad/s）
float32 tauEst       # current estimated output torque（N*m）
float32 q_raw        # motor current position（rad）
float32 dq_raw       # motor current speed（rad/s）
float32 ddq_raw      # motor current speed（rad/s）
int8 temperature     # motor temperature（slow conduction of temperature leads to lag）
uint32[2] reserve
================================================================================
MSG: unitree_legged_msgs/BmsState
uint8 version_h
uint8 version_l
uint8 bms_status
uint8 SOC                  # SOC 0-100%
int32 current              # mA
uint16 cycle
int8[2] BQ_NTC             # x1 degrees centigrade
int8[2] MCU_NTC            # x1 degrees centigrade
uint16[10] cell_vol        # cell voltage mV
================================================================================
MSG: unitree_legged_msgs/Cartesian
float32 x
float32 y
float32 z
")



(provide :unitree_legged_msgs/HighState "7904f43019dadf7640d573b4c14b9066")


