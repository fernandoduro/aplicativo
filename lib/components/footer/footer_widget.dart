import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'footer_model.dart';
export 'footer_model.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({
    super.key,
    required this.selectedPage,
  });

  final String? selectedPage;

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  late FooterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooterModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('FOOTER_COMP_Column_4jsfiua8_ON_TAP');
              logFirebaseEvent('Column_navigate_to');

              context.pushNamed('Home');
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 30.0,
                  icon: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('FOOTER_COMP_home_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('Home');
                  },
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Text(
                    'Início',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          if (loggedIn)
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('FOOTER_COMP_Column_v89oxlel_ON_TAP');
                var shouldSetState = false;
                if (currentAuthenticationToken == null ||
                    currentAuthenticationToken == '') {
                  logFirebaseEvent('Column_navigate_to');

                  context.pushNamed('Login');

                  if (shouldSetState) safeSetState(() {});
                  return;
                }
                logFirebaseEvent('Column_backend_call');
                _model.siteResult2 = await APIOficialGroup.getSiteCall.call(
                  authToken: currentAuthenticationToken,
                );

                shouldSetState = true;
                if (getJsonField(
                      (_model.siteResult2?.jsonBody ?? ''),
                      r'''$.data.domain''',
                    ) !=
                    null) {
                  logFirebaseEvent('Column_update_app_state');
                  FFAppState().existSite = true;
                  FFAppState().dataSite = getJsonField(
                    (_model.siteResult2?.jsonBody ?? ''),
                    r'''$.data''',
                  );
                  safeSetState(() {});
                  logFirebaseEvent('Column_navigate_to');

                  context.pushNamed('CreateSiteEtapa6');
                } else {
                  if (FFAppState().codigoSiteUsado == true) {
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().existSite = false;
                    FFAppState().dataSite = getJsonField(
                      (_model.siteResult2?.jsonBody ?? ''),
                      r'''$.data''',
                    );
                    safeSetState(() {});
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('CreateSiteEtapa5');
                  } else {
                    logFirebaseEvent('Column_update_app_state');
                    FFAppState().existSite = false;
                    FFAppState().dataSite = getJsonField(
                      (_model.siteResult2?.jsonBody ?? ''),
                      r'''$.data''',
                    );
                    safeSetState(() {});
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('CreateSiteEtapa1');
                  }
                }

                if (shouldSetState) safeSetState(() {});
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 30.0,
                    icon: FaIcon(
                      FontAwesomeIcons.atlas,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('FOOTER_COMP_atlas_ICN_ON_TAP');
                      var shouldSetState = false;
                      if (currentAuthenticationToken == null ||
                          currentAuthenticationToken == '') {
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('Login');

                        if (shouldSetState) safeSetState(() {});
                        return;
                      }
                      logFirebaseEvent('IconButton_backend_call');
                      _model.siteResult2Copy =
                          await APIOficialGroup.getSiteCall.call(
                        authToken: currentAuthenticationToken,
                      );

                      shouldSetState = true;
                      if (getJsonField(
                            (_model.siteResult2?.jsonBody ?? ''),
                            r'''$.data.domain''',
                          ) !=
                          null) {
                        logFirebaseEvent('IconButton_update_app_state');
                        FFAppState().existSite = true;
                        FFAppState().dataSite = getJsonField(
                          (_model.siteResult2Copy?.jsonBody ?? ''),
                          r'''$.data''',
                        );
                        safeSetState(() {});
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('CreateSiteEtapa6');
                      } else {
                        if (FFAppState().codigoSiteUsado == true) {
                          logFirebaseEvent('IconButton_update_app_state');
                          FFAppState().existSite = false;
                          FFAppState().dataSite = getJsonField(
                            (_model.siteResult2Copy?.jsonBody ?? ''),
                            r'''$.data''',
                          );
                          safeSetState(() {});
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed('CreateSiteEtapa5');
                        } else {
                          logFirebaseEvent('IconButton_update_app_state');
                          FFAppState().existSite = false;
                          FFAppState().dataSite = getJsonField(
                            (_model.siteResult2Copy?.jsonBody ?? ''),
                            r'''$.data''',
                          );
                          safeSetState(() {});
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed('CreateSiteEtapa1');
                        }
                      }

                      if (shouldSetState) safeSetState(() {});
                    },
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Text(
                      'Meu site',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          if (loggedIn)
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('FOOTER_COMP_Column_5l31j1vh_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed('EditarPerfil');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      buttonSize: 30.0,
                      icon: Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('FOOTER_COMP_person_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('EditarPerfil');
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Text(
                        'Meus dados',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (!loggedIn)
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('FOOTER_COMP_Column_adcvtz22_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed('Login');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 30.0,
                      icon: Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('FOOTER_COMP_person_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed('Login');
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Text(
                        'Acessar',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (loggedIn)
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('FOOTER_COMP_Column_skzwivwb_ON_TAP');
                logFirebaseEvent('Column_auth');
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                logFirebaseEvent('Column_navigate_to');

                context.pushNamedAuth('Login', context.mounted);

                logFirebaseEvent('Column_update_app_state');
                FFAppState().existSite = false;
                safeSetState(() {});
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 30.0,
                    icon: Icon(
                      Icons.logout_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('FOOTER_COMP_logout_sharp_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamedAuth('Login', context.mounted);

                      logFirebaseEvent('IconButton_update_app_state');
                      FFAppState().existSite = false;
                      safeSetState(() {});
                    },
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Text(
                        'Sair',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (!loggedIn)
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('FOOTER_COMP_Column_nwj412vi_ON_TAP');
                logFirebaseEvent('Column_navigate_to');

                context.pushNamed('Register');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 30.0,
                    icon: Icon(
                      Icons.person_add_alt_1,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'FOOTER_COMP_person_add_alt_1_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_navigate_to');

                      context.pushNamed('Register');
                    },
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Text(
                        'Criar conta',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
