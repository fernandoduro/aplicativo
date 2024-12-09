import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'conversa_assistente_widget.dart' show ConversaAssistenteWidget;
import 'package:flutter/material.dart';

class ConversaAssistenteModel
    extends FlutterFlowModel<ConversaAssistenteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderBalao component.
  late HeaderBalaoModel headerBalaoModel;
  // Stores action output result for [Action Block - CheckSubscription] action in Button widget.
  bool? subscriptionResultSolicCopy;
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
