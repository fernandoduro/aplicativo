import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/request_manager.dart';

import 'services04_widget.dart' show Services04Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Services04Model extends FlutterFlowModel<Services04Widget> {
  ///  Local state fields for this page.

  dynamic packagesAdd;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for metodo widget.
  String? metodoValue;
  FormFieldController<String>? metodoValueController;
  // State field(s) for day widget.
  FocusNode? dayFocusNode;
  TextEditingController? dayTextController;
  final dayMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? dayTextControllerValidator;
  // Stores action output result for [Backend Call - API (DefaultDaysPayment)] action in Button widget.
  ApiCallResponse? apiResulttmj;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  /// Query cache managers for this widget.

  final _userCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> userCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _userCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserCacheCache() => _userCacheManager.clear();
  void clearUserCacheCacheKey(String? uniqueKey) =>
      _userCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    dayFocusNode?.dispose();
    dayTextController?.dispose();

    footerWhiteModel.dispose();

    /// Dispose query cache managers for this widget.

    clearUserCacheCache();
  }
}
