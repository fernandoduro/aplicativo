import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'create_site_etapas11_widget.dart' show CreateSiteEtapas11Widget;
import 'package:flutter/material.dart';

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
