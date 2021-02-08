# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from probot_msgs/JogJoint.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class JogJoint(genpy.Message):
  _md5sum = "02f6d1212f80ad72751bc065b3e3523c"
  _type = "probot_msgs/JogJoint"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# The Jogging joint message contains control information for jogging
# a specific joint
# Set velocity_scale to 0 to stop jogging

# The jogged joint index
# Negative joint index value means stop jogging
int8 joint_index

# The jogging direction
int8 direction

# The jogging mode
int8 mode

# The velocity scale for move_group interface
float32 velocity_scale

int8 DIR_PLUS = 0
int8 DIR_MINUS = 1

int8 MOD_CONTINUOUS            = 0
int8 MOD_INCREMENT_10_DEGREE   = 1
int8 MOD_INCREMENT_1_DEGREE    = 2
int8 MOD_INCREMENT_01_DEGREE   = 3"""
  # Pseudo-constants
  DIR_PLUS = 0
  DIR_MINUS = 1
  MOD_CONTINUOUS = 0
  MOD_INCREMENT_10_DEGREE = 1
  MOD_INCREMENT_1_DEGREE = 2
  MOD_INCREMENT_01_DEGREE = 3

  __slots__ = ['joint_index','direction','mode','velocity_scale']
  _slot_types = ['int8','int8','int8','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint_index,direction,mode,velocity_scale

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(JogJoint, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joint_index is None:
        self.joint_index = 0
      if self.direction is None:
        self.direction = 0
      if self.mode is None:
        self.mode = 0
      if self.velocity_scale is None:
        self.velocity_scale = 0.
    else:
      self.joint_index = 0
      self.direction = 0
      self.mode = 0
      self.velocity_scale = 0.

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
      buff.write(_get_struct_3bf().pack(_x.joint_index, _x.direction, _x.mode, _x.velocity_scale))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.joint_index, _x.direction, _x.mode, _x.velocity_scale,) = _get_struct_3bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3bf().pack(_x.joint_index, _x.direction, _x.mode, _x.velocity_scale))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 7
      (_x.joint_index, _x.direction, _x.mode, _x.velocity_scale,) = _get_struct_3bf().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3bf = None
def _get_struct_3bf():
    global _struct_3bf
    if _struct_3bf is None:
        _struct_3bf = struct.Struct("<3bf")
    return _struct_3bf
