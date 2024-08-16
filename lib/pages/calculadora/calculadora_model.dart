import '/components/footer/footer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calculadora_widget.dart' show CalculadoraWidget;
import 'package:flutter/material.dart';

class CalculadoraModel extends FlutterFlowModel<CalculadoraWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    footerModel.dispose();
  }
}
