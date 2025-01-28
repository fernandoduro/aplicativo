// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future oneSignalRegister() async {
  // OneSignal.Notifications.requestPermission(true);
  OneSignal.Notifications.canRequest().then((value) {
    if (value) {
      OneSignal.Notifications.requestPermission(true);
    }
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
