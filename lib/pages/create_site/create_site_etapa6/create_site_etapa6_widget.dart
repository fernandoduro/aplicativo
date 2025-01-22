import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapa6_model.dart';
export 'create_site_etapa6_model.dart';

class CreateSiteEtapa6Widget extends StatefulWidget {
  const CreateSiteEtapa6Widget({super.key});

  @override
  State<CreateSiteEtapa6Widget> createState() => _CreateSiteEtapa6WidgetState();
}

class _CreateSiteEtapa6WidgetState extends State<CreateSiteEtapa6Widget> {
  late CreateSiteEtapa6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapa6Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapa6'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPA6_CreateSiteEtapa6_ON_I');
      logFirebaseEvent('CreateSiteEtapa6_custom_action');
      await actions.lockOrientation();
      if (getJsonField(
            FFAppState().dataSite,
            r'''$.name''',
          ) !=
          null) {
        logFirebaseEvent('CreateSiteEtapa6_set_form_field');
        safeSetState(() {
          _model.nameTextController?.text =
              functions.removeNullString(getJsonField(
            FFAppState().dataSite,
            r'''$.name''',
          ).toString().toString())!;
        });
      } else {
        logFirebaseEvent('CreateSiteEtapa6_backend_call');
        _model.apiResult = await APIOficialGroup.getUserCall.call(
          authToken: currentAuthenticationToken,
        );

        logFirebaseEvent('CreateSiteEtapa6_set_form_field');
        safeSetState(() {
          _model.nameTextController?.text =
              functions.removeNullString(getJsonField(
            (_model.apiResult?.jsonBody ?? ''),
            r'''$.name''',
          ).toString().toString())!;
        });
      }
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HeaderWidget(),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
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
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        child: Text(
                                          'Digite a forma que gostaria que seu nome apareça no site?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.manrope(),
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.nameTextController,
                                        focusNode: _model.nameFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.nameTextController',
                                          Duration(milliseconds: 30),
                                          () async {
                                            logFirebaseEvent(
                                                'CREATE_SITE_ETAPA6_Name_ON_TEXTFIELD_CHA');
                                            logFirebaseEvent(
                                                'Name_update_app_state');

                                            safeSetState(() {});
                                          },
                                        ),
                                        autofocus: false,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Nome',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.manrope(),
                                              letterSpacing: 0.0,
                                            ),
                                        validator: _model
                                            .nameTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 40.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: (_model.nameTextController
                                                          .text ==
                                                      null ||
                                                  _model.nameTextController
                                                          .text ==
                                                      '')
                                              ? null
                                              : () async {
                                                  logFirebaseEvent(
                                                      'CREATE_SITE_ETAPA6_AVANAR_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_backend_call');
                                                  _model.updateSite6 =
                                                      await APIOficialGroup
                                                          .updateSiteCall
                                                          .call(
                                                    authToken:
                                                        currentAuthenticationToken,
                                                    bodyJson: <String, String?>{
                                                      'name': _model
                                                          .nameTextController
                                                          .text,
                                                    },
                                                  );

                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context.pushNamed(
                                                      'CreateSiteEtapa7');

                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  FFAppState().dataSite =
                                                      getJsonField(
                                                    (_model.updateSite6
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.data''',
                                                  );
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                          text: 'Avançar',
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.8,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
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
                                                BorderRadius.circular(8.0),
                                            disabledColor: Color(0xFFACACAC),
                                            disabledTextColor:
                                                Color(0xFFD9D9D9),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
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
          ),
        ),
      ),
    );
  }
}
