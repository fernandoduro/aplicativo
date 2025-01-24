import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer_white/footer_white_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'request_model.dart';
export 'request_model.dart';

class RequestWidget extends StatefulWidget {
  const RequestWidget({super.key});

  @override
  State<RequestWidget> createState() => _RequestWidgetState();
}

class _RequestWidgetState extends State<RequestWidget>
    with TickerProviderStateMixin {
  late RequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Request'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('REQUEST_PAGE_Request_ON_INIT_STATE');
      logFirebaseEvent('Request_update_app_state');
      FFAppState().activePage =
          'blubem://blubem.com${GoRouterState.of(context).uri.toString()}';
      safeSetState(() {});
    });

    _model.descricaoTextController ??= TextEditingController();
    _model.descricaoFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.headerHelpModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderHelpWidget(),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.sizeOf(context).height * 0.85,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Minhas solicitações',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          35.0, 0.0, 35.0, 20.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
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
                                                            Form(
                                                              key: _model
                                                                  .formKey,
                                                              autovalidateMode:
                                                                  AutovalidateMode
                                                                      .disabled,
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Área relacionada',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                    controller: _model
                                                                        .areaValueController ??= FormFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: [
                                                                      'Site',
                                                                      'Cliente',
                                                                      'Agenda',
                                                                      'Atendimento',
                                                                      'Lembrete',
                                                                      'Outra',
                                                                      'Não sei'
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        safeSetState(() =>
                                                                            _model.areaValue =
                                                                                val),
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        40.0,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'Selecione uma área',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderWidth:
                                                                        0.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        false,
                                                                    isSearchable:
                                                                        false,
                                                                    isMultiSelect:
                                                                        false,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Text(
                                                                        'Descreva o que você precisa',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .descricaoTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .descricaoFocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            true,
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Nos diga o que precisa, que faremos por você.',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00000000),
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      maxLines:
                                                                          4,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .descricaoTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            24.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'Anexos',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Manrope',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              )
                                                                            ],
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  fontSize: 21.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('REQUEST_PAGE_RichText_nyd0c7z9_ON_TAP');
                                                                            logFirebaseEvent('RichText_store_media_for_upload');
                                                                            final selectedMedia =
                                                                                await selectMediaWithSourceBottomSheet(
                                                                              context: context,
                                                                              allowPhoto: true,
                                                                            );
                                                                            if (selectedMedia != null &&
                                                                                selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                              safeSetState(() => _model.isDataUploading = true);
                                                                              var selectedUploadedFiles = <FFUploadedFile>[];

                                                                              try {
                                                                                selectedUploadedFiles = selectedMedia
                                                                                    .map((m) => FFUploadedFile(
                                                                                          name: m.storagePath.split('/').last,
                                                                                          bytes: m.bytes,
                                                                                          height: m.dimensions?.height,
                                                                                          width: m.dimensions?.width,
                                                                                          blurHash: m.blurHash,
                                                                                        ))
                                                                                    .toList();
                                                                              } finally {
                                                                                _model.isDataUploading = false;
                                                                              }
                                                                              if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                safeSetState(() {
                                                                                  _model.uploadedLocalFile = selectedUploadedFiles.first;
                                                                                });
                                                                              } else {
                                                                                safeSetState(() {});
                                                                                return;
                                                                              }
                                                                            }

                                                                            logFirebaseEvent('RichText_custom_action');
                                                                            _model.updatedImage =
                                                                                await actions.convertBase64(
                                                                              _model.uploadedLocalFile,
                                                                            );
                                                                            logFirebaseEvent('RichText_update_page_state');
                                                                            _model.addToImagesToUpload(_model.uploadedLocalFile);
                                                                            _model.addToImages64(_model.updatedImage!);
                                                                            safeSetState(() {});

                                                                            safeSetState(() {});
                                                                          },
                                                                          child:
                                                                              RichText(
                                                                            textScaler:
                                                                                MediaQuery.of(context).textScaler,
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '+adicionar',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                      child:
                                                                          Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final images = _model
                                                                              .imagesToUpload
                                                                              .toList();

                                                                          return SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: List.generate(images.length, (imagesIndex) {
                                                                                final imagesItem = images[imagesIndex];
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 100.0,
                                                                                      height: 94.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).accent4,
                                                                                        image: DecorationImage(
                                                                                          fit: BoxFit.cover,
                                                                                          image: Image.memory(
                                                                                            imagesItem.bytes ?? Uint8List.fromList([]),
                                                                                          ).image,
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).accent4,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(1.0, -1.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            logFirebaseEvent('REQUEST_PAGE_Icon_klcpoa34_ON_TAP');
                                                                                            logFirebaseEvent('Icon_alert_dialog');
                                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                                  context: context,
                                                                                                  builder: (alertDialogContext) {
                                                                                                    return WebViewAware(
                                                                                                      child: AlertDialog(
                                                                                                        content: Text('Deseja realmente deletar essa imagem?'),
                                                                                                        actions: [
                                                                                                          TextButton(
                                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                            child: Text('Cancelar'),
                                                                                                          ),
                                                                                                          TextButton(
                                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                            child: Text('Confirmar'),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ) ??
                                                                                                false;
                                                                                            if (confirmDialogResponse) {
                                                                                              logFirebaseEvent('Icon_update_page_state');
                                                                                              _model.removeFromImagesToUpload(imagesItem);
                                                                                              safeSetState(() {});
                                                                                            }
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.delete,
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              }).divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'Se preferir, envie por áudio.',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Manrope',
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              fontSize: 21.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        if (_model
                                                                            .isRecording)
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.all(20.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 20.0,
                                                                                    height: 20.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'REC',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ).animateOnActionTrigger(
                                                                              animationsMap['rowOnActionTriggerAnimation']!,
                                                                            ),
                                                                          ),
                                                                        if (_model
                                                                            .isShowPlayer)
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                30.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                FlutterFlowAudioPlayer(
                                                                              audio: Audio.network(
                                                                                _model.recorderStoped!,
                                                                                metas: Metas(
                                                                                  title: 'Áudio',
                                                                                ),
                                                                              ),
                                                                              titleTextStyle: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              playbackDurationTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              playbackButtonColor: FlutterFlowTheme.of(context).primary,
                                                                              activeTrackColor: FlutterFlowTheme.of(context).alternate,
                                                                              elevation: 4.0,
                                                                              playInBackground: PlayInBackground.disabledRestoreOnForeground,
                                                                            ),
                                                                          ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              24.0,
                                                                              0.0,
                                                                              24.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              FFButtonWidget(
                                                                                onPressed: _model.isRecording
                                                                                    ? null
                                                                                    : () async {
                                                                                        logFirebaseEvent('REQUEST_PAGE_Button_cbjom21d_ON_TAP');
                                                                                        logFirebaseEvent('Button_request_permissions');
                                                                                        await requestPermission(microphonePermission);
                                                                                        if (await getPermissionStatus(microphonePermission)) {
                                                                                          logFirebaseEvent('Button_start_audio_recording');
                                                                                          await startAudioRecording(
                                                                                            context,
                                                                                            audioRecorder: _model.audioRecorder ??= AudioRecorder(),
                                                                                          );

                                                                                          logFirebaseEvent('Button_update_page_state');
                                                                                          _model.isRecording = true;
                                                                                          _model.audioBase64 = _model.audioBase64;
                                                                                          safeSetState(() {});
                                                                                          logFirebaseEvent('Button_widget_animation');
                                                                                          if (animationsMap['rowOnActionTriggerAnimation'] != null) {
                                                                                            await animationsMap['rowOnActionTriggerAnimation']!.controller.repeat(reverse: true);
                                                                                          }
                                                                                        } else {
                                                                                          logFirebaseEvent('Button_show_snack_bar');
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Permissão negada!',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      },
                                                                                text: _model.isRecording ? 'Gravando' : 'Iniciar',
                                                                                options: FFButtonOptions(
                                                                                  width: 100.0,
                                                                                  height: 50.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderRadius: BorderRadius.circular(50.0),
                                                                                  disabledColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  disabledTextColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: !_model.isRecording
                                                                                    ? null
                                                                                    : () async {
                                                                                        logFirebaseEvent('REQUEST_PAGE_PARAR_BTN_ON_TAP');
                                                                                        logFirebaseEvent('Button_stop_audio_recording');
                                                                                        await stopAudioRecording(
                                                                                          audioRecorder: _model.audioRecorder,
                                                                                          audioName: 'recordedFileBytes',
                                                                                          onRecordingComplete: (audioFilePath, audioBytes) {
                                                                                            _model.recorderStoped = audioFilePath;
                                                                                            _model.recordedFileBytes = audioBytes;
                                                                                          },
                                                                                        );

                                                                                        logFirebaseEvent('Button_custom_action');
                                                                                        _model.base64Sound = await actions.convertAudioPathToBase64(
                                                                                          _model.recorderStoped,
                                                                                        );
                                                                                        logFirebaseEvent('Button_update_page_state');
                                                                                        _model.isRecording = false;
                                                                                        safeSetState(() {});
                                                                                        logFirebaseEvent('Button_update_page_state');
                                                                                        _model.audioBase64 = _model.base64Sound;
                                                                                        safeSetState(() {});
                                                                                        logFirebaseEvent('Button_update_page_state');
                                                                                        _model.isShowPlayer = true;
                                                                                        safeSetState(() {});
                                                                                        logFirebaseEvent('Button_widget_animation');
                                                                                        if (animationsMap['rowOnActionTriggerAnimation'] != null) {
                                                                                          animationsMap['rowOnActionTriggerAnimation']!.controller.stop();
                                                                                        }

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                text: 'Parar',
                                                                                options: FFButtonOptions(
                                                                                  width: 100.0,
                                                                                  height: 50.0,
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: Color(0xFFFF5963),
                                                                                  textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: Colors.white,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderRadius: BorderRadius.circular(50.0),
                                                                                  disabledColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                  disabledTextColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('REQUEST_PAGE_ENVIAR_SOLICITAO_BTN_ON_TAP');
                                                                              logFirebaseEvent('Button_validate_form');
                                                                              if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                return;
                                                                              }
                                                                              if (_model.areaValue == null) {
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Escolha a área relacionada.',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                return;
                                                                              }
                                                                              logFirebaseEvent('Button_backend_call');
                                                                              _model.resultPostSolicitacao = await APIOficialGroup.postSolicitacoesCall.call(
                                                                                authToken: currentAuthenticationToken,
                                                                                title: 'Solicitação (${_model.areaValue})',
                                                                                description: _model.descricaoTextController.text,
                                                                                audioFile: _model.audioBase64,
                                                                                imagesList: _model.images64,
                                                                                status: 'pending',
                                                                                area: _model.areaValue,
                                                                              );

                                                                              if ((_model.resultPostSolicitacao?.succeeded ?? true)) {
                                                                                logFirebaseEvent('Button_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      getJsonField(
                                                                                        (_model.resultPostSolicitacao?.jsonBody ?? ''),
                                                                                        r'''$.message''',
                                                                                      ).toString(),
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                                logFirebaseEvent('Button_navigate_to');

                                                                                context.pushNamed('Request');
                                                                              } else {
                                                                                logFirebaseEvent('Button_show_snack_bar');
                                                                                ScaffoldMessenger.of(context).showSnackBar(
                                                                                  SnackBar(
                                                                                    content: Text(
                                                                                      'Não deu certo! Tente novamente ou entre em contato conosco por favor.',
                                                                                      style: TextStyle(
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                    duration: Duration(milliseconds: 4000),
                                                                                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                );
                                                                              }

                                                                              safeSetState(() {});
                                                                            },
                                                                            text:
                                                                                'Enviar solicitação',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width * 1.0,
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Manrope',
                                                                                    color: Colors.white,
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 0.0,
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
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
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 20.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future: APIOficialGroup
                                                    .gETSolicitacoesCall
                                                    .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final columnGETSolicitacoesResponse =
                                                      snapshot.data!;

                                                  return Builder(
                                                    builder: (context) {
                                                      final solicitacoesList =
                                                          functions
                                                              .handleNullList(
                                                                  getJsonField(
                                                                columnGETSolicitacoesResponse
                                                                    .jsonBody,
                                                                r'''$.data''',
                                                              ))
                                                              .toList()
                                                              .take(1000)
                                                              .toList();

                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            solicitacoesList
                                                                .length,
                                                            (solicitacoesListIndex) {
                                                          final solicitacoesListItem =
                                                              solicitacoesList[
                                                                  solicitacoesListIndex];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (solicitacoesListIndex
                                                                      .toString() ==
                                                                  '0')
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Solicitações',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Text(
                                                                                            getJsonField(
                                                                                              solicitacoesListItem,
                                                                                              r'''$.title''',
                                                                                            ).toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Manrope',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                          if (functions.convertJsonToString(getJsonField(
                                                                                                solicitacoesListItem,
                                                                                                r'''$.status''',
                                                                                              )) !=
                                                                                              'canceled')
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  logFirebaseEvent('REQUEST_PAGE_Icon_ovapsfq1_ON_TAP');
                                                                                                  logFirebaseEvent('Icon_alert_dialog');
                                                                                                  var confirmDialogResponse = await showDialog<bool>(
                                                                                                        context: context,
                                                                                                        builder: (alertDialogContext) {
                                                                                                          return WebViewAware(
                                                                                                            child: AlertDialog(
                                                                                                              content: Text('Você tem certeza que quer cancelar essa solicitação?'),
                                                                                                              actions: [
                                                                                                                TextButton(
                                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                  child: Text('Não'),
                                                                                                                ),
                                                                                                                TextButton(
                                                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                  child: Text('Sim, Cancelar'),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                      ) ??
                                                                                                      false;
                                                                                                  if (confirmDialogResponse) {
                                                                                                    logFirebaseEvent('Icon_backend_call');
                                                                                                    _model.apiResult2ogCopy2 = await APIOficialGroup.pUTSolicitacoesCall.call(
                                                                                                      authToken: currentAuthenticationToken,
                                                                                                      id: getJsonField(
                                                                                                        solicitacoesListItem,
                                                                                                        r'''$.id''',
                                                                                                      ).toString(),
                                                                                                      status: 'canceled',
                                                                                                      area: getJsonField(
                                                                                                        solicitacoesListItem,
                                                                                                        r'''$.area''',
                                                                                                      ).toString(),
                                                                                                      title: getJsonField(
                                                                                                        solicitacoesListItem,
                                                                                                        r'''$.title''',
                                                                                                      ).toString(),
                                                                                                      description: getJsonField(
                                                                                                        solicitacoesListItem,
                                                                                                        r'''$.description''',
                                                                                                      ).toString(),
                                                                                                    );

                                                                                                    if ((_model.apiResult2ogCopy2?.succeeded ?? true)) {
                                                                                                      logFirebaseEvent('Icon_show_snack_bar');
                                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                                        SnackBar(
                                                                                                          content: Text(
                                                                                                            'Tudo certo! Removemos estas informações.',
                                                                                                            style: TextStyle(
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            ),
                                                                                                          ),
                                                                                                          duration: Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                  }

                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete_outline_outlined,
                                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                                  size: 36.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                      Text(
                                                                                        valueOrDefault<String>(
                                                                                          functions.formatDateHour(getJsonField(
                                                                                            solicitacoesListItem,
                                                                                            r'''$.created_at''',
                                                                                          ).toString()),
                                                                                          'null',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        functions.traduzirStatus(getJsonField(
                                                                                          solicitacoesListItem,
                                                                                          r'''$.status''',
                                                                                        ).toString()),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Manrope',
                                                                                              fontSize: 14.0,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ],
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
                                                              ),
                                                            ],
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  );
                                                },
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
                        child: FooterWhiteWidget(),
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
