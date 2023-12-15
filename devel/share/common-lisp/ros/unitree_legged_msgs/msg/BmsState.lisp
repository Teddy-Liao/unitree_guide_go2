; Auto-generated. Do not edit!


(cl:in-package unitree_legged_msgs-msg)


;//! \htmlinclude BmsState.msg.html

(cl:defclass <BmsState> (roslisp-msg-protocol:ros-message)
  ((version_h
    :reader version_h
    :initarg :version_h
    :type cl:fixnum
    :initform 0)
   (version_l
    :reader version_l
    :initarg :version_l
    :type cl:fixnum
    :initform 0)
   (bms_status
    :reader bms_status
    :initarg :bms_status
    :type cl:fixnum
    :initform 0)
   (SOC
    :reader SOC
    :initarg :SOC
    :type cl:fixnum
    :initform 0)
   (current
    :reader current
    :initarg :current
    :type cl:integer
    :initform 0)
   (cycle
    :reader cycle
    :initarg :cycle
    :type cl:fixnum
    :initform 0)
   (BQ_NTC
    :reader BQ_NTC
    :initarg :BQ_NTC
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (MCU_NTC
    :reader MCU_NTC
    :initarg :MCU_NTC
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 2 :element-type 'cl:fixnum :initial-element 0))
   (cell_vol
    :reader cell_vol
    :initarg :cell_vol
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 10 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass BmsState (<BmsState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BmsState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BmsState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unitree_legged_msgs-msg:<BmsState> is deprecated: use unitree_legged_msgs-msg:BmsState instead.")))

(cl:ensure-generic-function 'version_h-val :lambda-list '(m))
(cl:defmethod version_h-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:version_h-val is deprecated.  Use unitree_legged_msgs-msg:version_h instead.")
  (version_h m))

(cl:ensure-generic-function 'version_l-val :lambda-list '(m))
(cl:defmethod version_l-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:version_l-val is deprecated.  Use unitree_legged_msgs-msg:version_l instead.")
  (version_l m))

(cl:ensure-generic-function 'bms_status-val :lambda-list '(m))
(cl:defmethod bms_status-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bms_status-val is deprecated.  Use unitree_legged_msgs-msg:bms_status instead.")
  (bms_status m))

(cl:ensure-generic-function 'SOC-val :lambda-list '(m))
(cl:defmethod SOC-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:SOC-val is deprecated.  Use unitree_legged_msgs-msg:SOC instead.")
  (SOC m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:current-val is deprecated.  Use unitree_legged_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'cycle-val :lambda-list '(m))
(cl:defmethod cycle-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:cycle-val is deprecated.  Use unitree_legged_msgs-msg:cycle instead.")
  (cycle m))

(cl:ensure-generic-function 'BQ_NTC-val :lambda-list '(m))
(cl:defmethod BQ_NTC-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:BQ_NTC-val is deprecated.  Use unitree_legged_msgs-msg:BQ_NTC instead.")
  (BQ_NTC m))

(cl:ensure-generic-function 'MCU_NTC-val :lambda-list '(m))
(cl:defmethod MCU_NTC-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:MCU_NTC-val is deprecated.  Use unitree_legged_msgs-msg:MCU_NTC instead.")
  (MCU_NTC m))

(cl:ensure-generic-function 'cell_vol-val :lambda-list '(m))
(cl:defmethod cell_vol-val ((m <BmsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:cell_vol-val is deprecated.  Use unitree_legged_msgs-msg:cell_vol instead.")
  (cell_vol m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BmsState>) ostream)
  "Serializes a message object of type '<BmsState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_h)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bms_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOC)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cycle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cycle)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'BQ_NTC))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'MCU_NTC))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'cell_vol))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BmsState>) istream)
  "Deserializes a message object of type '<BmsState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_h)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'version_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bms_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOC)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cycle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cycle)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'BQ_NTC) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'BQ_NTC)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'MCU_NTC) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'MCU_NTC)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'cell_vol) (cl:make-array 10))
  (cl:let ((vals (cl:slot-value msg 'cell_vol)))
    (cl:dotimes (i 10)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BmsState>)))
  "Returns string type for a message object of type '<BmsState>"
  "unitree_legged_msgs/BmsState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BmsState)))
  "Returns string type for a message object of type 'BmsState"
  "unitree_legged_msgs/BmsState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BmsState>)))
  "Returns md5sum for a message object of type '<BmsState>"
  "8e007c660c590388bca7c2464d80df54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BmsState)))
  "Returns md5sum for a message object of type 'BmsState"
  "8e007c660c590388bca7c2464d80df54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BmsState>)))
  "Returns full string definition for message of type '<BmsState>"
  (cl:format cl:nil "uint8 version_h~%uint8 version_l~%uint8 bms_status~%uint8 SOC                  # SOC 0-100%~%int32 current              # mA~%uint16 cycle~%int8[2] BQ_NTC             # x1 degrees centigrade~%int8[2] MCU_NTC            # x1 degrees centigrade~%uint16[10] cell_vol        # cell voltage mV~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BmsState)))
  "Returns full string definition for message of type 'BmsState"
  (cl:format cl:nil "uint8 version_h~%uint8 version_l~%uint8 bms_status~%uint8 SOC                  # SOC 0-100%~%int32 current              # mA~%uint16 cycle~%int8[2] BQ_NTC             # x1 degrees centigrade~%int8[2] MCU_NTC            # x1 degrees centigrade~%uint16[10] cell_vol        # cell voltage mV~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BmsState>))
  (cl:+ 0
     1
     1
     1
     1
     4
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'BQ_NTC) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'MCU_NTC) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_vol) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BmsState>))
  "Converts a ROS message object to a list"
  (cl:list 'BmsState
    (cl:cons ':version_h (version_h msg))
    (cl:cons ':version_l (version_l msg))
    (cl:cons ':bms_status (bms_status msg))
    (cl:cons ':SOC (SOC msg))
    (cl:cons ':current (current msg))
    (cl:cons ':cycle (cycle msg))
    (cl:cons ':BQ_NTC (BQ_NTC msg))
    (cl:cons ':MCU_NTC (MCU_NTC msg))
    (cl:cons ':cell_vol (cell_vol msg))
))
