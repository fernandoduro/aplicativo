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

import 'dart:convert';

import 'dart:developer';
import 'dart:io';

Future<String> convertAudioPathToBase64(String? audioPath) async {
  // convert Audio Path To Base64
  try {
    // Faz o download do áudio

    File file = File.fromUri(Uri.parse(audioPath!));

    try {
      // Uint8List? audioBytes;
      // audioBytes = await file.readAsBytes();
      // String base64Audio = base64Encode(audioBytes);

      List<int> audioBytes = await file.readAsBytes();
      // Encode the audio bytes to base64
      String base64Audio = base64Encode(audioBytes);

      log("base64Audiobase64Audiobase64Audio >>>>>> $base64Audio");
      // log(reallyReallyLongText);
      return base64Audio;
    } catch (e) {
      // Handle iOS file reading exception
      print("Error reading file on iOS: $e");
      return "";
    }
  } catch (e) {
    throw Exception('Erro: $e');
  }
}
