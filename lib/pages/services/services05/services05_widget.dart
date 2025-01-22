import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/services/text_field_hours/text_field_hours_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'services05_model.dart';
export 'services05_model.dart';

class Services05Widget extends StatefulWidget {
  const Services05Widget({
    super.key,
    required this.originConfig,
  });

  final String? originConfig;

  @override
  State<Services05Widget> createState() => _Services05WidgetState();
}

class _Services05WidgetState extends State<Services05Widget> {
  late Services05Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Services05Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Services05'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SERVICES05_PAGE_Services05_ON_INIT_STATE');
      logFirebaseEvent('Services05_backend_call');
      _model.apiResultjh62 = await APIOficialGroup.getUserCall.call(
        authToken: currentAuthenticationToken,
      );

      if ((_model.apiResultjh62?.succeeded ?? true)) {
        logFirebaseEvent('Services05_custom_action');
        _model.disponibility = await actions.convertStringToJson(
          getJsonField(
            (_model.apiResultjh62?.jsonBody ?? ''),
            r'''$.disponibility''',
          ).toString().toString(),
        );
        if (getJsonField(
              _model.disponibility,
              r'''$''',
            ) !=
            null) {
          logFirebaseEvent('Services05_update_app_state');
          FFAppState().hoursWork = getJsonField(
            _model.disponibility,
            r'''$''',
          );
          safeSetState(() {});
        }
      }
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.headerHelpModel,
                                updateCallback: () => safeSetState(() {}),
                                child: const HeaderHelpWidget(),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Form(
                                        key: _model.formKey,
                                        autovalidateMode:
                                            AutovalidateMode.disabled,
                                        child: Container(
                                          constraints: BoxConstraints(
                                            minHeight:
                                                MediaQuery.sizeOf(context)
                                                        .height *
                                                    0.85,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'Meus horários',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displaySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      30.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          )
                                                        ],
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      30.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                16.0, 32.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          16.0,
                                                                          16.0,
                                                                          16.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final work =
                                                                      getJsonField(
                                                                    FFAppState()
                                                                        .hoursWork,
                                                                    r'''$.days''',
                                                                  )
                                                                          .toList()
                                                                          .take(
                                                                              100000)
                                                                          .toList();

                                                                  return SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          work.length,
                                                                          (workIndex) {
                                                                        final workItem =
                                                                            work[workIndex];
                                                                        return Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  workItem,
                                                                                  r'''$.dayWeek''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: double.infinity,
                                                                              height: 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                            Builder(
                                                                              builder: (context) {
                                                                                final hours = functions
                                                                                    .handleNullList(getJsonField(
                                                                                      workItem,
                                                                                      r'''$.hours''',
                                                                                    ))
                                                                                    .toList();

                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: List.generate(hours.length, (hoursIndex) {
                                                                                    final hoursItem = hours[hoursIndex];
                                                                                    return Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          TextFieldHoursWidget(
                                                                                            key: Key('Keyxwe_${hoursIndex}_of_${hours.length}'),
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
                                                                                            key: Key('Key7e9_${hoursIndex}_of_${hours.length}'),
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
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
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
                                                                                                        logFirebaseEvent('SERVICES05_remove_circle_outline_ICN_ON_');
                                                                                                        logFirebaseEvent('IconButton_custom_action');
                                                                                                        _model.removeWork = await actions.removeJsonToJsonAction(
                                                                                                          getJsonField(
                                                                                                            workItem,
                                                                                                            r'''$''',
                                                                                                          ),
                                                                                                          hoursIndex,
                                                                                                          'hours',
                                                                                                        );

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
                                                                                                      logFirebaseEvent('SERVICES05_add_circle_outline_ICN_ON_TAP');
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
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Text(
                                                                                        ' Nenhum horário cadastrado',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              font: GoogleFonts.manrope(),
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      FlutterFlowIconButton(
                                                                                        borderColor: Colors.transparent,
                                                                                        borderRadius: 30.0,
                                                                                        buttonSize: 46.0,
                                                                                        icon: Icon(
                                                                                          Icons.add_circle_outline,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('SERVICES05_add_circle_outline_ICN_ON_TAP');
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
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'SERVICES05_SALVAR_INFORMAES_BTN_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');
                                                                      _model.apiResultlsp = await APIOficialGroup
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

                                                                      if ((_model
                                                                              .apiResultlsp
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        logFirebaseEvent(
                                                                            'Button_show_snack_bar');
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              'Tudo certo! Registramos estas informações.',
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).secondary,
                                                                          ),
                                                                        );
                                                                        if ((widget.originConfig == 'schedule') ||
                                                                            (widget.originConfig ==
                                                                                'client') ||
                                                                            (widget.originConfig ==
                                                                                'newClient')) {
                                                                          logFirebaseEvent(
                                                                              'Button_action_block');
                                                                          await action_blocks
                                                                              .firstConfigNavigation(
                                                                            context,
                                                                            originConfig:
                                                                                widget.originConfig,
                                                                          );
                                                                        }
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Button_show_snack_bar');
                                                                        ScaffoldMessenger.of(context)
                                                                            .showSnackBar(
                                                                          SnackBar(
                                                                            content:
                                                                                Text(
                                                                              getJsonField(
                                                                                (_model.apiResultlsp?.jsonBody ?? ''),
                                                                                r'''$.message''',
                                                                              ).toString(),
                                                                              style: TextStyle(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                            duration:
                                                                                const Duration(milliseconds: 4000),
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                          ),
                                                                        );
                                                                      }

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Salvar informações',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.manrope(),
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.footerWhiteModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const FooterWhiteWidget(),
                                  ),
                                ],
                              ),
                            ],
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
