// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String> addPersonServices(
  bool online,
  bool presencial,
  bool domiciliar,
) async {
  // crie uma funcao que adicione strings em uma lista de string
  List<String> tiposAtendimentos = [];

  if (online!) {
    tiposAtendimentos.add("online");
  }

  if (presencial!) {
    tiposAtendimentos.add("presencial");
  }

  if (domiciliar!) {
    tiposAtendimentos.add("domiciliar");
  }

  return jsonEncode(tiposAtendimentos);
}
