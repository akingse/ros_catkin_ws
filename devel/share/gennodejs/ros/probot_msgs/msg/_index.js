
"use strict";

let SFUVersionNum = require('./SFUVersionNum.js');
let ProbotStatus = require('./ProbotStatus.js');
let PredefinedPoint = require('./PredefinedPoint.js');
let InterfaceReturnCode = require('./InterfaceReturnCode.js');
let SetOutputIO = require('./SetOutputIO.js');
let JogJoint = require('./JogJoint.js');
let JogPose = require('./JogPose.js');
let ControllerCtrl = require('./ControllerCtrl.js');
let PredefinedPointList = require('./PredefinedPointList.js');
let DemoCtrl = require('./DemoCtrl.js');
let Config = require('./Config.js');

module.exports = {
  SFUVersionNum: SFUVersionNum,
  ProbotStatus: ProbotStatus,
  PredefinedPoint: PredefinedPoint,
  InterfaceReturnCode: InterfaceReturnCode,
  SetOutputIO: SetOutputIO,
  JogJoint: JogJoint,
  JogPose: JogPose,
  ControllerCtrl: ControllerCtrl,
  PredefinedPointList: PredefinedPointList,
  DemoCtrl: DemoCtrl,
  Config: Config,
};
