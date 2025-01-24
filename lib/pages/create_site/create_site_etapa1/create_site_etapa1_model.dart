import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapa1_widget.dart' show CreateSiteEtapa1Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapa1Model extends FlutterFlowModel<CreateSiteEtapa1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerBalaoModel = createModel(context, () => HeaderBalaoModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerBalaoModel.dispose();
    footerModel.dispose();
  }
}
