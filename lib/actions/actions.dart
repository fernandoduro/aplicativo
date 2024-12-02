import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';

Future<bool?> checkSubscription(
  BuildContext context, {
  required int? featureID,
  required String? pageNavigateTo,
}) async {
  ApiCallResponse? apiResultMyFeature;

  if (currentAuthenticationToken != null && currentAuthenticationToken != '') {
    logFirebaseEvent('CheckSubscription_update_app_state');
    FFAppState().featureIdSelected = featureID!;
    logFirebaseEvent('CheckSubscription_backend_call');
    apiResultMyFeature = await APIOficialGroup.myFeatureCall.call(
      authToken: currentAuthenticationToken,
      id: featureID.toString(),
    );

    if ((apiResultMyFeature.succeeded ?? true)) {
      if (functions
              .lengthElements(getJsonField(
                (apiResultMyFeature.jsonBody ?? ''),
                r'''$.data''',
                true,
              ))
              .toString() ==
          '0') {
        logFirebaseEvent('CheckSubscription_navigate_to');

        context.goNamed(
          'FirstAccess',
          queryParameters: {
            'navigateTo': serializeParam(
              pageNavigateTo,
              ParamType.String,
            ),
          }.withoutNulls,
        );

        return false;
      } else {
        if (functions.convertString(getJsonField(
              (apiResultMyFeature.jsonBody ?? ''),
              r'''$.data[0].active''',
            ).toString().toString()) ==
            'true') {
          return true;
        }

        logFirebaseEvent('CheckSubscription_navigate_to');

        context.pushNamed('TrialFinished');

        return false;
      }
    }
    return false;
  } else {
    logFirebaseEvent('CheckSubscription_navigate_to');

    context.pushNamed('Login');
  }

  return null;
}

Future seuSite(BuildContext context) async {
  ApiCallResponse? siteResult;

  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('seuSite_navigate_to');

    context.pushNamed('Login');

    return;
  }
  logFirebaseEvent('seuSite_backend_call');
  siteResult = await APIOficialGroup.getSiteCall.call(
    authToken: currentAuthenticationToken,
  );

  if (getJsonField(
        (siteResult.jsonBody ?? ''),
        r'''$.data.domain''',
      ) !=
      null) {
    logFirebaseEvent('seuSite_update_app_state');
    FFAppState().existSite = true;
    FFAppState().dataSite = getJsonField(
      (siteResult.jsonBody ?? ''),
      r'''$.data''',
    );
    logFirebaseEvent('seuSite_navigate_to');

    context.pushNamed('CreateSiteEtapa6');
  } else {
    if (FFAppState().codigoSiteUsado == true) {
      logFirebaseEvent('seuSite_navigate_to');

      context.pushNamed('CreateSiteEtapa6');
    } else {
      logFirebaseEvent('seuSite_update_app_state');
      FFAppState().existSite = false;
      FFAppState().dataSite = getJsonField(
        (siteResult.jsonBody ?? ''),
        r'''$.data''',
      );
      logFirebaseEvent('seuSite_navigate_to');

      context.pushNamed('CreateSiteEtapa1');
    }
  }
}

Future calculadora(BuildContext context) async {
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('calculadora_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    logFirebaseEvent('calculadora_navigate_to');

    context.pushNamed('Calculadora');
  }
}

Future meusConvites(BuildContext context) async {
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('meusConvites_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    logFirebaseEvent('meusConvites_navigate_to');

    context.pushNamed('Convites');
  }
}

Future meusClientes(BuildContext context) async {
  bool? subscriptionResult2;

  logFirebaseEvent('meusClientes_custom_action');
  await actions.lockOrientation();
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('meusClientes_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    logFirebaseEvent('meusClientes_action_block');
    subscriptionResult2 = await action_blocks.checkSubscription(
      context,
      featureID: FFAppConstants.FeatureModuloGestao,
      pageNavigateTo: 'listAllClient',
    );
    if (subscriptionResult2!) {
      logFirebaseEvent('meusClientes_action_block');
      await action_blocks.firstConfigValidation(
        context,
        originConfig: 'client',
      );
    }
  }
}

Future seusServicos(BuildContext context) async {
  bool? subscriptionResult4;

  logFirebaseEvent('seusServicos_custom_action');
  await actions.lockOrientation();
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('seusServicos_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    logFirebaseEvent('seusServicos_action_block');
    subscriptionResult4 = await action_blocks.checkSubscription(
      context,
      featureID: FFAppConstants.FeatureModuloGestao,
      pageNavigateTo: 'Services01',
    );
    if (subscriptionResult4!) {
      logFirebaseEvent('seusServicos_navigate_to');

      context.pushNamed('Services01');
    }
  }
}

Future agenda(BuildContext context) async {
  bool? subscriptionResult;

  logFirebaseEvent('agenda_custom_action');
  await actions.lockOrientation();
  logFirebaseEvent('agenda_action_block');
  subscriptionResult = await action_blocks.checkSubscription(
    context,
    featureID: FFAppConstants.FeatureModuloGestao,
    pageNavigateTo: 'firstAccessSchedule',
  );
  if (subscriptionResult == true) {
    if (currentAuthenticationToken == null ||
        currentAuthenticationToken == '') {
      logFirebaseEvent('agenda_navigate_to');

      context.pushNamed('Login');

      return;
    } else {
      logFirebaseEvent('agenda_action_block');
      await action_blocks.firstConfigValidation(
        context,
        originConfig: 'schedule',
      );
    }
  }
}

Future assinatura(BuildContext context) async {
  logFirebaseEvent('assinatura_custom_action');
  await actions.lockOrientation();
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('assinatura_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    logFirebaseEvent('assinatura_navigate_to');

    context.pushNamed('SubscriptionOptions');
  }
}

Future meusLembretes(BuildContext context) async {
  bool? subscriptionResultReminder;

  logFirebaseEvent('meusLembretes_custom_action');
  await actions.lockOrientation();
  logFirebaseEvent('meusLembretes_action_block');
  subscriptionResultReminder = await action_blocks.checkSubscription(
    context,
    featureID: FFAppConstants.FeatureAssistencia,
    pageNavigateTo: 'firstAccessReminder',
  );
  if (subscriptionResultReminder == true) {
    if (FFAppState().firstReminder) {
      logFirebaseEvent('meusLembretes_navigate_to');

      context.pushNamed('FirstAccessReminder');
    } else {
      logFirebaseEvent('meusLembretes_navigate_to');

      context.pushNamed('Reminders');
    }
  }
}

Future resumoSemanal(BuildContext context) async {
  bool? subscriptionResultInsights;
  ApiCallResponse? apiResultu561;

  logFirebaseEvent('resumoSemanal_custom_action');
  await actions.lockOrientation();
  logFirebaseEvent('resumoSemanal_action_block');
  subscriptionResultInsights = await action_blocks.checkSubscription(
    context,
    featureID: FFAppConstants.FeatureAssistencia,
    pageNavigateTo: 'firstAccessInsights',
  );
  if (subscriptionResultInsights == true) {
    if (FFAppState().FirstInsights) {
      logFirebaseEvent('resumoSemanal_navigate_to');

      context.pushNamed('FirstAccessInsights');
    } else {
      logFirebaseEvent('resumoSemanal_backend_call');
      apiResultu561 = await APIOficialGroup.insightsCall.call(
        authToken: currentAuthenticationToken,
      );

      if (getJsonField(
            (apiResultu561.jsonBody ?? ''),
            r'''$.data[*].general_info[*]''',
          ) !=
          null) {
        logFirebaseEvent('resumoSemanal_navigate_to');

        context.pushNamed('Insights');
      } else {
        logFirebaseEvent('resumoSemanal_navigate_to');

        context.pushNamed('NotInsights');
      }
    }
  }
}

Future assistente(BuildContext context) async {
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('assistente_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    if (FFAppState().firstRequest == true) {
      logFirebaseEvent('assistente_navigate_to');

      context.pushNamed('conversaAssistente');
    } else {
      logFirebaseEvent('assistente_navigate_to');

      context.pushNamed('Solicitacoes');
    }
  }
}

Future fidelidade(BuildContext context) async {
  if (currentAuthenticationToken == null || currentAuthenticationToken == '') {
    logFirebaseEvent('fidelidade_navigate_to');

    context.pushNamed('Login');

    return;
  } else {
    if (FFAppState().firstLoyault == true) {
      logFirebaseEvent('fidelidade_update_app_state');
      FFAppState().firstLoyault = false;
      logFirebaseEvent('fidelidade_navigate_to');

      context.pushNamed('FirstAccessLoyalty');
    } else {
      if (FFAppState().loyalt01) {
        logFirebaseEvent('fidelidade_update_app_state');
        FFAppState().firstLoyault = false;
        FFAppState().loyalt01 = false;
        logFirebaseEvent('fidelidade_navigate_to');

        context.pushNamed('Loyalty01');
      } else {
        if (FFAppState().loyalt02) {
          logFirebaseEvent('fidelidade_update_app_state');
          FFAppState().firstLoyault = false;
          FFAppState().loyalt01 = false;
          FFAppState().loyalt02 = false;
          logFirebaseEvent('fidelidade_navigate_to');

          context.pushNamed('Loyalty02');
        } else {
          logFirebaseEvent('fidelidade_navigate_to');

          context.pushNamed('LoyaltyHistory');
        }
      }
    }
  }
}

Future firstConfigNavigation(
  BuildContext context, {
  required String? originConfig,
}) async {
  ApiCallResponse? listScheduleCode2;
  ApiCallResponse? getServicesResultConfig;
  ApiCallResponse? getpackagsResult;
  ApiCallResponse? apiGetUserConfig;

  logFirebaseEvent('firstConfigNavigation_backend_call');
  listScheduleCode2 = await APIOficialGroup.listScheduleCall.call(
    authToken: currentAuthenticationToken,
    dataFiltro: dateTimeFormat(
      "y-MM-d",
      random_data.randomDate(),
      locale: FFLocalizations.of(context).languageCode,
    ),
  );

  if (functions.convertJsonToString(getJsonField(
        (listScheduleCode2.jsonBody ?? ''),
        r'''$.error_code''',
      )) ==
      'no_schedule') {
    logFirebaseEvent('firstConfigNavigation_navigate_to');

    context.pushNamed(
      'Services05',
      queryParameters: {
        'originConfig': serializeParam(
          originConfig,
          ParamType.String,
        ),
      }.withoutNulls,
    );
  } else {
    logFirebaseEvent('firstConfigNavigation_backend_call');
    getServicesResultConfig = await APIOficialGroup.getServicesCall.call(
      authToken: currentAuthenticationToken,
    );

    if (getJsonField(
          (getServicesResultConfig.jsonBody ?? ''),
          r'''$.data[0].name''',
        ) ==
        null) {
      logFirebaseEvent('firstConfigNavigation_navigate_to');

      context.pushNamed(
        'Services02',
        queryParameters: {
          'adicionadoPeloMais': serializeParam(
            false,
            ParamType.bool,
          ),
          'originConfig': serializeParam(
            originConfig,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    } else {
      logFirebaseEvent('firstConfigNavigation_backend_call');
      getpackagsResult = await APIOficialGroup.getPackagesCall.call(
        authToken: currentAuthenticationToken,
      );

      if (getJsonField(
            (getpackagsResult.jsonBody ?? ''),
            r'''$.data[0].name''',
          ) ==
          null) {
        logFirebaseEvent('firstConfigNavigation_navigate_to');

        context.pushNamed(
          'Services03',
          queryParameters: {
            'adicionadoPeloMais': serializeParam(
              false,
              ParamType.bool,
            ),
            'originConfig': serializeParam(
              originConfig,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      } else {
        logFirebaseEvent('firstConfigNavigation_backend_call');
        apiGetUserConfig = await APIOficialGroup.getUserCall.call(
          authToken: currentAuthenticationToken,
        );

        if (functions.convertJsonToString(getJsonField(
                  (apiGetUserConfig.jsonBody ?? ''),
                  r'''$.pay_method''',
                )) ==
                null ||
            functions.convertJsonToString(getJsonField(
                  (apiGetUserConfig.jsonBody ?? ''),
                  r'''$.pay_method''',
                )) ==
                '') {
          logFirebaseEvent('firstConfigNavigation_navigate_to');

          context.pushNamed(
            'Services04',
            queryParameters: {
              'originConfig': serializeParam(
                originConfig,
                ParamType.String,
              ),
            }.withoutNulls,
          );
        } else {
          if (originConfig == 'schedule') {
            logFirebaseEvent('firstConfigNavigation_navigate_to');

            context.pushNamed('Schedule01');
          } else if (originConfig == 'client') {
            logFirebaseEvent('firstConfigNavigation_navigate_to');

            context.pushNamed('listAllClients');
          } else if (originConfig == 'newClient') {
            logFirebaseEvent('firstConfigNavigation_navigate_to');

            context.pushNamed(
              'NewClient01',
              queryParameters: {
                'adicionadoPeloMais': serializeParam(
                  false,
                  ParamType.bool,
                ),
              }.withoutNulls,
            );
          }
        }
      }
    }
  }
}

Future firstConfigValidation(
  BuildContext context, {
  required String? originConfig,
}) async {
  ApiCallResponse? listScheduleCode2;
  ApiCallResponse? getServicesResultConfig;
  ApiCallResponse? getpackagsResult;
  ApiCallResponse? apiGetUserConfig;

  logFirebaseEvent('firstConfigValidation_backend_call');
  listScheduleCode2 = await APIOficialGroup.listScheduleCall.call(
    authToken: currentAuthenticationToken,
    dataFiltro: dateTimeFormat(
      "y-MM-d",
      random_data.randomDate(),
      locale: FFLocalizations.of(context).languageCode,
    ),
  );

  if (functions.convertJsonToString(getJsonField(
        (listScheduleCode2.jsonBody ?? ''),
        r'''$.error_code''',
      )) ==
      'no_schedule') {
    logFirebaseEvent('firstConfigValidation_navigate_to');

    context.pushNamed(
      'FirstAccessConfig',
      queryParameters: {
        'originConfig': serializeParam(
          originConfig,
          ParamType.String,
        ),
      }.withoutNulls,
    );
  } else {
    logFirebaseEvent('firstConfigValidation_backend_call');
    getServicesResultConfig = await APIOficialGroup.getServicesCall.call(
      authToken: currentAuthenticationToken,
    );

    if (getJsonField(
          (getServicesResultConfig.jsonBody ?? ''),
          r'''$.data[0].name''',
        ) ==
        null) {
      logFirebaseEvent('firstConfigValidation_navigate_to');

      context.pushNamed(
        'FirstAccessConfig',
        queryParameters: {
          'originConfig': serializeParam(
            originConfig,
            ParamType.String,
          ),
        }.withoutNulls,
      );
    } else {
      logFirebaseEvent('firstConfigValidation_backend_call');
      getpackagsResult = await APIOficialGroup.getPackagesCall.call(
        authToken: currentAuthenticationToken,
      );

      if (getJsonField(
            (getpackagsResult.jsonBody ?? ''),
            r'''$.data[0].name''',
          ) ==
          null) {
        logFirebaseEvent('firstConfigValidation_navigate_to');

        context.pushNamed(
          'FirstAccessConfig',
          queryParameters: {
            'originConfig': serializeParam(
              originConfig,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      } else {
        logFirebaseEvent('firstConfigValidation_backend_call');
        apiGetUserConfig = await APIOficialGroup.getUserCall.call(
          authToken: currentAuthenticationToken,
        );

        if (functions.convertJsonToString(getJsonField(
                  (apiGetUserConfig.jsonBody ?? ''),
                  r'''$.pay_method''',
                )) ==
                null ||
            functions.convertJsonToString(getJsonField(
                  (apiGetUserConfig.jsonBody ?? ''),
                  r'''$.pay_method''',
                )) ==
                '') {
          logFirebaseEvent('firstConfigValidation_navigate_to');

          context.pushNamed(
            'FirstAccessConfig',
            queryParameters: {
              'originConfig': serializeParam(
                originConfig,
                ParamType.String,
              ),
            }.withoutNulls,
          );
        } else {
          if (originConfig == 'schedule') {
            logFirebaseEvent('firstConfigValidation_navigate_to');

            context.pushNamed('Schedule01');
          } else if (originConfig == 'client') {
            logFirebaseEvent('firstConfigValidation_navigate_to');

            context.pushNamed('listAllClients');
          } else if (originConfig == 'newClient') {
            logFirebaseEvent('firstConfigValidation_navigate_to');

            context.pushNamed(
              'NewClient01',
              queryParameters: {
                'adicionadoPeloMais': serializeParam(
                  false,
                  ParamType.bool,
                ),
              }.withoutNulls,
            );
          }
        }
      }
    }
  }
}
