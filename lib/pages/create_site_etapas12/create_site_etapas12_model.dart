import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas12_widget.dart' show CreateSiteEtapas12Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas12Model
    extends FlutterFlowModel<CreateSiteEtapas12Widget> {
  ///  Local state fields for this page.

  String? colorSelected;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    footerModel.dispose();
  }
}
