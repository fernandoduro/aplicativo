import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/footer/footer_widget.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/permissions_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:record/record.dart';
import 'enviar_solicitacao_model.dart';
export 'enviar_solicitacao_model.dart';

class EnviarSolicitacaoWidget extends StatefulWidget {
  const EnviarSolicitacaoWidget({
    super.key,
    required this.areaName,
  });

  final String? areaName;

  @override
  State<EnviarSolicitacaoWidget> createState() =>
      _EnviarSolicitacaoWidgetState();
}

class _EnviarSolicitacaoWidgetState extends State<EnviarSolicitacaoWidget>
    with TickerProviderStateMixin {
  late EnviarSolicitacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnviarSolicitacaoModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'enviarSolicitacao'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ENVIAR_SOLICITACAO_enviarSolicitacao_ON_');
      logFirebaseEvent('enviarSolicitacao_custom_action');
      await actions.lockOrientation();
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
                  Stack(
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
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: wrapWithModel(
                                          model: _model.headerHelpModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const HeaderHelpWidget(),
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      minHeight:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .height *
                                                              0.85,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Flexible(
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
                                                                                'Descreva o que você precisa',
                                                                            style: FlutterFlowTheme.of(context).displaySmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  fontSize: 24.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .displaySmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 30.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          35.0,
                                                                          0.0,
                                                                          35.0,
                                                                          35.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
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
                                                                              AutovalidateMode.disabled,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                                                                child: Text(
                                                                                  'Me ajude com ',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textController,
                                                                                  focusNode: _model.textFieldFocusNode,
                                                                                  autofocus: false,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    hintText: 'Apenas nos diga o que precisa, que faremos por você.',
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Manrope',
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).alternate,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: const BorderSide(
                                                                                        color: Color(0x00000000),
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    filled: true,
                                                                                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  maxLines: 4,
                                                                                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                  validator: _model.textControllerValidator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    RichText(
                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                      text: TextSpan(
                                                                                        children: [
                                                                                          TextSpan(
                                                                                            text: 'Imagens',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                                  fontSize: 21.0,
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
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        logFirebaseEvent('ENVIAR_SOLICITACAO_RichText_ktkjn7u4_ON_');
                                                                                        logFirebaseEvent('RichText_store_media_for_upload');
                                                                                        final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                          context: context,
                                                                                          allowPhoto: true,
                                                                                        );
                                                                                        if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
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
                                                                                        _model.updatedImage = await actions.convertBase64(
                                                                                          _model.uploadedLocalFile,
                                                                                        );
                                                                                        logFirebaseEvent('RichText_update_page_state');
                                                                                        _model.addToImagesToUpload(_model.uploadedLocalFile);
                                                                                        _model.addToImages64(_model.updatedImage!);
                                                                                        safeSetState(() {});

                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: RichText(
                                                                                        textScaler: MediaQuery.of(context).textScaler,
                                                                                        text: TextSpan(
                                                                                          children: [
                                                                                            TextSpan(
                                                                                              text: '+adicionar',
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
                                                                                            )
                                                                                          ],
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Manrope',
                                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final images = _model.imagesToUpload.toList();

                                                                                    return SingleChildScrollView(
                                                                                      scrollDirection: Axis.horizontal,
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: List.generate(images.length, (imagesIndex) {
                                                                                          final imagesItem = images[imagesIndex];
                                                                                          return Container(
                                                                                            width: 100.0,
                                                                                            height: 100.0,
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
                                                                                          );
                                                                                        }).divide(const SizedBox(width: 8.0)),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                                                                                child: Text(
                                                                                  'OU',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Manrope',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                              RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: 'Envie um audio',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            fontSize: 21.0,
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
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    if (_model.isRecording)
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.all(20.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
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
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
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
                                                                                    if (_model.isShowPlayer)
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                                                                                        child: FlutterFlowAudioPlayer(
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
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          FFButtonWidget(
                                                                                            onPressed: _model.isRecording
                                                                                                ? null
                                                                                                : () async {
                                                                                                    logFirebaseEvent('ENVIAR_SOLICITACAO_Button_yis25zgk_ON_TA');
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
                                                                                                          duration: const Duration(milliseconds: 4000),
                                                                                                          backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                                        ),
                                                                                                      );
                                                                                                    }
                                                                                                  },
                                                                                            text: _model.isRecording ? 'Gravando' : 'Iniciar',
                                                                                            options: FFButtonOptions(
                                                                                              width: 100.0,
                                                                                              height: 50.0,
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                                                                                    logFirebaseEvent('ENVIAR_SOLICITACAO_PAGE_PARAR_BTN_ON_TAP');
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
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: const Color(0xFFFF5963),
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
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Flexible(
                                                                                      child: FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          logFirebaseEvent('ENVIAR_SOLICITACAO_ENVIAR_SOLICITAO_BTN_');
                                                                                          logFirebaseEvent('Button_backend_call');
                                                                                          _model.resultPostSolicitacao = await APIOficialGroup.postSolicitacoesCall.call(
                                                                                            authToken: currentAuthenticationToken,
                                                                                            title: 'Solicitação (${widget.areaName})',
                                                                                            description: _model.textController.text,
                                                                                            audioFile: _model.audioBase64,
                                                                                            imagesList: _model.images64,
                                                                                            status: 'pending',
                                                                                            area: widget.areaName,
                                                                                          );

                                                                                          if ((_model.resultPostSolicitacao?.succeeded ?? true)) {
                                                                                            logFirebaseEvent('Button_show_snack_bar');
                                                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                                                              SnackBar(
                                                                                                content: Text(
                                                                                                  'Tudo certo! Registramos estas informações.',
                                                                                                  style: TextStyle(
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  ),
                                                                                                ),
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                              ),
                                                                                            );
                                                                                            logFirebaseEvent('Button_navigate_to');

                                                                                            context.pushNamed('Solicitacoes');
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
                                                                                                duration: const Duration(milliseconds: 4000),
                                                                                                backgroundColor: FlutterFlowTheme.of(context).secondary,
                                                                                              ),
                                                                                            );
                                                                                          }

                                                                                          safeSetState(() {});
                                                                                        },
                                                                                        text: 'Enviar solicitação',
                                                                                        options: FFButtonOptions(
                                                                                          width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                          height: 40.0,
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.footerModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const FooterWidget(),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
