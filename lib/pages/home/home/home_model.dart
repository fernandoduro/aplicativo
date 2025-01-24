import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/components/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - appBuild] action in Home widget.
  int? appBuild;
  // Stores action output result for [Custom Action - showUpdateModal] action in Home widget.
  bool? showUpdateModalAndroid;
  // Stores action output result for [Custom Action - showUpdateModal] action in Home widget.
  bool? showUpdateModalIOS;
  // Stores action output result for [Backend Call - API (Views)] action in Home widget.
  ApiCallResponse? apiResultView;
  // Stores action output result for [Backend Call - API (GetUser)] action in Home widget.
  ApiCallResponse? apiResultGetUserHome;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Stores action output result for [Backend Call - API (GetSite)] action in Button widget.
  ApiCallResponse? siteResult2;
  // Stores action output result for [Action Block - CheckSubscription] action in Button widget.
  bool? subscriptionResult2;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    headerModel.dispose();
    footerModel.dispose();
  }
}
