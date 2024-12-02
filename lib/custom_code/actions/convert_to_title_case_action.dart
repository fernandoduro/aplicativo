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

Future<String> convertToTitleCaseAction(String? text) async {
  // how to capitalize first letter of each words in dynamic content
  if (text == null || text.isEmpty) {
    return "";
  }

  List<String> words = text.split(" ");
  String result = "";

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    String firstLetter = word.substring(0, 1).toUpperCase();
    String remainingLetters = word.substring(1).toLowerCase();
    result += "$firstLetter$remainingLetters ";
  }

  return result.trim();
}
