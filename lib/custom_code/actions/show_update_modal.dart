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

Future<bool> showUpdateModal(
  int cloudRemoteVersion,
  int localAppVersion,
) async {
  // create function arguments
  // Function to show update modal if cloudRemoteVersion is greater than localAppVersion
  // Returns true if update modal is shown, false otherwise

  if (localAppVersion < cloudRemoteVersion) {
    // Show update modal
    return true;
  } else {
    return false;
  }
}
