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

Future<dynamic> removeJsonToJsonAction(
  dynamic lista,
  int? index,
  String? coluna,
) async {
  // Adicionar um json em outro json no elemento

  if (index == null || index == "null") {
    return lista;
  }

  if (lista[coluna] != null) {
    lista[coluna].removeAt((index));
  }

  return lista;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
