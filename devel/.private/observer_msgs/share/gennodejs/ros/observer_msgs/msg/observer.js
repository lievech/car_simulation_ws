// Auto-generated. Do not edit!

// (in-package observer_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class observer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.des_steering_angle = null;
      this.cur_steering_angle = null;
      this.lateral_error = null;
      this.heading_error = null;
      this.linear_v_x = null;
      this.linear_v_y = null;
      this.linear_v_z = null;
      this.angular_v_x = null;
      this.angular_v_y = null;
      this.angular_v_z = null;
      this.position_x = null;
      this.position_y = null;
      this.position_z = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.time_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('des_steering_angle')) {
        this.des_steering_angle = initObj.des_steering_angle
      }
      else {
        this.des_steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('cur_steering_angle')) {
        this.cur_steering_angle = initObj.cur_steering_angle
      }
      else {
        this.cur_steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_error')) {
        this.lateral_error = initObj.lateral_error
      }
      else {
        this.lateral_error = 0.0;
      }
      if (initObj.hasOwnProperty('heading_error')) {
        this.heading_error = initObj.heading_error
      }
      else {
        this.heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('linear_v_x')) {
        this.linear_v_x = initObj.linear_v_x
      }
      else {
        this.linear_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('linear_v_y')) {
        this.linear_v_y = initObj.linear_v_y
      }
      else {
        this.linear_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('linear_v_z')) {
        this.linear_v_z = initObj.linear_v_z
      }
      else {
        this.linear_v_z = 0.0;
      }
      if (initObj.hasOwnProperty('angular_v_x')) {
        this.angular_v_x = initObj.angular_v_x
      }
      else {
        this.angular_v_x = 0.0;
      }
      if (initObj.hasOwnProperty('angular_v_y')) {
        this.angular_v_y = initObj.angular_v_y
      }
      else {
        this.angular_v_y = 0.0;
      }
      if (initObj.hasOwnProperty('angular_v_z')) {
        this.angular_v_z = initObj.angular_v_z
      }
      else {
        this.angular_v_z = 0.0;
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('position_z')) {
        this.position_z = initObj.position_z
      }
      else {
        this.position_z = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('time_cost')) {
        this.time_cost = initObj.time_cost
      }
      else {
        this.time_cost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type observer
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [des_steering_angle]
    bufferOffset = _serializer.float64(obj.des_steering_angle, buffer, bufferOffset);
    // Serialize message field [cur_steering_angle]
    bufferOffset = _serializer.float64(obj.cur_steering_angle, buffer, bufferOffset);
    // Serialize message field [lateral_error]
    bufferOffset = _serializer.float64(obj.lateral_error, buffer, bufferOffset);
    // Serialize message field [heading_error]
    bufferOffset = _serializer.float64(obj.heading_error, buffer, bufferOffset);
    // Serialize message field [linear_v_x]
    bufferOffset = _serializer.float64(obj.linear_v_x, buffer, bufferOffset);
    // Serialize message field [linear_v_y]
    bufferOffset = _serializer.float64(obj.linear_v_y, buffer, bufferOffset);
    // Serialize message field [linear_v_z]
    bufferOffset = _serializer.float64(obj.linear_v_z, buffer, bufferOffset);
    // Serialize message field [angular_v_x]
    bufferOffset = _serializer.float64(obj.angular_v_x, buffer, bufferOffset);
    // Serialize message field [angular_v_y]
    bufferOffset = _serializer.float64(obj.angular_v_y, buffer, bufferOffset);
    // Serialize message field [angular_v_z]
    bufferOffset = _serializer.float64(obj.angular_v_z, buffer, bufferOffset);
    // Serialize message field [position_x]
    bufferOffset = _serializer.float64(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float64(obj.position_y, buffer, bufferOffset);
    // Serialize message field [position_z]
    bufferOffset = _serializer.float64(obj.position_z, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float64(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float64(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float64(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [time_cost]
    bufferOffset = _serializer.float32(obj.time_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type observer
    let len;
    let data = new observer(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [des_steering_angle]
    data.des_steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_steering_angle]
    data.cur_steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_error]
    data.lateral_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_error]
    data.heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_v_x]
    data.linear_v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_v_y]
    data.linear_v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_v_z]
    data.linear_v_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_v_x]
    data.angular_v_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_v_y]
    data.angular_v_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_v_z]
    data.angular_v_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_z]
    data.position_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_cost]
    data.time_cost = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 132;
  }

  static datatype() {
    // Returns string type for a message object
    return 'observer_msgs/observer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2f52368ad4e8041253811aff6250629';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 des_steering_angle
    float64 cur_steering_angle
    
    float64 lateral_error
    float64 heading_error
    
    float64 linear_v_x
    float64 linear_v_y
    float64 linear_v_z
    
    float64 angular_v_x
    float64 angular_v_y
    float64 angular_v_z
    
    float64 position_x
    float64 position_y
    float64 position_z
    
    float64 acc_x
    float64 acc_y
    float64 acc_z
    
    float32 time_cost
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new observer(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.des_steering_angle !== undefined) {
      resolved.des_steering_angle = msg.des_steering_angle;
    }
    else {
      resolved.des_steering_angle = 0.0
    }

    if (msg.cur_steering_angle !== undefined) {
      resolved.cur_steering_angle = msg.cur_steering_angle;
    }
    else {
      resolved.cur_steering_angle = 0.0
    }

    if (msg.lateral_error !== undefined) {
      resolved.lateral_error = msg.lateral_error;
    }
    else {
      resolved.lateral_error = 0.0
    }

    if (msg.heading_error !== undefined) {
      resolved.heading_error = msg.heading_error;
    }
    else {
      resolved.heading_error = 0.0
    }

    if (msg.linear_v_x !== undefined) {
      resolved.linear_v_x = msg.linear_v_x;
    }
    else {
      resolved.linear_v_x = 0.0
    }

    if (msg.linear_v_y !== undefined) {
      resolved.linear_v_y = msg.linear_v_y;
    }
    else {
      resolved.linear_v_y = 0.0
    }

    if (msg.linear_v_z !== undefined) {
      resolved.linear_v_z = msg.linear_v_z;
    }
    else {
      resolved.linear_v_z = 0.0
    }

    if (msg.angular_v_x !== undefined) {
      resolved.angular_v_x = msg.angular_v_x;
    }
    else {
      resolved.angular_v_x = 0.0
    }

    if (msg.angular_v_y !== undefined) {
      resolved.angular_v_y = msg.angular_v_y;
    }
    else {
      resolved.angular_v_y = 0.0
    }

    if (msg.angular_v_z !== undefined) {
      resolved.angular_v_z = msg.angular_v_z;
    }
    else {
      resolved.angular_v_z = 0.0
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.position_z !== undefined) {
      resolved.position_z = msg.position_z;
    }
    else {
      resolved.position_z = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.time_cost !== undefined) {
      resolved.time_cost = msg.time_cost;
    }
    else {
      resolved.time_cost = 0.0
    }

    return resolved;
    }
};

module.exports = observer;
