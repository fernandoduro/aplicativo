import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/request_manager.dart';

import 'create_site_etapas11_widget.dart' show CreateSiteEtapas11Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';

class CreateSiteEtapas11Model
    extends FlutterFlowModel<CreateSiteEtapas11Widget> {
  ///  Local state fields for this page.

  int? imageSelected;

  String? imageSelectedSource;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Stores action output result for [Backend Call - API (UpdateSite)] action in Button widget.
  ApiCallResponse? updateSite11;
  // Model for Footer component.
  late FooterModel footerModel;

  /// Query cache managers for this widget.

  final _imagesCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> imagesCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _imagesCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearImagesCacheCache() => _imagesCacheManager.clear();
  void clearImagesCacheCacheKey(String? uniqueKey) =>
      _imagesCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerModel.dispose();

    /// Dispose query cache managers for this widget.

    clearImagesCacheCache();
  }
}
