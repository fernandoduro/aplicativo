import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/services/text_field_hours/text_field_hours_widget.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas18_model.dart';
export 'create_site_etapas18_model.dart';

class CreateSiteEtapas18Widget extends StatefulWidget {
  const CreateSiteEtapas18Widget({super.key});

  @override
  State<CreateSiteEtapas18Widget> createState() =>
      _CreateSiteEtapas18WidgetState();
}

class _CreateSiteEtapas18WidgetState extends State<CreateSiteEtapas18Widget> {
  late CreateSiteEtapas18Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas18Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas18'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS18_CreateSiteEtapas18_');
      logFirebaseEvent('CreateSiteEtapas18_custom_action');
      await actions.lockOrientation();
      logFirebaseEvent('CreateSiteEtapas18_update_app_state');
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
              Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: wrapWithModel(
                          model: _model.headerHelpModel,
                          updateCallback: () => safeSetState(() {}),
                          child: HeaderHelpWidget(),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 0.0),
                                                child: Text(
                                                  'Preencha no campo abaixo seus horários de atendimento:',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: (isWeb
                                                                ? MediaQuery.viewInsetsOf(
                                                                            context)
                                                                        .bottom >
                                                                    0
                                                                : _isKeyboardVisible)
                                                            ? 20.0
                                                            : 30.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final work = getJsonField(
                                                        FFAppState().hoursWork,
                                                        r'''$.days''',
                                                      )
                                                          .toList()
                                                          .take(100000)
                                                          .toList();

                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children:
                                                              List.generate(
                                                                  work.length,
                                                                  (workIndex) {
                                                            final workItem =
                                                                work[workIndex];
                                                            return Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      workItem,
                                                                      r'''$.dayWeek''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                                Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final hours =
                                                                        functions
                                                                            .handleNullList(getJsonField(
                                                                              workItem,
                                                                              r'''$.hours''',
                                                                            ))
                                                                            .toList();

                                                                    return Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          hours
                                                                              .length,
                                                                          (hoursIndex) {
                                                                        final hoursItem =
                                                                            hours[hoursIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              TextFieldHoursWidget(
                                                                                key: Key('Keyj5y_${hoursIndex}_of_${hours.length}'),
                                                                                valor: getJsonField(
                                                                                  hoursItem,
                                                                                  r'''$.start''',
                                                                                ),
                                                                                hint: 'Inicio',
                                                                                indexHour: hoursIndex,
                                                                                indexDayWeek: workIndex,
                                                                                typeHour: 'start',
                                                                              ),
                                                                              TextFieldHoursWidget(
                                                                                key: Key('Key114_${hoursIndex}_of_${hours.length}'),
                                                                                valor: getJsonField(
                                                                                  hoursItem,
                                                                                  r'''$.end''',
                                                                                ),
                                                                                hint: 'Final',
                                                                                indexHour: hoursIndex,
                                                                                indexDayWeek: workIndex,
                                                                                typeHour: 'end',
                                                                              ),
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: FlutterFlowIconButton(
                                                                                          borderColor: Colors.transparent,
                                                                                          borderRadius: 30.0,
                                                                                          buttonSize: 46.0,
                                                                                          icon: Icon(
                                                                                            Icons.remove_circle_outline,
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                          onPressed: () async {
                                                                                            logFirebaseEvent('CREATE_SITE_ETAPAS18_remove_circle_outli');
                                                                                            logFirebaseEvent('IconButton_custom_action');
                                                                                            _model.removeWork = await actions.removeJsonToJsonAction(
                                                                                              getJsonField(
                                                                                                workItem,
                                                                                                r'''$''',
                                                                                              ),
                                                                                              hoursIndex,
                                                                                              'hours',
                                                                                            );
                                                                                            logFirebaseEvent('IconButton_update_page_state');
                                                                                            _model.totalHours = int.parse(_model.totalHours!.toString()) - 1;
                                                                                            safeSetState(() {});

                                                                                            safeSetState(() {});
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Flexible(
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 46.0,
                                                                                        icon: Icon(
                                                                                          Icons.add_circle_outline,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('CREATE_SITE_ETAPAS18_add_circle_outline_');
                                                                                          logFirebaseEvent('IconButton_custom_action');
                                                                                          _model.hoursAdd = await actions.addJsonToJsonAction(
                                                                                            getJsonField(
                                                                                              workItem,
                                                                                              r'''$''',
                                                                                            ),
                                                                                            <String, String?>{
                                                                                              'start': '',
                                                                                              'end': '',
                                                                                            },
                                                                                            'hours',
                                                                                          );
                                                                                          logFirebaseEvent('IconButton_update_page_state');
                                                                                          _model.totalHours = int.parse(_model.totalHours!.toString()) + 1;
                                                                                          safeSetState(() {});

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }),
                                                                    );
                                                                  },
                                                                ),
                                                                if (getJsonField(
                                                                      workItem,
                                                                      r'''$.hours[*].start''',
                                                                    ) ==
                                                                    null)
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceAround,
                                                                        children: [
                                                                          Text(
                                                                            ' Nenhum horário cadastrado',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                30.0,
                                                                            buttonSize:
                                                                                46.0,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.add_circle_outline,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('CREATE_SITE_ETAPAS18_add_circle_outline_');
                                                                              logFirebaseEvent('IconButton_custom_action');
                                                                              _model.hoursAdd2 = await actions.addJsonToJsonAction(
                                                                                getJsonField(
                                                                                  workItem,
                                                                                  r'''$''',
                                                                                ),
                                                                                <String, String?>{
                                                                                  'start': '',
                                                                                  'end': '',
                                                                                },
                                                                                'hours',
                                                                              );
                                                                              logFirebaseEvent('IconButton_update_page_state');
                                                                              _model.totalHours = int.parse(_model.totalHours!.toString()) + 1;
                                                                              safeSetState(() {});

                                                                              safeSetState(() {});
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                              ],
                                                            );
                                                          }),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 36.0),
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
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'CREATE_SITE_ETAPAS18_AVANAR_BTN_ON_TAP');
                                                    if (_model.totalHours
                                                            .toString() ==
                                                        '0') {
                                                      logFirebaseEvent(
                                                          'Button_show_snack_bar');
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Preencha os horários de atendimentos.',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .error,
                                                        ),
                                                      );
                                                    } else {
                                                      logFirebaseEvent(
                                                          'Button_backend_call');
                                                      _model.apiResultlsp2 =
                                                          await APIOficialGroup
                                                              .addHoursWorkProfessionalsCall
                                                              .call(
                                                        authToken:
                                                            currentAuthenticationToken,
                                                        disponibilityJson:
                                                            getJsonField(
                                                          FFAppState()
                                                              .hoursWork,
                                                          r'''$''',
                                                        ),
                                                      );

                                                      if ((_model.apiResultlsp2
                                                              ?.succeeded ??
                                                          true)) {
                                                        logFirebaseEvent(
                                                            'Button_navigate_to');

                                                        context.pushNamed(
                                                            'CreateSiteEtapas19');
                                                      } else {
                                                        logFirebaseEvent(
                                                            'Button_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              getJsonField(
                                                                (_model.apiResultlsp2
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.message''',
                                                              ).toString(),
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                          ),
                                                        );
                                                      }
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  text: 'Avançar',
                                                  options: FFButtonOptions(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8,
                                                    height: 40.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: wrapWithModel(
                              model: _model.footerModel,
                              updateCallback: () => safeSetState(() {}),
                              child: FooterWidget(),
                            ),
                          ),
                        ],
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
