import '/components/footer/footer_widget.dart';
import '/components/header_balao/header_balao_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'first_access_config_widget.dart' show FirstAccessConfigWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstAccessConfigModel extends FlutterFlowModel<FirstAccessConfigWidget> {
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
