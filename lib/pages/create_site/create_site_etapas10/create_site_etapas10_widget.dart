import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_site_etapas10_model.dart';
export 'create_site_etapas10_model.dart';

class CreateSiteEtapas10Widget extends StatefulWidget {
  const CreateSiteEtapas10Widget({super.key});

  @override
  State<CreateSiteEtapas10Widget> createState() =>
      _CreateSiteEtapas10WidgetState();
}

class _CreateSiteEtapas10WidgetState extends State<CreateSiteEtapas10Widget> {
  late CreateSiteEtapas10Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateSiteEtapas10Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'CreateSiteEtapas10'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_SITE_ETAPAS10_CreateSiteEtapas10_');
      logFirebaseEvent('CreateSiteEtapas10_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
      logFirebaseEvent('CreateSiteEtapas10_clear_uploaded_data');
      safeSetState(() {
        _model.isDataUploading = false;
        _model.uploadedLocalFile =
            FFUploadedFile(bytes: Uint8List.fromList([]));
      });

      logFirebaseEvent('CreateSiteEtapas10_update_app_state');
      FFAppState().imageUploaded = false;
      FFAppState().base64 = '';
      safeSetState(() {});
      if (getJsonField(
            FFAppState().dataSite,
            r'''$.professional_photo''',
          ) !=
          null) {
        logFirebaseEvent('CreateSiteEtapas10_update_app_state');
        FFAppState().imageUploaded = true;
        safeSetState(() {});
        logFirebaseEvent('CreateSiteEtapas10_update_app_state');
        FFAppState().photoProfessionalEdit = getJsonField(
          FFAppState().dataSite,
          r'''$.professional_photo''',
        ).toString();
        safeSetState(() {});
      } else {
        logFirebaseEvent('CreateSiteEtapas10_update_app_state');
        FFAppState().imageUploaded = false;
        safeSetState(() {});
        logFirebaseEvent('CreateSiteEtapas10_update_app_state');
        FFAppState().photoProfessionalEdit = '';
        safeSetState(() {});
      }

      logFirebaseEvent('CreateSiteEtapas10_custom_action');
      await actions.lockOrientation();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.85,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.67,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                                  if (_model.uploadedLocalFile != null &&
                                      (_model.uploadedLocalFile.bytes
                                              ?.isNotEmpty ??
                                          false))
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.memory(
                                        _model.uploadedLocalFile.bytes ??
                                            Uint8List.fromList([]),
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  if (_model.uploadedLocalFile == null ||
                                      (_model.uploadedLocalFile.bytes
                                              ?.isEmpty ??
                                          true))
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        FFAppState().photoProfessionalEdit,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
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
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'CREATE_SITE_ETAPAS10_INSERIR_MINHA_FOTO_');
                                          logFirebaseEvent(
                                              'Button_store_media_for_upload');
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() =>
                                                _model.isDataUploading = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                      .toList();
                                            } finally {
                                              _model.isDataUploading = false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile =
                                                    selectedUploadedFiles.first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }

                                          logFirebaseEvent(
                                              'Button_custom_action');
                                          _model.base64CustomFunction =
                                              await actions.convertBase64(
                                            _model.uploadedLocalFile,
                                          );
                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().imageUploaded = true;
                                          FFAppState().base64 =
                                              _model.base64CustomFunction!;
                                          safeSetState(() {});

                                          safeSetState(() {});
                                        },
                                        text: 'Inserir minha foto',
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.8,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 40.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: (FFAppState()
                                                      .imageUploaded !=
                                                  true)
                                              ? null
                                              : () async {
                                                  logFirebaseEvent(
                                                      'CREATE_SITE_ETAPAS10_PRXIMO_BTN_ON_TAP');
                                                  if ((FFAppState().base64 !=
                                                              null &&
                                                          FFAppState().base64 !=
                                                              '') &&
                                                      (FFAppState().base64 !=
                                                          'data:image/null;base64,')) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    await APIOficialGroup
                                                        .updateSiteCall
                                                        .call(
                                                      authToken:
                                                          currentAuthenticationToken,
                                                      bodyJson: <String,
                                                          String?>{
                                                        'professional_photo':
                                                            FFAppState().base64,
                                                      },
                                                    );

                                                    logFirebaseEvent(
                                                        'Button_navigate_to');

                                                    context.pushNamed(
                                                        'CreateSiteEtapas11');
                                                  } else {
                                                    if ((FFAppState().base64 ==
                                                                null ||
                                                            FFAppState()
                                                                    .base64 ==
                                                                '') &&
                                                        (FFAppState()
                                                                .imageUploaded ==
                                                            false)) {
                                                      logFirebaseEvent(
                                                          'Button_show_snack_bar');
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Erro ao enviar a foto, tente novamente!',
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
                                                      await APIOficialGroup
                                                          .updateSiteCall
                                                          .call(
                                                        authToken:
                                                            currentAuthenticationToken,
                                                        bodyJson: <String,
                                                            String?>{
                                                          'professional_photo':
                                                              FFAppState()
                                                                  .base64,
                                                        },
                                                      );

                                                      logFirebaseEvent(
                                                          'Button_navigate_to');

                                                      context.pushNamed(
                                                          'CreateSiteEtapas11');
                                                    }
                                                  }
                                                },
                                          text: 'Próximo',
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
                                                      fontFamily: 'Manrope',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      fontSize: 19.0,
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
    );
  }
}
