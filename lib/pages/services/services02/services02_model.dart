import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'services02_widget.dart' show Services02Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Services02Model extends FlutterFlowModel<Services02Widget> {
  ///  Local state fields for this page.

  int editService = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationTextController;
  String? Function(BuildContext, String?)? durationTextControllerValidator;
  String? _durationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for extra_duration widget.
  FocusNode? extraDurationFocusNode;
  TextEditingController? extraDurationTextController;
  String? Function(BuildContext, String?)? extraDurationTextControllerValidator;
  // State field(s) for individual widget.
  bool? individualValue;
  // State field(s) for maxclients widget.
  FocusNode? maxclientsFocusNode;
  TextEditingController? maxclientsTextController;
  String? Function(BuildContext, String?)? maxclientsTextControllerValidator;
  // Stores action output result for [Backend Call - API (CreateService)] action in Button widget.
  ApiCallResponse? apiResultey8;
  // Stores action output result for [Backend Call - API (UpdateService)] action in Button widget.
  ApiCallResponse? apiResultxos11;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  /// Query cache managers for this widget.

  final _serviceCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> serviceCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _serviceCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearServiceCacheCache() => _serviceCacheManager.clear();
  void clearServiceCacheCacheKey(String? uniqueKey) =>
      _serviceCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    nameTextControllerValidator = _nameTextControllerValidator;
    durationTextControllerValidator = _durationTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    durationFocusNode?.dispose();
    durationTextController?.dispose();

    extraDurationFocusNode?.dispose();
    extraDurationTextController?.dispose();

    maxclientsFocusNode?.dispose();
    maxclientsTextController?.dispose();

    footerWhiteModel.dispose();

    /// Dispose query cache managers for this widget.

    clearServiceCacheCache();
  }
}
