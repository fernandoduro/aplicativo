import '/auth/custom_auth/auth_util.dart';
import '/components/header_help/header_help_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/franco/footer_franco/footer_franco_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'solicitacoes_a_d_m_model.dart';
export 'solicitacoes_a_d_m_model.dart';

class SolicitacoesADMWidget extends StatefulWidget {
  const SolicitacoesADMWidget({super.key});

  @override
  State<SolicitacoesADMWidget> createState() => _SolicitacoesADMWidgetState();
}

class _SolicitacoesADMWidgetState extends State<SolicitacoesADMWidget>
    with TickerProviderStateMixin {
  late SolicitacoesADMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolicitacoesADMModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SolicitacoesADM'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SOLICITACOES_A_D_M_SolicitacoesADM_ON_IN');
      logFirebaseEvent('SolicitacoesADM_custom_action');
      await actions.lockOrientation();
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 5000.0.ms,
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
        endDrawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.web_sharp,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 40.0,
                            ),
                            Text(
                              'Site',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: const BoxDecoration(),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Descrição da atividade',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 21.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.manrope(),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 21.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        readOnly: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Ajuda solicitada',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.manrope(),
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintText:
                              'Apenas nos diga o que precisa, que faremos por você',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.manrope(),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
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
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.manrope(),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                        maxLines: 4,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
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
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: const BoxDecoration(),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'Novas solicitações',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .poppins(),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      21.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .manrope(),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 21.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: const Alignment(0.0, 0),
                                              child: TabBar(
                                                labelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                unselectedLabelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.manrope(),
                                                      letterSpacing: 0.0,
                                                    ),
                                                unselectedLabelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .manrope(),
                                                          letterSpacing: 0.0,
                                                        ),
                                                indicatorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                tabs: const [
                                                  Tab(
                                                    text: 'Pendentes',
                                                  ),
                                                  Tab(
                                                    text: 'Resolvidas',
                                                  ),
                                                ],
                                                controller:
                                                    _model.tabBarController,
                                                onTap: (i) async {
                                                  [
                                                    () async {},
                                                    () async {}
                                                  ][i]();
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                controller:
                                                    _model.tabBarController,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Container(
                                                              width: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Wrap(
                                                                  spacing: 16.0,
                                                                  runSpacing:
                                                                      16.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: [
                                                                    Container(
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        maxWidth:
                                                                            600.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (currentUserUid != '')
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check_box_outline_blank,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          Container(
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/209/600',
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                '[Nome cliente]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[dado 1]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[dado 2]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ].divide(const SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        maxWidth:
                                                                            600.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (currentUserUid != '')
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check_box_outline_blank,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.check_box,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                '[Área relacionada]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '10/08 22:30',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[status]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ].divide(const SizedBox(width: 0.0)),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        if (currentUserUid !=
                                                                                '')
                                                                          Expanded(
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('SOLICITACOES_A_D_M_CANCELAR_BTN_ON_TAP');
                                                                                logFirebaseEvent('Button_navigate_to');

                                                                                context.pushNamed('CreateSiteEtapa7');
                                                                              },
                                                                              text: 'Cancelar',
                                                                              options: FFButtonOptions(
                                                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: Colors.white,
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                elevation: 3.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation1']!),
                                                                          ),
                                                                        Expanded(
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('SOLICITACOES_A_D_M_VER_SOLICITAO_BTN_ON_');
                                                                              logFirebaseEvent('Button_navigate_to');

                                                                              context.pushNamed('CreateSiteEtapa7');
                                                                            },
                                                                            text:
                                                                                'Ver solicitação',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width * 0.8,
                                                                              height: 40.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.manrope(),
                                                                                    color: Colors.white,
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation2']!),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('SOLICITACOES_A_D_M_IMPERSONAR_BTN_ON_TAP');
                                                                              logFirebaseEvent('Button_navigate_to');

                                                                              context.pushNamed('CreateSiteEtapa7');
                                                                            },
                                                                            text:
                                                                                'Impersonar',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width * 0.8,
                                                                              height: 40.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).warning,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.manrope(),
                                                                                    color: Colors.white,
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation3']!),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: ListView(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          primary: false,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          children: [
                                                            Container(
                                                              width: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Wrap(
                                                                  spacing: 16.0,
                                                                  runSpacing:
                                                                      16.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: [
                                                                    Container(
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        maxWidth:
                                                                            600.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (currentUserUid != '')
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check_box_outline_blank,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          Container(
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            clipBehavior:
                                                                                Clip.antiAlias,
                                                                            decoration:
                                                                                const BoxDecoration(
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                            child:
                                                                                Image.network(
                                                                              'https://picsum.photos/seed/209/600',
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                '[Nome cliente]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[dado 1]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[dado 2]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ].divide(const SizedBox(width: 16.0)),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      constraints:
                                                                          const BoxConstraints(
                                                                        maxWidth:
                                                                            600.0,
                                                                      ),
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children:
                                                                            [
                                                                          if (currentUserUid != '')
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Icon(
                                                                                Icons.check_box_outline_blank,
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                size: 24.0,
                                                                              ),
                                                                            ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.check_box,
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                '[Área relacionada]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.bold,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '10/08 22:30',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                '[status]',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ].divide(const SizedBox(width: 0.0)),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children:
                                                                          [
                                                                        if (currentUserUid !=
                                                                                '')
                                                                          Expanded(
                                                                            child:
                                                                                FFButtonWidget(
                                                                              onPressed: () async {
                                                                                logFirebaseEvent('SOLICITACOES_A_D_M_CANCELAR_BTN_ON_TAP');
                                                                                logFirebaseEvent('Button_navigate_to');

                                                                                context.pushNamed('CreateSiteEtapa7');
                                                                              },
                                                                              text: 'Cancelar',
                                                                              options: FFButtonOptions(
                                                                                width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                height: 40.0,
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                      font: GoogleFonts.manrope(),
                                                                                      color: Colors.white,
                                                                                      fontSize: 18.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                                elevation: 3.0,
                                                                                borderSide: const BorderSide(
                                                                                  color: Colors.transparent,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation4']!),
                                                                          ),
                                                                        Expanded(
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('SOLICITACOES_A_D_M_VER_SOLICITAO_BTN_ON_');
                                                                              logFirebaseEvent('Button_navigate_to');

                                                                              context.pushNamed('CreateSiteEtapa7');
                                                                            },
                                                                            text:
                                                                                'Ver solicitação',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width * 0.8,
                                                                              height: 40.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.manrope(),
                                                                                    color: Colors.white,
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation5']!),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('SOLICITACOES_A_D_M_IMPERSONAR_BTN_ON_TAP');
                                                                              logFirebaseEvent('Button_navigate_to');

                                                                              context.pushNamed('CreateSiteEtapa7');
                                                                            },
                                                                            text:
                                                                                'Impersonar',
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: MediaQuery.sizeOf(context).width * 0.8,
                                                                              height: 40.0,
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: FlutterFlowTheme.of(context).warning,
                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    font: GoogleFonts.manrope(),
                                                                                    color: Colors.white,
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                              elevation: 3.0,
                                                                              borderSide: const BorderSide(
                                                                                color: Colors.transparent,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                          ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation6']!),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              width: 8.0)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              height: 16.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child: Wrap(
                                                                      spacing:
                                                                          16.0,
                                                                      runSpacing:
                                                                          16.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        Container(
                                                                          constraints:
                                                                              const BoxConstraints(
                                                                            maxWidth:
                                                                                600.0,
                                                                          ),
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              if (currentUserUid != '')
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_box_outline_blank,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              Container(
                                                                                width: 60.0,
                                                                                height: 60.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/209/600',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    '[Nome cliente]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[dado 1]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[dado 2]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(const SizedBox(width: 16.0)),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          constraints:
                                                                              const BoxConstraints(
                                                                            maxWidth:
                                                                                600.0,
                                                                          ),
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              if (currentUserUid != '')
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_box_outline_blank,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.check_box,
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    '[Área relacionada]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '10/08 22:30',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[status]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(const SizedBox(width: 0.0)),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            if (currentUserUid != '')
                                                                              Expanded(
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('SOLICITACOES_A_D_M_CANCELAR_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                    context.pushNamed('CreateSiteEtapa7');
                                                                                  },
                                                                                  text: 'Cancelar',
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: Colors.white,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation7']!),
                                                                              ),
                                                                            Expanded(
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('SOLICITACOES_A_D_M_VER_SOLICITAO_BTN_ON_');
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed('CreateSiteEtapa7');
                                                                                },
                                                                                text: 'Ver solicitação',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.manrope(),
                                                                                        color: Colors.white,
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation8']!),
                                                                            ),
                                                                            Expanded(
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('SOLICITACOES_A_D_M_IMPERSONAR_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed('CreateSiteEtapa7');
                                                                                },
                                                                                text: 'Impersonar',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.manrope(),
                                                                                        color: Colors.white,
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation9']!),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 8.0)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Container(
                                                                  width: 100.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            8.0),
                                                                    child: Wrap(
                                                                      spacing:
                                                                          16.0,
                                                                      runSpacing:
                                                                          16.0,
                                                                      alignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          WrapCrossAlignment
                                                                              .start,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      runAlignment:
                                                                          WrapAlignment
                                                                              .start,
                                                                      verticalDirection:
                                                                          VerticalDirection
                                                                              .down,
                                                                      clipBehavior:
                                                                          Clip.none,
                                                                      children: [
                                                                        Container(
                                                                          constraints:
                                                                              const BoxConstraints(
                                                                            maxWidth:
                                                                                600.0,
                                                                          ),
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              if (currentUserUid != '')
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_box_outline_blank,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              Container(
                                                                                width: 60.0,
                                                                                height: 60.0,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  'https://picsum.photos/seed/209/600',
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    '[Nome cliente]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[dado 1]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[dado 2]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(const SizedBox(width: 16.0)),
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          constraints:
                                                                              const BoxConstraints(
                                                                            maxWidth:
                                                                                600.0,
                                                                          ),
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                [
                                                                              if (currentUserUid != '')
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                  child: Icon(
                                                                                    Icons.check_box_outline_blank,
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Icon(
                                                                                  Icons.check_box,
                                                                                  color: FlutterFlowTheme.of(context).success,
                                                                                  size: 24.0,
                                                                                ),
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    '[Área relacionada]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '10/08 22:30',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    '[status]',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          fontSize: 16.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(const SizedBox(width: 0.0)),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            if (currentUserUid != '')
                                                                              Expanded(
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    logFirebaseEvent('SOLICITACOES_A_D_M_CANCELAR_BTN_ON_TAP');
                                                                                    logFirebaseEvent('Button_navigate_to');

                                                                                    context.pushNamed('CreateSiteEtapa7');
                                                                                  },
                                                                                  text: 'Cancelar',
                                                                                  options: FFButtonOptions(
                                                                                    width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                    height: 40.0,
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.manrope(),
                                                                                          color: Colors.white,
                                                                                          fontSize: 18.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                    elevation: 3.0,
                                                                                    borderSide: const BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation10']!),
                                                                              ),
                                                                            Expanded(
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('SOLICITACOES_A_D_M_VER_SOLICITAO_BTN_ON_');
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed('CreateSiteEtapa7');
                                                                                },
                                                                                text: 'Ver solicitação',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.manrope(),
                                                                                        color: Colors.white,
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation11']!),
                                                                            ),
                                                                            Expanded(
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  logFirebaseEvent('SOLICITACOES_A_D_M_IMPERSONAR_BTN_ON_TAP');
                                                                                  logFirebaseEvent('Button_navigate_to');

                                                                                  context.pushNamed('CreateSiteEtapa7');
                                                                                },
                                                                                text: 'Impersonar',
                                                                                options: FFButtonOptions(
                                                                                  width: MediaQuery.sizeOf(context).width * 0.8,
                                                                                  height: 40.0,
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).warning,
                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                        font: GoogleFonts.manrope(),
                                                                                        color: Colors.white,
                                                                                        fontSize: 18.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                  elevation: 3.0,
                                                                                  borderSide: const BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation12']!),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 8.0)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height:
                                                                      16.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 8.0)),
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
                      Container(
                        height: 100.0,
                        decoration: const BoxDecoration(),
                        child: wrapWithModel(
                          model: _model.footerFrancoModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const FooterFrancoWidget(),
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
