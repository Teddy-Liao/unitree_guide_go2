; Auto-generated. Do not edit!


(cl:in-package unitree_legged_msgs-msg)


;//! \htmlinclude BmsCmd.msg.html

(cl:defclass <BmsCmd> (roslisp-msg-protocol:ros-message)
  ((off
    :reader off
    :initarg :off
    :type cl:fixnum
    :initform 0)
   (reserve
    :reader reserve
    :initarg :reserve
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 3 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass BmsCmd (<BmsCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BmsCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BmsCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unitree_legged_msgs-msg:<BmsCmd> is deprecated: use unitree_legged_msgs-msg:BmsCmd instead.")))

(cl:ensure-generic-function 'off-val :lambda-list '(m))
(cl:defmethod off-val ((m <BmsCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:off-val is deprecated.  Use unitree_legged_msgs-msg:off instead.")
  (off m))

(cl:ensure-generic-function 'reserve-val :lambda-list '(m))
(cl:defmethod reserve-val ((m <BmsCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unitree_legged_msgs-msg:reserve-val is deprecated.  Use unitree_legged_msgs-msg:reserve instead.")
  (reserve m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BmsCmd>) ostream)
  "Serializes a message object of type '<BmsCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserve))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BmsCmd>) istream)
  "Deserializes a message object of type '<BmsCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserve) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'reserve)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BmsCmd>)))
  "Returns string type for a message object of type '<BmsCmd>"
  "unitree_legged_msgs/BmsCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BmsCmd)))
  "Returns string type for a message object of type 'BmsCmd"
  "unitree_legged_msgs/BmsCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BmsCmd>)))
  "Returns md5sum for a message object of type '<BmsCmd>"
  "c09195f3200bd8917201f8805a3fe1d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BmsCmd)))
  "Returns md5sum for a message object of type 'BmsCmd"
  "c09195f3200bd8917201f8805a3fe1d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BmsCmd>)))
  "Returns full string definition for message of type '<BmsCmd>"
  (cl:format cl:nil "uint8 off            # off 0xA5~%uint8[3] reserve~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BmsCmd)))
  "Returns full string definition for message of type 'BmsCmd"
  (cl:format cl:nil "uint8 off            # off 0xA5~%uint8[3] reserve~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BmsCmd>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'reserve) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BmsCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'BmsCmd
    (cl:cons ':off (off msg))
    (cl:cons ':reserve (reserve msg))
))
