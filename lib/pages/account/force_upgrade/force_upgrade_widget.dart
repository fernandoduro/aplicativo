import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'force_upgrade_model.dart';
export 'force_upgrade_model.dart';

class ForceUpgradeWidget extends StatefulWidget {
  const ForceUpgradeWidget({super.key});

  @override
  State<ForceUpgradeWidget> createState() => _ForceUpgradeWidgetState();
}

class _ForceUpgradeWidgetState extends State<ForceUpgradeWidget>
    with TickerProviderStateMixin {
  late ForceUpgradeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForceUpgradeModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ForceUpgrade'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FORCE_UPGRADE_ForceUpgrade_ON_INIT_STATE');
      logFirebaseEvent('ForceUpgrade_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('ForceUpgrade_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 3000.0.ms,
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/blubem-logo-aqua-neve-transparente.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.6,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).info,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              'Olá! Temos uma nova versão do aplicativo com algumas atualizações importantes.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF12151C),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(10.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              'Acesse por favor o botão abaixo para atualizar e continuar utilizando.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF12151C),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation3']!),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'FORCE_UPGRADE_ATUALIZAR_MEU_APLICATIVO_B');
                                  if (isiOS) {
                                    logFirebaseEvent('Button_launch_u_r_l');
                                    await launchURL(
                                        'https://apps.apple.com/us/app/blubem/id6683282788');
                                  } else {
                                    logFirebaseEvent('Button_launch_u_r_l');
                                    await launchURL(
                                        'https://play.google.com/store/apps/details?id=com.blubem.app');
                                  }
                                },
                                text: 'Atualizar meu aplicativo',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 44.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['buttonOnPageLoadAnimation']!),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.06, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/meninablu.png',
                            width: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
