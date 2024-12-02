import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'schedule01_widget.dart' show Schedule01Widget;
import 'package:flutter/material.dart';

class Schedule01Model extends FlutterFlowModel<Schedule01Widget> {
  ///  Local state fields for this page.

  bool isCalendarExpanded = false;

  DateTime? dateSelected;

  bool existHours = false;

  dynamic listSchedule;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ListSchedule)] action in Schedule01 widget.
  ApiCallResponse? apiResultrko;
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (ListSchedule)] action in Calendar widget.
  ApiCallResponse? apiResultrkoNew;
  // State field(s) for calendarReduce widget.
  DateTimeRange? calendarReduceSelectedDay;
  // Stores action output result for [Backend Call - API (ListSchedule)] action in calendarReduce widget.
  ApiCallResponse? apiResultrkored;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Icon widget.
  ApiCallResponse? apiResult9co21;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Icon widget.
  ApiCallResponse? apiResult9co22;
  // Stores action output result for [Backend Call - API (DeleteAppoitment)] action in Icon widget.
  ApiCallResponse? apiResult9co2;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarReduceSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    footerModel.dispose();
  }
}
