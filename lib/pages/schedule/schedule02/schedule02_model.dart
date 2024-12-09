import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'schedule02_widget.dart' show Schedule02Widget;
import 'package:flutter/material.dart';

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
