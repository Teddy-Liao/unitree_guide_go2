; Auto-generated. Do not edit!


(cl:in-package unitree_legged_msgs-msg)


;//! \htmlinclude HighState.msg.html

(cl:defclass <HighState> (roslisp-msg-protocol:ros-message)
  ((head
    :reader head
    :initarg :head
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (levelFlag
    :reader levelFlag
    :initarg :levelFlag
    :type cl:fixnum
    :initform 0)
   (frameReserve
    :reader frameReserve
    :initarg :frameReserve
    :type cl:fixnum
    :initform 0)
   (SN
    :reader SN
    :initarg :SN
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0))
   (version
    :reader version
    :initarg :version
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0))
   (bandWidth
    :reader bandWidth
    :initarg :bandWidth
    :type cl:fixnum
    :initform 0)
   (imu
    :reader imu
    :initarg :imu
    :type unitree_legged_msgs-msg:IMU
    :initform (cl:make-instance 'unitree_legged_msgs-msg:IMU))
   (motorState
    :reader motorState
    :initarg :motorState
    :type (cl:vector unitree_legged_msgs-msg:MotorState)
   :initform (cl:make-array 20 :element-type 'unitree_legged_msgs-msg:MotorState :initial-element (cl:make-instance 'unitree_legged_msgs-msg:MotorState)))
   (bms
    :reader bms
    :initarg :bms
    :type unitree_legged_msgs-msg:BmsState
    :initform (cl:make-instance 'unitree_legged_msgs-msg:BmsState))
   (footForce
    :reader footForce
    :initarg :footForce
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (footForceEst
    :reader footForceEst
    :initarg :footForceEst
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0)
   (gaitType
    :reader gaitType
    :initarg :gaitType
    :type cl:fixnum
    :initform 0)
   (footRaiseHeight
    :reader footRaiseHeight
    :initarg :footRaiseHeight
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (bodyHeight
    :reader bodyHeight
    :initarg :bodyHeight
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (yawSpeed
    :reader yawSpeed
    :initarg :yawSpeed
    :type cl:float
    :initform 0.0)
   (rangeObstacle
    :reader rangeObstacle
    :initarg :rangeObstacle
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (footPosition2Body
    :reader footPosition2Body
    :initarg :footPosition2Body
    :type (cl:vector unitree_legged_msgs-msg:Cartesian)
   :initform (cl:make-array 4 :element-type 'unitree_legged_msgs-msg:Cartesian :initial-element (cl:make-instance 'unitree_legged_msgs-msg:Cartesian)))
   (footSpeed2Body
    :reader footSpeed2Body
    :initarg :footSpeed2Body
    :type (cl:vector unitree_legged_msgs-msg:Cartesian)
   :initform (cl:make-array 4 :element-type 'unitree_legged_msgs-msg:Cartesian :initial-element (cl:make-instance 'unitree_legged_msgs-msg:Cartesian)))
   (wirelessRemote
    :reader wirelessRemote
    :initarg :wirelessRemote
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 40 :element-type 'cl:fixnum :initial-element 0))
   (reserve
    :reader reserve
    :initarg :reserve
    :type cl:integer
    :initform 0)
   (crc
    :reader crc
    :initarg :crc
    :type cl:integer
    :initform 0))
)

(cl:defclass HighState (<HighState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unitree_legged_msgs-msg:<HighState> is deprecated: use unitree_legged_msgs-msg:HighState instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:head-val is deprecated.  Use unitree_legged_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:levelFlag-val is deprecated.  Use unitree_legged_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'frameReserve-val :lambda-list '(m))
(cl:defmethod frameReserve-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:frameReserve-val is deprecated.  Use unitree_legged_msgs-msg:frameReserve instead.")
  (frameReserve m))

(cl:ensure-generic-function 'SN-val :lambda-list '(m))
(cl:defmethod SN-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:SN-val is deprecated.  Use unitree_legged_msgs-msg:SN instead.")
  (SN m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:version-val is deprecated.  Use unitree_legged_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'bandWidth-val :lambda-list '(m))
(cl:defmethod bandWidth-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bandWidth-val is deprecated.  Use unitree_legged_msgs-msg:bandWidth instead.")
  (bandWidth m))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:imu-val is deprecated.  Use unitree_legged_msgs-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'motorState-val :lambda-list '(m))
(cl:defmethod motorState-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:motorState-val is deprecated.  Use unitree_legged_msgs-msg:motorState instead.")
  (motorState m))

(cl:ensure-generic-function 'bms-val :lambda-list '(m))
(cl:defmethod bms-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bms-val is deprecated.  Use unitree_legged_msgs-msg:bms instead.")
  (bms m))

(cl:ensure-generic-function 'footForce-val :lambda-list '(m))
(cl:defmethod footForce-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:footForce-val is deprecated.  Use unitree_legged_msgs-msg:footForce instead.")
  (footForce m))

(cl:ensure-generic-function 'footForceEst-val :lambda-list '(m))
(cl:defmethod footForceEst-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:footForceEst-val is deprecated.  Use unitree_legged_msgs-msg:footForceEst instead.")
  (footForceEst m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:mode-val is deprecated.  Use unitree_legged_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:progress-val is deprecated.  Use unitree_legged_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'gaitType-val :lambda-list '(m))
(cl:defmethod gaitType-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:gaitType-val is deprecated.  Use unitree_legged_msgs-msg:gaitType instead.")
  (gaitType m))

(cl:ensure-generic-function 'footRaiseHeight-val :lambda-list '(m))
(cl:defmethod footRaiseHeight-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:footRaiseHeight-val is deprecated.  Use unitree_legged_msgs-msg:footRaiseHeight instead.")
  (footRaiseHeight m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:position-val is deprecated.  Use unitree_legged_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'bodyHeight-val :lambda-list '(m))
(cl:defmethod bodyHeight-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bodyHeight-val is deprecated.  Use unitree_legged_msgs-msg:bodyHeight instead.")
  (bodyHeight m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:velocity-val is deprecated.  Use unitree_legged_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'yawSpeed-val :lambda-list '(m))
(cl:defmethod yawSpeed-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:yawSpeed-val is deprecated.  Use unitree_legged_msgs-msg:yawSpeed instead.")
  (yawSpeed m))

(cl:ensure-generic-function 'rangeObstacle-val :lambda-list '(m))
(cl:defmethod rangeObstacle-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:rangeObstacle-val is deprecated.  Use unitree_legged_msgs-msg:rangeObstacle instead.")
  (rangeObstacle m))

(cl:ensure-generic-function 'footPosition2Body-val :lambda-list '(m))
(cl:defmethod footPosition2Body-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:footPosition2Body-val is deprecated.  Use unitree_legged_msgs-msg:footPosition2Body instead.")
  (footPosition2Body m))

(cl:ensure-generic-function 'footSpeed2Body-val :lambda-list '(m))
(cl:defmethod footSpeed2Body-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:footSpeed2Body-val is deprecated.  Use unitree_legged_msgs-msg:footSpeed2Body instead.")
  (footSpeed2Body m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:wirelessRemote-val is deprecated.  Use unitree_legged_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'reserve-val :lambda-list '(m))
(cl:defmethod reserve-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:reserve-val is deprecated.  Use unitree_legged_msgs-msg:reserve instead.")
  (reserve m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <HighState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:crc-val is deprecated.  Use unitree_legged_msgs-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighState>) ostream)
  "Serializes a message object of type '<HighState>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'head))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameReserve)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'SN))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bandWidth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bandWidth)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorState))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bms) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'footForce))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'footForceEst))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gaitType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'footRaiseHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bodyHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yawSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rangeObstacle))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footPosition2Body))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footSpeed2Body))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'wirelessRemote))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserve)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserve)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserve)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserve)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighState>) istream)
  "Deserializes a message object of type '<HighState>"
  (cl:setf (cl:slot-value msg 'head) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'head)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'levelFlag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frameReserve)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'SN) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'SN)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'version) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'version)))
    (cl:dotimes (i 2)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bandWidth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bandWidth)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  (cl:setf (cl:slot-value msg 'motorState) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'motorState)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:make-instance 'unitree_legged_msgs-msg:MotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bms) istream)
  (cl:setf (cl:slot-value msg 'footForce) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footForce)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'footForceEst) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footForceEst)))
    (cl:dotimes (i 4)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gaitType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'footRaiseHeight) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bodyHeight) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawSpeed) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'rangeObstacle) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'rangeObstacle)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'footPosition2Body) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footPosition2Body)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'unitree_legged_msgs-msg:Cartesian))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'footSpeed2Body) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'footSpeed2Body)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:make-instance 'unitree_legged_msgs-msg:Cartesian))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'wirelessRemote) (cl:make-array 40))
  (cl:let ((vals (cl:slot-value msg 'wirelessRemote)))
    (cl:dotimes (i 40)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserve)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserve)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserve)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserve)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'crc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'crc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighState>)))
  "Returns string type for a message object of type '<HighState>"
  "unitree_legged_msgs/HighState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighState)))
  "Returns string type for a message object of type 'HighState"
  "unitree_legged_msgs/HighState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighState>)))
  "Returns md5sum for a message object of type '<HighState>"
  "7904f43019dadf7640d573b4c14b9066")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighState)))
  "Returns md5sum for a message object of type 'HighState"
  "7904f43019dadf7640d573b4c14b9066")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighState>)))
  "Returns full string definition for message of type '<HighState>"
  (cl:format cl:nil "~%uint8[2] head~%uint8 levelFlag~%uint8 frameReserve~%~%uint32[2] SN~%uint32[2] version~%uint16 bandWidth~%IMU imu~%MotorState[20] motorState~%BmsState bms~%int16[4] footForce~%int16[4] footForceEst~%uint8 mode~%float32 progress~%uint8 gaitType		   ~%float32 footRaiseHeight		  ~%float32[3] position ~%float32 bodyHeight			  ~%float32[3] velocity ~%float32 yawSpeed				   ~%float32[4] rangeObstacle~%Cartesian[4] footPosition2Body ~%Cartesian[4] footSpeed2Body	~%uint8[40] wirelessRemote~%uint32 reserve~%~%uint32 crc~%================================================================================~%MSG: unitree_legged_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] accelerometer~%float32[3] rpy~%int8 temperature~%================================================================================~%MSG: unitree_legged_msgs/MotorState~%uint8 mode           # motor current mode ~%float32 q            # motor current position（rad）~%float32 dq           # motor current speed（rad/s）~%float32 ddq          # motor current speed（rad/s）~%float32 tauEst       # current estimated output torque（N*m）~%float32 q_raw        # motor current position（rad）~%float32 dq_raw       # motor current speed（rad/s）~%float32 ddq_raw      # motor current speed（rad/s）~%int8 temperature     # motor temperature（slow conduction of temperature leads to lag）~%uint32[2] reserve~%================================================================================~%MSG: unitree_legged_msgs/BmsState~%uint8 version_h~%uint8 version_l~%uint8 bms_status~%uint8 SOC                  # SOC 0-100%~%int32 current              # mA~%uint16 cycle~%int8[2] BQ_NTC             # x1 degrees centigrade~%int8[2] MCU_NTC            # x1 degrees centigrade~%uint16[10] cell_vol        # cell voltage mV~%================================================================================~%MSG: unitree_legged_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighState)))
  "Returns full string definition for message of type 'HighState"
  (cl:format cl:nil "~%uint8[2] head~%uint8 levelFlag~%uint8 frameReserve~%~%uint32[2] SN~%uint32[2] version~%uint16 bandWidth~%IMU imu~%MotorState[20] motorState~%BmsState bms~%int16[4] footForce~%int16[4] footForceEst~%uint8 mode~%float32 progress~%uint8 gaitType		   ~%float32 footRaiseHeight		  ~%float32[3] position ~%float32 bodyHeight			  ~%float32[3] velocity ~%float32 yawSpeed				   ~%float32[4] rangeObstacle~%Cartesian[4] footPosition2Body ~%Cartesian[4] footSpeed2Body	~%uint8[40] wirelessRemote~%uint32 reserve~%~%uint32 crc~%================================================================================~%MSG: unitree_legged_msgs/IMU~%float32[4] quaternion~%float32[3] gyroscope~%float32[3] accelerometer~%float32[3] rpy~%int8 temperature~%================================================================================~%MSG: unitree_legged_msgs/MotorState~%uint8 mode           # motor current mode ~%float32 q            # motor current position（rad）~%float32 dq           # motor current speed（rad/s）~%float32 ddq          # motor current speed（rad/s）~%float32 tauEst       # current estimated output torque（N*m）~%float32 q_raw        # motor current position（rad）~%float32 dq_raw       # motor current speed（rad/s）~%float32 ddq_raw      # motor current speed（rad/s）~%int8 temperature     # motor temperature（slow conduction of temperature leads to lag）~%uint32[2] reserve~%================================================================================~%MSG: unitree_legged_msgs/BmsState~%uint8 version_h~%uint8 version_l~%uint8 bms_status~%uint8 SOC                  # SOC 0-100%~%int32 current              # mA~%uint16 cycle~%int8[2] BQ_NTC             # x1 degrees centigrade~%int8[2] MCU_NTC            # x1 degrees centigrade~%uint16[10] cell_vol        # cell voltage mV~%================================================================================~%MSG: unitree_legged_msgs/Cartesian~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighState>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'head) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'SN) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'version) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motorState) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bms))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footForce) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footForceEst) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     1
     4
     1
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rangeObstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footPosition2Body) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'footSpeed2Body) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighState>))
  "Converts a ROS message object to a list"
  (cl:list 'HighState
    (cl:cons ':head (head msg))
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':frameReserve (frameReserve msg))
    (cl:cons ':SN (SN msg))
    (cl:cons ':version (version msg))
    (cl:cons ':bandWidth (bandWidth msg))
    (cl:cons ':imu (imu msg))
    (cl:cons ':motorState (motorState msg))
    (cl:cons ':bms (bms msg))
    (cl:cons ':footForce (footForce msg))
    (cl:cons ':footForceEst (footForceEst msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':gaitType (gaitType msg))
    (cl:cons ':footRaiseHeight (footRaiseHeight msg))
    (cl:cons ':position (position msg))
    (cl:cons ':bodyHeight (bodyHeight msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':yawSpeed (yawSpeed msg))
    (cl:cons ':rangeObstacle (rangeObstacle msg))
    (cl:cons ':footPosition2Body (footPosition2Body msg))
    (cl:cons ':footSpeed2Body (footSpeed2Body msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':reserve (reserve msg))
    (cl:cons ':crc (crc msg))
))
