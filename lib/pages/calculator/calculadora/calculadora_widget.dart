import '/auth/custom_auth/auth_util.dart';
import '/components/footer/footer_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calculadora_model.dart';
export 'calculadora_model.dart';

class CalculadoraWidget extends StatefulWidget {
  const CalculadoraWidget({super.key});

  @override
  State<CalculadoraWidget> createState() => _CalculadoraWidgetState();
}

class _CalculadoraWidgetState extends State<CalculadoraWidget>
    with TickerProviderStateMixin {
  late CalculadoraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculadoraModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Calculadora'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CALCULADORA_Calculadora_ON_INIT_STATE');
      logFirebaseEvent('Calculadora_custom_action');
      await actions.lockOrientation();
    });

    animationsMap.addAll({
      'webViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 210.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: FlutterFlowWebView(
                  content: functions.concateStrings(
                      'https://calculadora.blubem.com.br?token=',
                      currentAuthenticationToken)!,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                ).animateOnPageLoad(
                    animationsMap['webViewOnPageLoadAnimation']!),
              ),
              wrapWithModel(
                model: _model.footerModel,
                updateCallback: () => safeSetState(() {}),
                child: FooterWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
