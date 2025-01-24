import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas16_model.dart';
export 'create_site_etapas16_model.dart';

class CreateSiteEtapas16Widget extends StatefulWidget {
  const CreateSiteEtapas16Widget({super.key});

  @override
  State<CreateSiteEtapas16Widget> createState() =>
      _CreateSiteEtapas16WidgetState();
}

class _CreateSiteEtapas16WidgetState extends State<CreateSiteEtapas16Widget> {
  late CreateSiteEtapas16Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas16Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas16'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS16_CreateSiteEtapas16_');
      logFirebaseEvent('CreateSiteEtapas16_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('CreateSiteEtapas16_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: wrapWithModel(
                      model: _model.headerHelpModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const HeaderHelpWidget(),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.85,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height * 0.67,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 16.0),
                                            child: Text(
                                              'Qual a forma de atendimento?',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model.onlineValue ??=
                                                      functions
                                                          .existeElementSpecifcList(
                                                              getJsonField(
                                                                FFAppState()
                                                                    .dataSite,
                                                                r'''$.in_person_service''',
                                                              ),
                                                              'online')!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.onlineValue =
                                                            newValue!);
                                                  },
                                                  side: BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Online',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .presencialValue ??=
                                                      functions
                                                          .existeElementSpecifcList(
                                                              getJsonField(
                                                                FFAppState()
                                                                    .dataSite,
                                                                r'''$.in_person_service''',
                                                              ),
                                                              'presencial')!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.presencialValue =
                                                            newValue!);
                                                  },
                                                  side: BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Presencial',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  checkboxTheme:
                                                      CheckboxThemeData(
                                                    visualDensity:
                                                        VisualDensity.compact,
                                                    materialTapTargetSize:
                                                        MaterialTapTargetSize
                                                            .shrinkWrap,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                  ),
                                                  unselectedWidgetColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                ),
                                                child: Checkbox(
                                                  value: _model
                                                          .domiciliarValue ??=
                                                      functions
                                                          .existeElementSpecifcList(
                                                              getJsonField(
                                                                FFAppState()
                                                                    .dataSite,
                                                                r'''$.in_person_service''',
                                                              ),
                                                              'domiciliar')!,
                                                  onChanged: (newValue) async {
                                                    safeSetState(() =>
                                                        _model.domiciliarValue =
                                                            newValue!);
                                                  },
                                                  side: BorderSide(
                                                    width: 2,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                  ),
                                                  activeColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  checkColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .info,
                                                ),
                                              ),
                                              Text(
                                                'Atendimento domiciliar',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 40.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: ((_model
                                                              .onlineValue ==
                                                          false) &&
                                                      (_model.presencialValue ==
                                                          false) &&
                                                      (_model.domiciliarValue ==
                                                          false))
                                                  ? null
                                                  : () async {
                                                      logFirebaseEvent(
                                                          'CREATE_SITE_ETAPAS16_AVANAR_BTN_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Button_custom_action');
                                                      _model.servicesResult =
                                                          await actions
                                                              .addPersonServices(
                                                        _model.onlineValue!,
                                                        _model.presencialValue!,
                                                        _model.domiciliarValue!,
                                                      );
                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      _model.updatesite17 =
                                                          await APIOficialGroup
                                                              .updateSiteCall
                                                              .call(
                                                        authToken:
                                                            currentAuthenticationToken,
                                                        bodyJson: <String,
                                                            String?>{
                                                          'in_person_service':
                                                              _model
                                                                  .servicesResult,
                                                        },
                                                      );

                                                      if (_model
                                                              .presencialValue ==
                                                          true) {
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            'CreateSiteEtapas17');
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        await APIOficialGroup
                                                            .updateSiteCall
                                                            .call(
                                                          authToken:
                                                              currentAuthenticationToken,
                                                          bodyJson: <String,
                                                              String?>{
                                                            'cep': '',
                                                            'address': '',
                                                            'number': '',
                                                            'complement': '',
                                                            'neighborhood': '',
                                                            'city': '',
                                                            'uf': '',
                                                          },
                                                        );

                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        _model.listScheduleCode4 =
                                                            await APIOficialGroup
                                                                .listScheduleCall
                                                                .call(
                                                          authToken:
                                                              currentAuthenticationToken,
                                                          dataFiltro:
                                                              dateTimeFormat(
                                                            "y-MM-d",
                                                            random_data
                                                                .randomDate(),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                        );

                                                        if (functions
                                                                .convertJsonToString(
                                                                    getJsonField(
                                                              (_model.listScheduleCode4
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.error_code''',
                                                            )) ==
                                                            'no_schedule') {
                                                          logFirebaseEvent(
                                                              'Button_navigate_to');

                                                          context.pushNamed(
                                                              'CreateSiteEtapas18');
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Button_navigate_to');

                                                          context.pushNamed(
                                                              'CreateSiteEtapas19');
                                                        }
                                                      }

                                                      logFirebaseEvent(
                                                          'Button_update_app_state');
                                                      FFAppState().dataSite =
                                                          getJsonField(
                                                        (_model.updatesite17
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.data''',
                                                      );
                                                      safeSetState(() {});

                                                      safeSetState(() {});
                                                    },
                                              text: 'Avançar',
                                              options: FFButtonOptions(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.8,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                disabledColor:
                                                    const Color(0xFFACACAC),
                                                disabledTextColor:
                                                    const Color(0xFFD9D9D9),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: (isWeb
                                              ? MediaQuery.viewInsetsOf(context)
                                                      .bottom >
                                                  0
                                              : _isKeyboardVisible)
                                          ? 300.0
                                          : 0.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.footerModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const FooterWidget(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
