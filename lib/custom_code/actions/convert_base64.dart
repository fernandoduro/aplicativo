// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

import 'dart:convert';

Future<String> convertBase64(FFUploadedFile? uploadedFile) async {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (uploadedFile == null) {
    return "error";
  }

  String extension = uploadedFile.name.toString().split('.').last;
  List<int> imageBytes = uploadedFile.bytes!.cast<int>();
  String base64 = base64Encode(imageBytes);
  return "data:image/" + extension + ";base64," + base64;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
