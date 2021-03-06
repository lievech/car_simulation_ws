# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from control_msgs/GetECUReport.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import control_msgs.msg
import std_msgs.msg

class GetECUReport(genpy.Message):
  _md5sum = "83102858bdab6b0e68d7ca00281fe1a4"
  _type = "control_msgs/GetECUReport"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header

control_msgs/ModeReport mode

control_msgs/SteerReport steer_cur

control_msgs/GearReport shift_cur
control_msgs/GearReport shift1_cur

control_msgs/BrakeReport brake_cur
control_msgs/ThrottleReport throttle_cur # include engine_status

control_msgs/SpeedReport speed

control_msgs/HMIReport manual

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: control_msgs/ModeReport
Header header

int32 auto_mode

int32 speed_mode
bool throttle_enable
bool brake_enable

int32 steer_mode
int32 gear_mode


================================================================================
MSG: control_msgs/SteerReport
Header header
float32 steer

================================================================================
MSG: control_msgs/GearReport
Header header
uint8 gear

================================================================================
MSG: control_msgs/BrakeReport
Header header

float32 brake_ESC_left
float32 brake_ESC_right

control_msgs/WheelStateReport brake_wheel

float32 brake_pedal

================================================================================
MSG: control_msgs/WheelStateReport
Header header

float32 front_left
float32 front_right
float32 rear_left
float32 rear_right

================================================================================
MSG: control_msgs/ThrottleReport
Header header
float32 throttle
control_msgs/EngineReport engine_status
float32 throttle_pedal

================================================================================
MSG: control_msgs/EngineReport
Header header
float32 engine_rpm
float32 engine_load

================================================================================
MSG: control_msgs/SpeedReport
Header header

control_msgs/WheelStateReport speed_wheel
geometry_msgs/Twist velocity



================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: control_msgs/HMIReport
Header header

bool manual_estop
bool is_human_brake 
"""
  __slots__ = ['header','mode','steer_cur','shift_cur','shift1_cur','brake_cur','throttle_cur','speed','manual']
  _slot_types = ['std_msgs/Header','control_msgs/ModeReport','control_msgs/SteerReport','control_msgs/GearReport','control_msgs/GearReport','control_msgs/BrakeReport','control_msgs/ThrottleReport','control_msgs/SpeedReport','control_msgs/HMIReport']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,mode,steer_cur,shift_cur,shift1_cur,brake_cur,throttle_cur,speed,manual

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetECUReport, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.mode is None:
        self.mode = control_msgs.msg.ModeReport()
      if self.steer_cur is None:
        self.steer_cur = control_msgs.msg.SteerReport()
      if self.shift_cur is None:
        self.shift_cur = control_msgs.msg.GearReport()
      if self.shift1_cur is None:
        self.shift1_cur = control_msgs.msg.GearReport()
      if self.brake_cur is None:
        self.brake_cur = control_msgs.msg.BrakeReport()
      if self.throttle_cur is None:
        self.throttle_cur = control_msgs.msg.ThrottleReport()
      if self.speed is None:
        self.speed = control_msgs.msg.SpeedReport()
      if self.manual is None:
        self.manual = control_msgs.msg.HMIReport()
    else:
      self.header = std_msgs.msg.Header()
      self.mode = control_msgs.msg.ModeReport()
      self.steer_cur = control_msgs.msg.SteerReport()
      self.shift_cur = control_msgs.msg.GearReport()
      self.shift1_cur = control_msgs.msg.GearReport()
      self.brake_cur = control_msgs.msg.BrakeReport()
      self.throttle_cur = control_msgs.msg.ThrottleReport()
      self.speed = control_msgs.msg.SpeedReport()
      self.manual = control_msgs.msg.HMIReport()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.mode.header.seq, _x.mode.header.stamp.secs, _x.mode.header.stamp.nsecs))
      _x = self.mode.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i2B2i3I().pack(_x.mode.auto_mode, _x.mode.speed_mode, _x.mode.throttle_enable, _x.mode.brake_enable, _x.mode.steer_mode, _x.mode.gear_mode, _x.steer_cur.header.seq, _x.steer_cur.header.stamp.secs, _x.steer_cur.header.stamp.nsecs))
      _x = self.steer_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.steer_cur.steer, _x.shift_cur.header.seq, _x.shift_cur.header.stamp.secs, _x.shift_cur.header.stamp.nsecs))
      _x = self.shift_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.shift_cur.gear, _x.shift1_cur.header.seq, _x.shift1_cur.header.stamp.secs, _x.shift1_cur.header.stamp.nsecs))
      _x = self.shift1_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.shift1_cur.gear, _x.brake_cur.header.seq, _x.brake_cur.header.stamp.secs, _x.brake_cur.header.stamp.nsecs))
      _x = self.brake_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2f3I().pack(_x.brake_cur.brake_ESC_left, _x.brake_cur.brake_ESC_right, _x.brake_cur.brake_wheel.header.seq, _x.brake_cur.brake_wheel.header.stamp.secs, _x.brake_cur.brake_wheel.header.stamp.nsecs))
      _x = self.brake_cur.brake_wheel.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5f3I().pack(_x.brake_cur.brake_wheel.front_left, _x.brake_cur.brake_wheel.front_right, _x.brake_cur.brake_wheel.rear_left, _x.brake_cur.brake_wheel.rear_right, _x.brake_cur.brake_pedal, _x.throttle_cur.header.seq, _x.throttle_cur.header.stamp.secs, _x.throttle_cur.header.stamp.nsecs))
      _x = self.throttle_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.throttle_cur.throttle, _x.throttle_cur.engine_status.header.seq, _x.throttle_cur.engine_status.header.stamp.secs, _x.throttle_cur.engine_status.header.stamp.nsecs))
      _x = self.throttle_cur.engine_status.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3f3I().pack(_x.throttle_cur.engine_status.engine_rpm, _x.throttle_cur.engine_status.engine_load, _x.throttle_cur.throttle_pedal, _x.speed.header.seq, _x.speed.header.stamp.secs, _x.speed.header.stamp.nsecs))
      _x = self.speed.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.speed.speed_wheel.header.seq, _x.speed.speed_wheel.header.stamp.secs, _x.speed.speed_wheel.header.stamp.nsecs))
      _x = self.speed.speed_wheel.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4f6d3I().pack(_x.speed.speed_wheel.front_left, _x.speed.speed_wheel.front_right, _x.speed.speed_wheel.rear_left, _x.speed.speed_wheel.rear_right, _x.speed.velocity.linear.x, _x.speed.velocity.linear.y, _x.speed.velocity.linear.z, _x.speed.velocity.angular.x, _x.speed.velocity.angular.y, _x.speed.velocity.angular.z, _x.manual.header.seq, _x.manual.header.stamp.secs, _x.manual.header.stamp.nsecs))
      _x = self.manual.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.manual.manual_estop, _x.manual.is_human_brake))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.mode is None:
        self.mode = control_msgs.msg.ModeReport()
      if self.steer_cur is None:
        self.steer_cur = control_msgs.msg.SteerReport()
      if self.shift_cur is None:
        self.shift_cur = control_msgs.msg.GearReport()
      if self.shift1_cur is None:
        self.shift1_cur = control_msgs.msg.GearReport()
      if self.brake_cur is None:
        self.brake_cur = control_msgs.msg.BrakeReport()
      if self.throttle_cur is None:
        self.throttle_cur = control_msgs.msg.ThrottleReport()
      if self.speed is None:
        self.speed = control_msgs.msg.SpeedReport()
      if self.manual is None:
        self.manual = control_msgs.msg.HMIReport()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.mode.header.seq, _x.mode.header.stamp.secs, _x.mode.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mode.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.mode.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 30
      (_x.mode.auto_mode, _x.mode.speed_mode, _x.mode.throttle_enable, _x.mode.brake_enable, _x.mode.steer_mode, _x.mode.gear_mode, _x.steer_cur.header.seq, _x.steer_cur.header.stamp.secs, _x.steer_cur.header.stamp.nsecs,) = _get_struct_2i2B2i3I().unpack(str[start:end])
      self.mode.throttle_enable = bool(self.mode.throttle_enable)
      self.mode.brake_enable = bool(self.mode.brake_enable)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.steer_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.steer_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.steer_cur.steer, _x.shift_cur.header.seq, _x.shift_cur.header.stamp.secs, _x.shift_cur.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shift_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.shift_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.shift_cur.gear, _x.shift1_cur.header.seq, _x.shift1_cur.header.stamp.secs, _x.shift1_cur.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shift1_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.shift1_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.shift1_cur.gear, _x.brake_cur.header.seq, _x.brake_cur.header.stamp.secs, _x.brake_cur.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.brake_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.brake_cur.brake_ESC_left, _x.brake_cur.brake_ESC_right, _x.brake_cur.brake_wheel.header.seq, _x.brake_cur.brake_wheel.header.stamp.secs, _x.brake_cur.brake_wheel.header.stamp.nsecs,) = _get_struct_2f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake_cur.brake_wheel.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.brake_cur.brake_wheel.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.brake_cur.brake_wheel.front_left, _x.brake_cur.brake_wheel.front_right, _x.brake_cur.brake_wheel.rear_left, _x.brake_cur.brake_wheel.rear_right, _x.brake_cur.brake_pedal, _x.throttle_cur.header.seq, _x.throttle_cur.header.stamp.secs, _x.throttle_cur.header.stamp.nsecs,) = _get_struct_5f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.throttle_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.throttle_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.throttle_cur.throttle, _x.throttle_cur.engine_status.header.seq, _x.throttle_cur.engine_status.header.stamp.secs, _x.throttle_cur.engine_status.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.throttle_cur.engine_status.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.throttle_cur.engine_status.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.throttle_cur.engine_status.engine_rpm, _x.throttle_cur.engine_status.engine_load, _x.throttle_cur.throttle_pedal, _x.speed.header.seq, _x.speed.header.stamp.secs, _x.speed.header.stamp.nsecs,) = _get_struct_3f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.speed.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.speed.speed_wheel.header.seq, _x.speed.speed_wheel.header.stamp.secs, _x.speed.speed_wheel.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed.speed_wheel.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.speed.speed_wheel.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.speed.speed_wheel.front_left, _x.speed.speed_wheel.front_right, _x.speed.speed_wheel.rear_left, _x.speed.speed_wheel.rear_right, _x.speed.velocity.linear.x, _x.speed.velocity.linear.y, _x.speed.velocity.linear.z, _x.speed.velocity.angular.x, _x.speed.velocity.angular.y, _x.speed.velocity.angular.z, _x.manual.header.seq, _x.manual.header.stamp.secs, _x.manual.header.stamp.nsecs,) = _get_struct_4f6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.manual.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.manual.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.manual.manual_estop, _x.manual.is_human_brake,) = _get_struct_2B().unpack(str[start:end])
      self.manual.manual_estop = bool(self.manual.manual_estop)
      self.manual.is_human_brake = bool(self.manual.is_human_brake)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.mode.header.seq, _x.mode.header.stamp.secs, _x.mode.header.stamp.nsecs))
      _x = self.mode.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i2B2i3I().pack(_x.mode.auto_mode, _x.mode.speed_mode, _x.mode.throttle_enable, _x.mode.brake_enable, _x.mode.steer_mode, _x.mode.gear_mode, _x.steer_cur.header.seq, _x.steer_cur.header.stamp.secs, _x.steer_cur.header.stamp.nsecs))
      _x = self.steer_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.steer_cur.steer, _x.shift_cur.header.seq, _x.shift_cur.header.stamp.secs, _x.shift_cur.header.stamp.nsecs))
      _x = self.shift_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.shift_cur.gear, _x.shift1_cur.header.seq, _x.shift1_cur.header.stamp.secs, _x.shift1_cur.header.stamp.nsecs))
      _x = self.shift1_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_B3I().pack(_x.shift1_cur.gear, _x.brake_cur.header.seq, _x.brake_cur.header.stamp.secs, _x.brake_cur.header.stamp.nsecs))
      _x = self.brake_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2f3I().pack(_x.brake_cur.brake_ESC_left, _x.brake_cur.brake_ESC_right, _x.brake_cur.brake_wheel.header.seq, _x.brake_cur.brake_wheel.header.stamp.secs, _x.brake_cur.brake_wheel.header.stamp.nsecs))
      _x = self.brake_cur.brake_wheel.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_5f3I().pack(_x.brake_cur.brake_wheel.front_left, _x.brake_cur.brake_wheel.front_right, _x.brake_cur.brake_wheel.rear_left, _x.brake_cur.brake_wheel.rear_right, _x.brake_cur.brake_pedal, _x.throttle_cur.header.seq, _x.throttle_cur.header.stamp.secs, _x.throttle_cur.header.stamp.nsecs))
      _x = self.throttle_cur.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_f3I().pack(_x.throttle_cur.throttle, _x.throttle_cur.engine_status.header.seq, _x.throttle_cur.engine_status.header.stamp.secs, _x.throttle_cur.engine_status.header.stamp.nsecs))
      _x = self.throttle_cur.engine_status.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3f3I().pack(_x.throttle_cur.engine_status.engine_rpm, _x.throttle_cur.engine_status.engine_load, _x.throttle_cur.throttle_pedal, _x.speed.header.seq, _x.speed.header.stamp.secs, _x.speed.header.stamp.nsecs))
      _x = self.speed.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.speed.speed_wheel.header.seq, _x.speed.speed_wheel.header.stamp.secs, _x.speed.speed_wheel.header.stamp.nsecs))
      _x = self.speed.speed_wheel.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4f6d3I().pack(_x.speed.speed_wheel.front_left, _x.speed.speed_wheel.front_right, _x.speed.speed_wheel.rear_left, _x.speed.speed_wheel.rear_right, _x.speed.velocity.linear.x, _x.speed.velocity.linear.y, _x.speed.velocity.linear.z, _x.speed.velocity.angular.x, _x.speed.velocity.angular.y, _x.speed.velocity.angular.z, _x.manual.header.seq, _x.manual.header.stamp.secs, _x.manual.header.stamp.nsecs))
      _x = self.manual.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.manual.manual_estop, _x.manual.is_human_brake))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.mode is None:
        self.mode = control_msgs.msg.ModeReport()
      if self.steer_cur is None:
        self.steer_cur = control_msgs.msg.SteerReport()
      if self.shift_cur is None:
        self.shift_cur = control_msgs.msg.GearReport()
      if self.shift1_cur is None:
        self.shift1_cur = control_msgs.msg.GearReport()
      if self.brake_cur is None:
        self.brake_cur = control_msgs.msg.BrakeReport()
      if self.throttle_cur is None:
        self.throttle_cur = control_msgs.msg.ThrottleReport()
      if self.speed is None:
        self.speed = control_msgs.msg.SpeedReport()
      if self.manual is None:
        self.manual = control_msgs.msg.HMIReport()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.mode.header.seq, _x.mode.header.stamp.secs, _x.mode.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.mode.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.mode.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 30
      (_x.mode.auto_mode, _x.mode.speed_mode, _x.mode.throttle_enable, _x.mode.brake_enable, _x.mode.steer_mode, _x.mode.gear_mode, _x.steer_cur.header.seq, _x.steer_cur.header.stamp.secs, _x.steer_cur.header.stamp.nsecs,) = _get_struct_2i2B2i3I().unpack(str[start:end])
      self.mode.throttle_enable = bool(self.mode.throttle_enable)
      self.mode.brake_enable = bool(self.mode.brake_enable)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.steer_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.steer_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.steer_cur.steer, _x.shift_cur.header.seq, _x.shift_cur.header.stamp.secs, _x.shift_cur.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shift_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.shift_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.shift_cur.gear, _x.shift1_cur.header.seq, _x.shift1_cur.header.stamp.secs, _x.shift1_cur.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.shift1_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.shift1_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.shift1_cur.gear, _x.brake_cur.header.seq, _x.brake_cur.header.stamp.secs, _x.brake_cur.header.stamp.nsecs,) = _get_struct_B3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.brake_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.brake_cur.brake_ESC_left, _x.brake_cur.brake_ESC_right, _x.brake_cur.brake_wheel.header.seq, _x.brake_cur.brake_wheel.header.stamp.secs, _x.brake_cur.brake_wheel.header.stamp.nsecs,) = _get_struct_2f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake_cur.brake_wheel.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.brake_cur.brake_wheel.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 32
      (_x.brake_cur.brake_wheel.front_left, _x.brake_cur.brake_wheel.front_right, _x.brake_cur.brake_wheel.rear_left, _x.brake_cur.brake_wheel.rear_right, _x.brake_cur.brake_pedal, _x.throttle_cur.header.seq, _x.throttle_cur.header.stamp.secs, _x.throttle_cur.header.stamp.nsecs,) = _get_struct_5f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.throttle_cur.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.throttle_cur.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.throttle_cur.throttle, _x.throttle_cur.engine_status.header.seq, _x.throttle_cur.engine_status.header.stamp.secs, _x.throttle_cur.engine_status.header.stamp.nsecs,) = _get_struct_f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.throttle_cur.engine_status.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.throttle_cur.engine_status.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.throttle_cur.engine_status.engine_rpm, _x.throttle_cur.engine_status.engine_load, _x.throttle_cur.throttle_pedal, _x.speed.header.seq, _x.speed.header.stamp.secs, _x.speed.header.stamp.nsecs,) = _get_struct_3f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.speed.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.speed.speed_wheel.header.seq, _x.speed.speed_wheel.header.stamp.secs, _x.speed.speed_wheel.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speed.speed_wheel.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.speed.speed_wheel.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.speed.speed_wheel.front_left, _x.speed.speed_wheel.front_right, _x.speed.speed_wheel.rear_left, _x.speed.speed_wheel.rear_right, _x.speed.velocity.linear.x, _x.speed.velocity.linear.y, _x.speed.velocity.linear.z, _x.speed.velocity.angular.x, _x.speed.velocity.angular.y, _x.speed.velocity.angular.z, _x.manual.header.seq, _x.manual.header.stamp.secs, _x.manual.header.stamp.nsecs,) = _get_struct_4f6d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.manual.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.manual.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.manual.manual_estop, _x.manual.is_human_brake,) = _get_struct_2B().unpack(str[start:end])
      self.manual.manual_estop = bool(self.manual.manual_estop)
      self.manual.is_human_brake = bool(self.manual.is_human_brake)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f3I = None
def _get_struct_2f3I():
    global _struct_2f3I
    if _struct_2f3I is None:
        _struct_2f3I = struct.Struct("<2f3I")
    return _struct_2f3I
_struct_5f3I = None
def _get_struct_5f3I():
    global _struct_5f3I
    if _struct_5f3I is None:
        _struct_5f3I = struct.Struct("<5f3I")
    return _struct_5f3I
_struct_3f3I = None
def _get_struct_3f3I():
    global _struct_3f3I
    if _struct_3f3I is None:
        _struct_3f3I = struct.Struct("<3f3I")
    return _struct_3f3I
_struct_f3I = None
def _get_struct_f3I():
    global _struct_f3I
    if _struct_f3I is None:
        _struct_f3I = struct.Struct("<f3I")
    return _struct_f3I
_struct_4f6d3I = None
def _get_struct_4f6d3I():
    global _struct_4f6d3I
    if _struct_4f6d3I is None:
        _struct_4f6d3I = struct.Struct("<4f6d3I")
    return _struct_4f6d3I
_struct_2i2B2i3I = None
def _get_struct_2i2B2i3I():
    global _struct_2i2B2i3I
    if _struct_2i2B2i3I is None:
        _struct_2i2B2i3I = struct.Struct("<2i2B2i3I")
    return _struct_2i2B2i3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B3I = None
def _get_struct_B3I():
    global _struct_B3I
    if _struct_B3I is None:
        _struct_B3I = struct.Struct("<B3I")
    return _struct_B3I
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
