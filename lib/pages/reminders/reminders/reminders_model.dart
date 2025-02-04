import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/reminders/switch_lembretes/switch_lembretes_widget.dart';
import 'reminders_widget.dart' show RemindersWidget;
import 'package:flutter/material.dart';

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
