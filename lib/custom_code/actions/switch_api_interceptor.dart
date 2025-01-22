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
    if (isRequestInProgress) {
      print('Ignorando requisição duplicada: ${options.apiUrl}');
      return options;
    }

    isRequestInProgress = true;
    try {
      final updatedHeaders = Map<String, String>.from(options.headers)
        ..['appID'] = FFAppState().appId
        ..['url'] = FFAppState().activePage;

      print('Processando requisição: ${options.apiUrl}');

      return ApiCallOptions(
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
    } finally {
      isRequestInProgress = false;
    }
  }
}
