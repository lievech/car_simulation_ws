// Auto-generated. Do not edit!

// (in-package vehicle_force_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frontlateralforce = null;
      this.frontslipangle = null;
      this.rearlateralforce = null;
      this.rearslipangle = null;
      this.frontlongitudinalforce = null;
      this.rearlongitudinalforce = null;
      this.vxdot = null;
      this.deltadot = null;
    }
    else {
      if (initObj.hasOwnProperty('frontlateralforce')) {
        this.frontlateralforce = initObj.frontlateralforce
      }
      else {
        this.frontlateralforce = 0.0;
      }
      if (initObj.hasOwnProperty('frontslipangle')) {
        this.frontslipangle = initObj.frontslipangle
      }
      else {
        this.frontslipangle = 0.0;
      }
      if (initObj.hasOwnProperty('rearlateralforce')) {
        this.rearlateralforce = initObj.rearlateralforce
      }
      else {
        this.rearlateralforce = 0.0;
      }
      if (initObj.hasOwnProperty('rearslipangle')) {
        this.rearslipangle = initObj.rearslipangle
      }
      else {
        this.rearslipangle = 0.0;
      }
      if (initObj.hasOwnProperty('frontlongitudinalforce')) {
        this.frontlongitudinalforce = initObj.frontlongitudinalforce
      }
      else {
        this.frontlongitudinalforce = 0.0;
      }
      if (initObj.hasOwnProperty('rearlongitudinalforce')) {
        this.rearlongitudinalforce = initObj.rearlongitudinalforce
      }
      else {
        this.rearlongitudinalforce = 0.0;
      }
      if (initObj.hasOwnProperty('vxdot')) {
        this.vxdot = initObj.vxdot
      }
      else {
        this.vxdot = 0.0;
      }
      if (initObj.hasOwnProperty('deltadot')) {
        this.deltadot = initObj.deltadot
      }
      else {
        this.deltadot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleForce
    // Serialize message field [frontlateralforce]
    bufferOffset = _serializer.float32(obj.frontlateralforce, buffer, bufferOffset);
    // Serialize message field [frontslipangle]
    bufferOffset = _serializer.float32(obj.frontslipangle, buffer, bufferOffset);
    // Serialize message field [rearlateralforce]
    bufferOffset = _serializer.float32(obj.rearlateralforce, buffer, bufferOffset);
    // Serialize message field [rearslipangle]
    bufferOffset = _serializer.float32(obj.rearslipangle, buffer, bufferOffset);
    // Serialize message field [frontlongitudinalforce]
    bufferOffset = _serializer.float32(obj.frontlongitudinalforce, buffer, bufferOffset);
    // Serialize message field [rearlongitudinalforce]
    bufferOffset = _serializer.float32(obj.rearlongitudinalforce, buffer, bufferOffset);
    // Serialize message field [vxdot]
    bufferOffset = _serializer.float32(obj.vxdot, buffer, bufferOffset);
    // Serialize message field [deltadot]
    bufferOffset = _serializer.float32(obj.deltadot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleForce
    let len;
    let data = new VehicleForce(null);
    // Deserialize message field [frontlateralforce]
    data.frontlateralforce = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontslipangle]
    data.frontslipangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearlateralforce]
    data.rearlateralforce = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearslipangle]
    data.rearslipangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontlongitudinalforce]
    data.frontlongitudinalforce = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearlongitudinalforce]
    data.rearlongitudinalforce = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vxdot]
    data.vxdot = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [deltadot]
    data.deltadot = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_force_msgs/VehicleForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2afff5c6ed09aa9fbd688ff68067a55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message decribes the forces of vehicle from road
    
    float32 frontlateralforce
    float32 frontslipangle
    float32 rearlateralforce
    float32 rearslipangle
    float32 frontlongitudinalforce
    float32 rearlongitudinalforce
    float32 vxdot
    float32 deltadot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleForce(null);
    if (msg.frontlateralforce !== undefined) {
      resolved.frontlateralforce = msg.frontlateralforce;
    }
    else {
      resolved.frontlateralforce = 0.0
    }

    if (msg.frontslipangle !== undefined) {
      resolved.frontslipangle = msg.frontslipangle;
    }
    else {
      resolved.frontslipangle = 0.0
    }

    if (msg.rearlateralforce !== undefined) {
      resolved.rearlateralforce = msg.rearlateralforce;
    }
    else {
      resolved.rearlateralforce = 0.0
    }

    if (msg.rearslipangle !== undefined) {
      resolved.rearslipangle = msg.rearslipangle;
    }
    else {
      resolved.rearslipangle = 0.0
    }

    if (msg.frontlongitudinalforce !== undefined) {
      resolved.frontlongitudinalforce = msg.frontlongitudinalforce;
    }
    else {
      resolved.frontlongitudinalforce = 0.0
    }

    if (msg.rearlongitudinalforce !== undefined) {
      resolved.rearlongitudinalforce = msg.rearlongitudinalforce;
    }
    else {
      resolved.rearlongitudinalforce = 0.0
    }

    if (msg.vxdot !== undefined) {
      resolved.vxdot = msg.vxdot;
    }
    else {
      resolved.vxdot = 0.0
    }

    if (msg.deltadot !== undefined) {
      resolved.deltadot = msg.deltadot;
    }
    else {
      resolved.deltadot = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleForce;
