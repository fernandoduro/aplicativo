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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas15_model.dart';
export 'create_site_etapas15_model.dart';

class CreateSiteEtapas15Widget extends StatefulWidget {
  const CreateSiteEtapas15Widget({super.key});

  @override
  State<CreateSiteEtapas15Widget> createState() =>
      _CreateSiteEtapas15WidgetState();
}

class _CreateSiteEtapas15WidgetState extends State<CreateSiteEtapas15Widget> {
  late CreateSiteEtapas15Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas15Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas15'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS15_CreateSiteEtapas15_');
      logFirebaseEvent('CreateSiteEtapas15_custom_action');
      await actions.lockOrientation();
    });

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.descricaoTextController ??= TextEditingController(
        text: functions.removeNullString(getJsonField(
      FFAppState().dataSite,
      r'''$.main_call_to_action''',
    ).toString().toString()));
    _model.descricaoFocusNode ??= FocusNode();

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
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 50.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 0.0, 15.0, 0.0),
                                              child: Text(
                                                'Preencha uma chamada principal para que seus visitantes conheçam seu serviço. \n',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
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
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 8.0, 0.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .descricaoTextController,
                                              focusNode:
                                                  _model.descricaoFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.descricaoTextController',
                                                const Duration(milliseconds: 30),
                                                () async {
                                                  logFirebaseEvent(
                                                      'CREATE_SITE_ETAPAS15_descricao_ON_TEXTFI');
                                                  logFirebaseEvent(
                                                      'descricao_update_app_state');

                                                  safeSetState(() {});
                                                },
                                              ),
                                              autofocus: false,
                                              textCapitalization:
                                                  TextCapitalization.sentences,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Digite aqui...',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
                                                      letterSpacing: 0.0,
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
                                                      letterSpacing: 0.0,
                                                    ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.manrope(),
                                                    letterSpacing: 0.0,
                                                  ),
                                              maxLines: 5,
                                              keyboardType:
                                                  TextInputType.multiline,
                                              validator: _model
                                                  .descricaoTextControllerValidator
                                                  .asValidator(context),
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
                                                onPressed:
                                                    (_model.descricaoTextController
                                                                    .text ==
                                                                '')
                                                        ? null
                                                        : () async {
                                                            logFirebaseEvent(
                                                                'CREATE_SITE_ETAPAS15_AVANAR_BTN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Button_backend_call');
                                                            _model.updatesite16 =
                                                                await APIOficialGroup
                                                                    .updateSiteCall
                                                                    .call(
                                                              authToken:
                                                                  currentAuthenticationToken,
                                                              bodyJson: <String,
                                                                  String?>{
                                                                'main_call_to_action':
                                                                    _model
                                                                        .descricaoTextController
                                                                        .text,
                                                              },
                                                            );

                                                            logFirebaseEvent(
                                                                'Button_navigate_to');

                                                            context.pushNamed(
                                                                'CreateSiteEtapas16');

                                                            logFirebaseEvent(
                                                                'Button_update_app_state');
                                                            FFAppState()
                                                                    .dataSite =
                                                                getJsonField(
                                                              (_model.updatesite16
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
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .manrope(),
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
                                                      BorderRadius.circular(
                                                          8.0),
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
                                                ? MediaQuery.viewInsetsOf(
                                                            context)
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
