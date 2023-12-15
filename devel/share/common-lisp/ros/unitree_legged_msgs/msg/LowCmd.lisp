; Auto-generated. Do not edit!


(cl:in-package unitree_legged_msgs-msg)


;//! \htmlinclude LowCmd.msg.html

(cl:defclass <LowCmd> (roslisp-msg-protocol:ros-message)
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
   (motorCmd
    :reader motorCmd
    :initarg :motorCmd
    :type (cl:vector unitree_legged_msgs-msg:MotorCmd)
   :initform (cl:make-array 20 :element-type 'unitree_legged_msgs-msg:MotorCmd :initial-element (cl:make-instance 'unitree_legged_msgs-msg:MotorCmd)))
   (bms
    :reader bms
    :initarg :bms
    :type unitree_legged_msgs-msg:BmsCmd
    :initform (cl:make-instance 'unitree_legged_msgs-msg:BmsCmd))
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

(cl:defclass LowCmd (<LowCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LowCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LowCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unitree_legged_msgs-msg:<LowCmd> is deprecated: use unitree_legged_msgs-msg:LowCmd instead.")))

(cl:ensure-generic-function 'head-val :lambda-list '(m))
(cl:defmethod head-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:head-val is deprecated.  Use unitree_legged_msgs-msg:head instead.")
  (head m))

(cl:ensure-generic-function 'levelFlag-val :lambda-list '(m))
(cl:defmethod levelFlag-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:levelFlag-val is deprecated.  Use unitree_legged_msgs-msg:levelFlag instead.")
  (levelFlag m))

(cl:ensure-generic-function 'frameReserve-val :lambda-list '(m))
(cl:defmethod frameReserve-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:frameReserve-val is deprecated.  Use unitree_legged_msgs-msg:frameReserve instead.")
  (frameReserve m))

(cl:ensure-generic-function 'SN-val :lambda-list '(m))
(cl:defmethod SN-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:SN-val is deprecated.  Use unitree_legged_msgs-msg:SN instead.")
  (SN m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:version-val is deprecated.  Use unitree_legged_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'bandWidth-val :lambda-list '(m))
(cl:defmethod bandWidth-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bandWidth-val is deprecated.  Use unitree_legged_msgs-msg:bandWidth instead.")
  (bandWidth m))

(cl:ensure-generic-function 'motorCmd-val :lambda-list '(m))
(cl:defmethod motorCmd-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:motorCmd-val is deprecated.  Use unitree_legged_msgs-msg:motorCmd instead.")
  (motorCmd m))

(cl:ensure-generic-function 'bms-val :lambda-list '(m))
(cl:defmethod bms-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:bms-val is deprecated.  Use unitree_legged_msgs-msg:bms instead.")
  (bms m))

(cl:ensure-generic-function 'wirelessRemote-val :lambda-list '(m))
(cl:defmethod wirelessRemote-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:wirelessRemote-val is deprecated.  Use unitree_legged_msgs-msg:wirelessRemote instead.")
  (wirelessRemote m))

(cl:ensure-generic-function 'reserve-val :lambda-list '(m))
(cl:defmethod reserve-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:reserve-val is deprecated.  Use unitree_legged_msgs-msg:reserve instead.")
  (reserve m))

(cl:ensure-generic-function 'crc-val :lambda-list '(m))
(cl:defmethod crc-val ((m <LowCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:crc-val is deprecated.  Use unitree_legged_msgs-msg:crc instead.")
  (crc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LowCmd>) ostream)
  "Serializes a message object of type '<LowCmd>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorCmd))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bms) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LowCmd>) istream)
  "Deserializes a message object of type '<LowCmd>"
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
  (cl:setf (cl:slot-value msg 'motorCmd) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'motorCmd)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:make-instance 'unitree_legged_msgs-msg:MotorCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bms) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LowCmd>)))
  "Returns string type for a message object of type '<LowCmd>"
  "unitree_legged_msgs/LowCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LowCmd)))
  "Returns string type for a message object of type 'LowCmd"
  "unitree_legged_msgs/LowCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LowCmd>)))
  "Returns md5sum for a message object of type '<LowCmd>"
  "7a33b01032a894134df9b65b5cd356d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LowCmd)))
  "Returns md5sum for a message object of type 'LowCmd"
  "7a33b01032a894134df9b65b5cd356d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LowCmd>)))
  "Returns full string definition for message of type '<LowCmd>"
  (cl:format cl:nil "~%uint8[2] head~%uint8 levelFlag~%uint8 frameReserve~%~%uint32[2] SN~%uint32[2] version~%uint16 bandWidth~%MotorCmd[20] motorCmd~%BmsCmd bms~%uint8[40] wirelessRemote~%uint32 reserve~%~%uint32 crc~%================================================================================~%MSG: unitree_legged_msgs/MotorCmd~%uint8 mode           # motor target mode~%float32 q            # motor target position~%float32 dq           # motor target velocity~%float32 tau          # motor target torque~%float32 Kp           # motor spring stiffness coefficient~%float32 Kd           # motor damper coefficient~%uint32[3] reserve    # motor target torque~%================================================================================~%MSG: unitree_legged_msgs/BmsCmd~%uint8 off            # off 0xA5~%uint8[3] reserve~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LowCmd)))
  "Returns full string definition for message of type 'LowCmd"
  (cl:format cl:nil "~%uint8[2] head~%uint8 levelFlag~%uint8 frameReserve~%~%uint32[2] SN~%uint32[2] version~%uint16 bandWidth~%MotorCmd[20] motorCmd~%BmsCmd bms~%uint8[40] wirelessRemote~%uint32 reserve~%~%uint32 crc~%================================================================================~%MSG: unitree_legged_msgs/MotorCmd~%uint8 mode           # motor target mode~%float32 q            # motor target position~%float32 dq           # motor target velocity~%float32 tau          # motor target torque~%float32 Kp           # motor spring stiffness coefficient~%float32 Kd           # motor damper coefficient~%uint32[3] reserve    # motor target torque~%================================================================================~%MSG: unitree_legged_msgs/BmsCmd~%uint8 off            # off 0xA5~%uint8[3] reserve~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LowCmd>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'head) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'SN) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'version) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motorCmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bms))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wirelessRemote) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LowCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LowCmd
    (cl:cons ':head (head msg))
    (cl:cons ':levelFlag (levelFlag msg))
    (cl:cons ':frameReserve (frameReserve msg))
    (cl:cons ':SN (SN msg))
    (cl:cons ':version (version msg))
    (cl:cons ':bandWidth (bandWidth msg))
    (cl:cons ':motorCmd (motorCmd msg))
    (cl:cons ':bms (bms msg))
    (cl:cons ':wirelessRemote (wirelessRemote msg))
    (cl:cons ':reserve (reserve msg))
    (cl:cons ':crc (crc msg))
))
