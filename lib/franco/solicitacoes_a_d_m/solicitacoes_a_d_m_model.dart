import '/auth/custom_auth/auth_util.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/franco/footer_franco/footer_franco_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'solicitacoes_a_d_m_widget.dart' show SolicitacoesADMWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SolicitacoesADMModel extends FlutterFlowModel<SolicitacoesADMWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for FooterFranco component.
  late FooterFrancoModel footerFrancoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerFrancoModel = createModel(context, () => FooterFrancoModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    tabBarController?.dispose();
    footerFrancoModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
