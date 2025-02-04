import '/components/footer/footer_widget.dart';
import '/components/header_balao_whats/header_balao_whats_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_package_widget.dart' show FirstPackageWidget;
import 'package:flutter/material.dart';

class FirstPackageModel extends FlutterFlowModel<FirstPackageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalaoWhats component.
  late HeaderBalaoWhatsModel headerBalaoWhatsModel;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerBalaoWhatsModel = createModel(context, () => HeaderBalaoWhatsModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerBalaoWhatsModel.dispose();
    footerModel.dispose();
  }
}
