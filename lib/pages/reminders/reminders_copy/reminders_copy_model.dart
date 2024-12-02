import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/reminders/switch_lembretes/switch_lembretes_widget.dart';
import 'reminders_copy_widget.dart' show RemindersCopyWidget;
import 'package:flutter/material.dart';

class RemindersCopyModel extends FlutterFlowModel<RemindersCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Models for SwitchLembretes dynamic component.
  late FlutterFlowDynamicModels<SwitchLembretesModel> switchLembretesModels;
  // Model for FooterWhite component.
  late FooterWhiteModel footerWhiteModel;

  @override
  void initState(BuildContext context) {
    headerHelpModel = createModel(context, () => HeaderHelpModel());
    switchLembretesModels =
        FlutterFlowDynamicModels(() => SwitchLembretesModel());
    footerWhiteModel = createModel(context, () => FooterWhiteModel());
  }

  @override
  void dispose() {
    headerHelpModel.dispose();
    switchLembretesModels.dispose();
    footerWhiteModel.dispose();
  }
}
