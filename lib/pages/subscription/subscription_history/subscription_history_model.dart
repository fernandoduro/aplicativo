import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscription_history_widget.dart' show SubscriptionHistoryWidget;
import 'package:flutter/material.dart';

class SubscriptionHistoryModel
    extends FlutterFlowModel<SubscriptionHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
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
    paginatedDataTableController.dispose();
    footerModel.dispose();
  }
}
