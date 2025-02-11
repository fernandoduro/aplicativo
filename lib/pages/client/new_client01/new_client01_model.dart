import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'new_client01_widget.dart' show NewClient01Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class NewClient01Model extends FlutterFlowModel<NewClient01Widget> {
  ///  Local state fields for this page.

  int? idClientUpdateBackNavig;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getClientByID)] action in NewClient01 widget.
  ApiCallResponse? apiResultEditClient;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  String? _nomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  final whatsappMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for status widget.
  bool? statusValue;
  // Stores action output result for [Backend Call - API (editClient)] action in Button widget.
  ApiCallResponse? apiResultEditClients;
  // Stores action output result for [Backend Call - API (CreateClient)] action in Button widget.
  ApiCallResponse? apiResultuit;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  /// Query cache managers for this widget.

  final _cacheCPFManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheCPF({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheCPFManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheCPFCache() => _cacheCPFManager.clear();
  void clearCacheCPFCacheKey(String? uniqueKey) =>
      _cacheCPFManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    nomeTextControllerValidator = _nomeTextControllerValidator;
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    footerWhiteModel.dispose();

    /// Dispose query cache managers for this widget.

    clearCacheCPFCache();
  }
}
