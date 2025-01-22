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

import '/backend/api_requests/api_interceptor.dart';
import 'package:universal_html/html.dart';

bool isRequestInProgress = false;

class SwitchApiInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({required ApiCallOptions options}) async {
    print('Interceptando chamada: ${options.callName}, URL: ${options.apiUrl}');

    // Verificar se a chamada já foi interceptada
    if (options.headers.containsKey('Intercepted')) {
      print('Requisição já interceptada: ${options.apiUrl}');
      return options;
    }

    // Adicionar cabeçalhos e marcar como interceptada
    final updatedHeaders = Map<String, String>.from(options.headers)
      ..['appID'] = FFAppState().appId
      ..['url'] = FFAppState().activePage
      ..['Intercepted'] = 'true';

    print('Adicionando cabeçalhos: $updatedHeaders');

    var newOptions = ApiCallOptions(
      callName: options.callName,
      callType: options.callType,
      apiUrl: options.apiUrl,
      headers: updatedHeaders,
      params: options.params,
      bodyType: options.bodyType,
      body: options.body,
      returnBody: options.returnBody,
      encodeBodyUtf8: options.encodeBodyUtf8,
      decodeUtf8: options.decodeUtf8,
      alwaysAllowBody: options.alwaysAllowBody,
      cache: options.cache,
    );

    return newOptions;
  }
}
