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

Future<dynamic> addJsonToJsonAction(
  dynamic lista,
  dynamic element,
  String? coluna,
) async {
  // Adicionar um json em outro json no elemento

  if (element == null || element == "null") {
    return lista;
  }

  if (lista[coluna] != null) {
    if (!lista[coluna].contains(element)) {
      lista[coluna].add((element));
    }
  }

  return lista;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
