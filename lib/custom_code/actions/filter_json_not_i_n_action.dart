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

Future<dynamic> filterJsonNotINAction(
  dynamic lista,
  List<int>? excludedIds,
) async {
  // Adicionar um json em outro json no elemento
  if (excludedIds == null || excludedIds.isEmpty) {
    return lista;
  }
  List<dynamic> filteredData = lista['data']
      .where((client) => !excludedIds.contains(client['id']))
      .toList();

  // Atualizando o JSON original com a lista filtrada
  lista['data'] = filteredData;

  return lista;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
