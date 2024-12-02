import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'first_access_loyalty_widget.dart' show FirstAccessLoyaltyWidget;
import 'package:flutter/material.dart';

class FirstAccessLoyaltyModel
    extends FlutterFlowModel<FirstAccessLoyaltyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderHelp component.
  late HeaderHelpModel headerHelpModel;
  // Stores action output result for [Action Block - CheckSubscription] action in Button widget.
  bool? subscriptionResultLoyalt;
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
