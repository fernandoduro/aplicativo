import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'domains_radio_model.dart';
export 'domains_radio_model.dart';

class DomainsRadioWidget extends StatefulWidget {
  const DomainsRadioWidget({
    super.key,
    required this.domainJson,
  });

  final dynamic domainJson;

  @override
  State<DomainsRadioWidget> createState() => _DomainsRadioWidgetState();
}

class _DomainsRadioWidgetState extends State<DomainsRadioWidget> {
  late DomainsRadioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DomainsRadioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        FlutterFlowRadioButton(
          options: (getJsonField(
            widget.domainJson,
            r'''$''',
            true,
          ) as List)
              .map<String>((s) => s.toString())
              .toList()
              .toList(),
          onChanged: (val) async {
            safeSetState(() {});
            logFirebaseEvent('DOMAINS_RADIO_RadioButton_wm9or6gn_ON_FO');
            logFirebaseEvent('RadioButton_set_form_field');
            safeSetState(() {
              _model.radioButtonValueController?.value =
                  _model.radioButtonValue!;
            });
          },
          controller: _model.radioButtonValueController ??=
              FormFieldController<String>(null),
          optionHeight: 32.0,
          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Manrope',
                letterSpacing: 0.0,
              ),
          selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Manrope',
                letterSpacing: 0.0,
              ),
          buttonPosition: RadioButtonPosition.left,
          direction: Axis.vertical,
          radioButtonColor: FlutterFlowTheme.of(context).primary,
          inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
          toggleable: false,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.start,
        ),
      ],
    );
  }
}
