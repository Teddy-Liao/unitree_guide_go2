;; Auto-generated. Do not edit!


(when (boundp 'unitree_legged_msgs::BmsState)
  (if (not (find-package "UNITREE_LEGGED_MSGS"))
    (make-package "UNITREE_LEGGED_MSGS"))
  (shadow 'BmsState (find-package "UNITREE_LEGGED_MSGS")))
(unless (find-package "UNITREE_LEGGED_MSGS::BMSSTATE")
  (make-package "UNITREE_LEGGED_MSGS::BMSSTATE"))

(in-package "ROS")
;;//! \htmlinclude BmsState.msg.html


(defclass unitree_legged_msgs::BmsState
  :super ros::object
  :slots (_version_h _version_l _bms_status _SOC _current _cycle _BQ_NTC _MCU_NTC _cell_vol ))

(defmethod unitree_legged_msgs::BmsState
  (:init
   (&key
    ((:version_h __version_h) 0)
    ((:version_l __version_l) 0)
    ((:bms_status __bms_status) 0)
    ((:SOC __SOC) 0)
    ((:current __current) 0)
    ((:cycle __cycle) 0)
    ((:BQ_NTC __BQ_NTC) (make-array 2 :initial-element 0 :element-type :integer))
    ((:MCU_NTC __MCU_NTC) (make-array 2 :initial-element 0 :element-type :integer))
    ((:cell_vol __cell_vol) (make-array 10 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _version_h (round __version_h))
   (setq _version_l (round __version_l))
   (setq _bms_status (round __bms_status))
   (setq _SOC (round __SOC))
   (setq _current (round __current))
   (setq _cycle (round __cycle))
   (setq _BQ_NTC __BQ_NTC)
   (setq _MCU_NTC __MCU_NTC)
   (setq _cell_vol __cell_vol)
   self)
  (:version_h
   (&optional __version_h)
   (if __version_h (setq _version_h __version_h)) _version_h)
  (:version_l
   (&optional __version_l)
   (if __version_l (setq _version_l __version_l)) _version_l)
  (:bms_status
   (&optional __bms_status)
   (if __bms_status (setq _bms_status __bms_status)) _bms_status)
  (:SOC
   (&optional __SOC)
   (if __SOC (setq _SOC __SOC)) _SOC)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:cycle
   (&optional __cycle)
   (if __cycle (setq _cycle __cycle)) _cycle)
  (:BQ_NTC
   (&optional __BQ_NTC)
   (if __BQ_NTC (setq _BQ_NTC __BQ_NTC)) _BQ_NTC)
  (:MCU_NTC
   (&optional __MCU_NTC)
   (if __MCU_NTC (setq _MCU_NTC __MCU_NTC)) _MCU_NTC)
  (:cell_vol
   (&optional __cell_vol)
   (if __cell_vol (setq _cell_vol __cell_vol)) _cell_vol)
  (:serialization-length
   ()
   (+
    ;; uint8 _version_h
    1
    ;; uint8 _version_l
    1
    ;; uint8 _bms_status
    1
    ;; uint8 _SOC
    1
    ;; int32 _current
    4
    ;; uint16 _cycle
    2
    ;; int8[2] _BQ_NTC
    (* 1    2)
    ;; int8[2] _MCU_NTC
    (* 1    2)
    ;; uint16[10] _cell_vol
    (* 2    10)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _version_h
       (write-byte _version_h s)
     ;; uint8 _version_l
       (write-byte _version_l s)
     ;; uint8 _bms_status
       (write-byte _bms_status s)
     ;; uint8 _SOC
       (write-byte _SOC s)
     ;; int32 _current
       (write-long _current s)
     ;; uint16 _cycle
       (write-word _cycle s)
     ;; int8[2] _BQ_NTC
     (dotimes (i 2)
       (write-byte (elt _BQ_NTC i) s)
       )
     ;; int8[2] _MCU_NTC
     (dotimes (i 2)
       (write-byte (elt _MCU_NTC i) s)
       )
     ;; uint16[10] _cell_vol
     (dotimes (i 10)
       (write-word (elt _cell_vol i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _version_h
     (setq _version_h (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _version_l
     (setq _version_l (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bms_status
     (setq _bms_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SOC
     (setq _SOC (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _current
     (setq _current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _cycle
     (setq _cycle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8[2] _BQ_NTC
   (dotimes (i (length _BQ_NTC))
     (setf (elt _BQ_NTC i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _BQ_NTC i) 127) (setf (elt _BQ_NTC i) (- (elt _BQ_NTC i) 256)))
     )
   ;; int8[2] _MCU_NTC
   (dotimes (i (length _MCU_NTC))
     (setf (elt _MCU_NTC i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _MCU_NTC i) 127) (setf (elt _MCU_NTC i) (- (elt _MCU_NTC i) 256)))
     )
   ;; uint16[10] _cell_vol
   (dotimes (i (length _cell_vol))
     (setf (elt _cell_vol i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get unitree_legged_msgs::BmsState :md5sum-) "8e007c660c590388bca7c2464d80df54")
(setf (get unitree_legged_msgs::BmsState :datatype-) "unitree_legged_msgs/BmsState")
(setf (get unitree_legged_msgs::BmsState :definition-)
      "uint8 version_h
uint8 version_l
uint8 bms_status
uint8 SOC                  # SOC 0-100%
int32 current              # mA
uint16 cycle
int8[2] BQ_NTC             # x1 degrees centigrade
int8[2] MCU_NTC            # x1 degrees centigrade
uint16[10] cell_vol        # cell voltage mV
")



(provide :unitree_legged_msgs/BmsState "8e007c660c590388bca7c2464d80df54")


