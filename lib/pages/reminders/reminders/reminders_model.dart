import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/reminders/switch_lembretes/switch_lembretes_widget.dart';
import 'dart:ui';
import 'reminders_widget.dart' show RemindersWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RemindersModel extends FlutterFlowModel<RemindersWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Models for SwitchLembretes dynamic component.
  late FlutterFlowDynamicModels<SwitchLembretesModel> switchLembretesModels;
  // Model for Footer component.
  late FooterModel footerModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    switchLembretesModels =
        FlutterFlowDynamicModels(() => SwitchLembretesModel());
    footerModel = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    switchLembretesModels.dispose();
    footerModel.dispose();
  }
}
