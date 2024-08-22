import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_site_etapas15_widget.dart' show CreateSiteEtapas15Widget;
import 'package:flutter/material.dart';

class CreateSiteEtapas15Model
    extends FlutterFlowModel<CreateSiteEtapas15Widget> {
  ///  Local state fields for this page.

  dynamic domainsSelected;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Domains)] action in CreateSiteEtapas15 widget.
  ApiCallResponse? apiResultDomains;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (DomainCheck)] action in TextField widget.
  ApiCallResponse? apiDomainCheck;
  // Stores action output result for [Backend Call - API (DomainCheck)] action in Button widget.
  ApiCallResponse? apiDomainCheckUpdate;
  // Stores action output result for [Backend Call - API (GetSite)] action in Button widget.
  ApiCallResponse? siteResult;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    footerModel.dispose();
  }
}
