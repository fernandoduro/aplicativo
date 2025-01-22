import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'schedule02_widget.dart' show Schedule02Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class Schedule02Model extends FlutterFlowModel<Schedule02Widget> {
  ///  Local state fields for this page.

  List<int> idsClientsSchedule = [];
  void addToIdsClientsSchedule(int item) => idsClientsSchedule.add(item);
  void removeFromIdsClientsSchedule(int item) =>
      idsClientsSchedule.remove(item);
  void removeAtIndexFromIdsClientsSchedule(int index) =>
      idsClientsSchedule.removeAt(index);
  void insertAtIndexInIdsClientsSchedule(int index, int item) =>
      idsClientsSchedule.insert(index, item);
  void updateIdsClientsScheduleAtIndex(int index, Function(int) updateFn) =>
      idsClientsSchedule[index] = updateFn(idsClientsSchedule[index]);

  dynamic scheduleJsonPage;

  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Row widget.
  ApiCallResponse? apiResult9co212;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Row widget.
  ApiCallResponse? apiResult9co223;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Row widget.
  ApiCallResponse? apiResult9co23232;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Button widget.
  ApiCallResponse? apiResult9co212Copy;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Button widget.
  ApiCallResponse? apiResult9co223Copy;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Button widget.
  ApiCallResponse? apiResult9co23232Copy;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Icon widget.
  ApiCallResponse? apiResult9co;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerModel.dispose();
  }
}
