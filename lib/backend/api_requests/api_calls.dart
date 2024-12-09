import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Oficial Group Code

class APIOficialGroup {
  static String getBaseUrl() => 'https://api.blubem.com.br/api';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static RegisterCall registerCall = RegisterCall();
  static CategoriesCall categoriesCall = CategoriesCall();
  static ColorsCall colorsCall = ColorsCall();
  static LayoutsCall layoutsCall = LayoutsCall();
  static SpecializationsCall specializationsCall = SpecializationsCall();
  static GetSiteCall getSiteCall = GetSiteCall();
  static UpdateSiteCall updateSiteCall = UpdateSiteCall();
  static DomainsCall domainsCall = DomainsCall();
  static CepCall cepCall = CepCall();
  static StateCall stateCall = StateCall();
  static CityCall cityCall = CityCall();
  static DomainCheckCall domainCheckCall = DomainCheckCall();
  static GetUserCall getUserCall = GetUserCall();
  static UpdateProfessionalCall updateProfessionalCall =
      UpdateProfessionalCall();
  static EncerrarContaCall encerrarContaCall = EncerrarContaCall();
  static InvitesCall invitesCall = InvitesCall();
  static MyInvitesCall myInvitesCall = MyInvitesCall();
  static RequestInviteCustomWebsiteCall requestInviteCustomWebsiteCall =
      RequestInviteCustomWebsiteCall();
  static GetPackagesCall getPackagesCall = GetPackagesCall();
  static ViewsCall viewsCall = ViewsCall();
  static CreateClientCall createClientCall = CreateClientCall();
  static ListAllClientsCall listAllClientsCall = ListAllClientsCall();
  static GetClientByIDCall getClientByIDCall = GetClientByIDCall();
  static ConfirmCodeCall confirmCodeCall = ConfirmCodeCall();
  static ResetpasswordCall resetpasswordCall = ResetpasswordCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static EditClientCall editClientCall = EditClientCall();
  static EditClientComplementCall editClientComplementCall =
      EditClientComplementCall();
  static PackagesByIdCall packagesByIdCall = PackagesByIdCall();
  static EditClientPackagesCall editClientPackagesCall =
      EditClientPackagesCall();
  static GetServicesCall getServicesCall = GetServicesCall();
  static CreateServiceCall createServiceCall = CreateServiceCall();
  static DeleteServiceCall deleteServiceCall = DeleteServiceCall();
  static UpdateServiceCall updateServiceCall = UpdateServiceCall();
  static CreatePackageCall createPackageCall = CreatePackageCall();
  static UpdatePackagesCall updatePackagesCall = UpdatePackagesCall();
  static DeletePackageCall deletePackageCall = DeletePackageCall();
  static GetAppointmentsByClientCall getAppointmentsByClientCall =
      GetAppointmentsByClientCall();
  static GETSolicitacoesCall gETSolicitacoesCall = GETSolicitacoesCall();
  static SubscriptionCurrentCall subscriptionCurrentCall =
      SubscriptionCurrentCall();
  static PostSolicitacoesCall postSolicitacoesCall = PostSolicitacoesCall();
  static GetAppointmentsByDateCall getAppointmentsByDateCall =
      GetAppointmentsByDateCall();
  static CreateAppointmentCall createAppointmentCall = CreateAppointmentCall();
  static AddHoursWorkProfessionalsCall addHoursWorkProfessionalsCall =
      AddHoursWorkProfessionalsCall();
  static DefaultDaysPaymentCall defaultDaysPaymentCall =
      DefaultDaysPaymentCall();
  static ListScheduleCall listScheduleCall = ListScheduleCall();
  static SubscriptionActiveTrialCall subscriptionActiveTrialCall =
      SubscriptionActiveTrialCall();
  static UpdateAppointmentCall updateAppointmentCall = UpdateAppointmentCall();
  static PUTSolicitacoesCall pUTSolicitacoesCall = PUTSolicitacoesCall();
  static AddClientAppointmentCall addClientAppointmentCall =
      AddClientAppointmentCall();
  static DeleteAppoitmentCall deleteAppoitmentCall = DeleteAppoitmentCall();
  static TimelineClientCall timelineClientCall = TimelineClientCall();
  static AddRatingsCall addRatingsCall = AddRatingsCall();
  static DeleteRatingsCall deleteRatingsCall = DeleteRatingsCall();
  static ListRatingsCall listRatingsCall = ListRatingsCall();
  static UpdateRatingCall updateRatingCall = UpdateRatingCall();
  static AddCommentsCall addCommentsCall = AddCommentsCall();
  static DeleteCommentsCall deleteCommentsCall = DeleteCommentsCall();
  static ListCommentsCall listCommentsCall = ListCommentsCall();
  static UpdateCommentsCall updateCommentsCall = UpdateCommentsCall();
  static GetPlanCall getPlanCall = GetPlanCall();
  static MyFeatureCall myFeatureCall = MyFeatureCall();
  static ListSubscriptionCall listSubscriptionCall = ListSubscriptionCall();
  static DeleteSubscriptionCall deleteSubscriptionCall =
      DeleteSubscriptionCall();
  static GetAppointmentsByIDCall getAppointmentsByIDCall =
      GetAppointmentsByIDCall();
  static GetSettingsCall getSettingsCall = GetSettingsCall();
  static EnableSettingCall enableSettingCall = EnableSettingCall();
  static DisableSettingCall disableSettingCall = DisableSettingCall();
  static InsightsCall insightsCall = InsightsCall();
  static ListConfigClubeWhatsappCall listConfigClubeWhatsappCall =
      ListConfigClubeWhatsappCall();
  static ListClubActivateCall listClubActivateCall = ListClubActivateCall();
  static SaveClubWhatsappCall saveClubWhatsappCall = SaveClubWhatsappCall();
  static SaveConfigClubActivateCall saveConfigClubActivateCall =
      SaveConfigClubActivateCall();
  static ListClientsClubStatementCall listClientsClubStatementCall =
      ListClientsClubStatementCall();
  static PutAppointmentsProfessionalCall putAppointmentsProfessionalCall =
      PutAppointmentsProfessionalCall();
  static DELETEClientCall dELETEClientCall = DELETEClientCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? password = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "cellphone": "$cellphone",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class RegisterCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? password = '',
    String? cPassword = '',
    String? cellphone = '',
    int? categoryId,
    String? code = '',
    String? gender = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "password": "$password",
  "c_password": "$cPassword",
  "cellphone": "$cellphone",
  "category_id": $categoryId,
  "code": "$code",
  "gender": "$gender"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: '$baseUrl/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CategoriesCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Categories',
      apiUrl: '$baseUrl/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ColorsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Colors',
      apiUrl: '$baseUrl/site/colors',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class LayoutsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Layouts',
      apiUrl: '$baseUrl/site/layouts',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SpecializationsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Specializations',
      apiUrl: '$baseUrl/site/specializations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
        true,
      ) as List?;
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetSiteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSite',
      apiUrl: '$baseUrl/site',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdateSiteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateSite',
      apiUrl: '$baseUrl/site/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DomainsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Domains',
      apiUrl: '$baseUrl/site/domains',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  List<String>? sugestions(dynamic response) => (getJsonField(
        response,
        r'''$.data.sugestions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CepCall {
  Future<ApiCallResponse> call({
    String? cep = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'CEP',
      apiUrl: '$baseUrl/tools/cep/$cep',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  String? logradouro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  String? complemento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  String? localidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
}

class StateCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'State',
      apiUrl: '$baseUrl/state',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CityCall {
  Future<ApiCallResponse> call({
    String? idCity = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'City',
      apiUrl: '$baseUrl/city?state=$idCity',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class DomainCheckCall {
  Future<ApiCallResponse> call({
    String? url = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DomainCheck',
      apiUrl: '$baseUrl/site/domain-check?domain=$url',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? exists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.exists''',
      ));
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUser',
      apiUrl: '$baseUrl/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? cellphone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cellphone''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  int? categoryid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.category_id''',
      ));
  String? disponibility(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.disponibility''',
      ));
}

class UpdateProfessionalCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateProfessional',
      apiUrl: '$baseUrl/professionals',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EncerrarContaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? motive = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'EncerrarConta',
      apiUrl: '$baseUrl/professionals?motive=$motive',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InvitesCall {
  Future<ApiCallResponse> call({
    String? invite = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Invites',
      apiUrl: '$baseUrl/invites/$invite/use',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? inviterid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.inviter_id''',
      ));
  int? invitedid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.invited_id''',
      ));
  String? usedat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.used_at''',
      ));
  String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class MyInvitesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MyInvites',
      apiUrl: '$baseUrl/my-invites',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  int? usedCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].used_count''',
      ));
}

class RequestInviteCustomWebsiteCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'RequestInviteCustomWebsite',
      apiUrl: '$baseUrl/request-invite/custom-website',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPackagesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPackages',
      apiUrl: '$baseUrl/packages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? services(dynamic response) => getJsonField(
        response,
        r'''$.data[:].services''',
        true,
      ) as List?;
}

class ViewsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Views',
      apiUrl: '$baseUrl/site/views',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class CreateClientCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? name = '',
    String? cpf = '',
    String? cellphone = '',
    String? status = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "cpf": "$cpf",
  "cellphone": [
    "$cellphone"
  ],
  "status": "$status"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateClient',
      apiUrl: '$baseUrl/clients',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ListAllClientsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? filter = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListAllClients',
      apiUrl: '$baseUrl/clients?q=$filter',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic allData(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
      );
}

class GetClientByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getClientByID',
      apiUrl: '$baseUrl/clients/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmCodeCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? code = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "cellphone": "$cellphone",
  "code": "$code"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConfirmCode',
      apiUrl: '$baseUrl/confirm-code',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetpasswordCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? code = '',
    String? password = '',
    String? cPassword = '',
    int? id,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "cellphone": "$cellphone",
  "code": "$code",
  "password": "$password",
  "c_password": "$cPassword",
  "id": $id
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Resetpassword',
      apiUrl: '$baseUrl/reset-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "cellphone": "$cellphone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ForgotPassword',
      apiUrl: '$baseUrl/forgot-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditClientCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? name = '',
    String? cpf = '',
    String? cellphone = '',
    List<int>? packagesList,
    String? status = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final packages = _serializeList(packagesList);

    final ffApiRequestBody = '''
{
  "name": "$name",
  "cpf": "$cpf",
  "cellphone": [
    "$cellphone"
  ],
  "status": "$status"
  
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editClient',
      apiUrl: '$baseUrl/clients/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditClientComplementCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    int? paymentDueDate,
    String? firstAppointment = '',
    String? birthday = '',
    String? gender = '',
    String? email = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "payment_due_date": $paymentDueDate,
  "first_appointment": "$firstAppointment",
  "birthday": "$birthday",
  "gender": "$gender",
  "email": [
    "$email"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editClientComplement',
      apiUrl: '$baseUrl/clients/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PackagesByIdCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'PackagesById',
      apiUrl: '$baseUrl/packages/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditClientPackagesCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    dynamic packagesJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final packages = _serializeJson(packagesJson, true);
    final ffApiRequestBody = '''
{
  "packages":$packages
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editClientPackages',
      apiUrl: '$baseUrl/clients/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetServicesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getServices',
      apiUrl: '$baseUrl/services',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
      );
}

class CreateServiceCall {
  Future<ApiCallResponse> call({
    String? name = '',
    int? durantion,
    bool? isSingularClient,
    int? maxClients,
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "duration": "$durantion",
  "is_singular_client": $isSingularClient,
  "max_clients": $maxClients
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateService',
      apiUrl: '$baseUrl/services',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteServiceCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteService',
      apiUrl: '$baseUrl/services/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateServiceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? name = '',
    int? duration,
    bool? isSingularClient,
    int? maxClients,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "duration": $duration,
  "is_singular_client": $isSingularClient,
  "max_clients": $maxClients
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateService',
      apiUrl: '$baseUrl/services/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePackageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? name = '',
    int? recurrency,
    double? monthlyValue,
    int? serviceIds,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "recurrency": $recurrency,
  "monthly_value": $monthlyValue,
  "service_ids": [$serviceIds]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePackage',
      apiUrl: '$baseUrl/packages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePackagesCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? name = '',
    int? recurrency,
    double? monthlyValue,
    int? serviceIds,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "recurrency": $recurrency,
  "monthly_value": $monthlyValue,
  "service_ids": [
    $serviceIds
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdatePackages',
      apiUrl: '$baseUrl/packages/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePackageCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeletePackage',
      apiUrl: '$baseUrl/packages/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppointmentsByClientCall {
  Future<ApiCallResponse> call({
    String? idCliente = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAppointmentsByClient',
      apiUrl: '$baseUrl/appointments?client=$idCliente',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GET solicitacoes',
      apiUrl: '$baseUrl/solicitations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dataGet(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? area(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].area''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? audio(dynamic response) => getJsonField(
        response,
        r'''$.data[:].audio''',
        true,
      ) as List?;
  List<String>? imagem(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].images''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? uodatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SubscriptionCurrentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SubscriptionCurrent',
      apiUrl: '$baseUrl/subscription/current',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? title = '',
    String? description = '',
    String? audioFile = '',
    List<String>? imagesList,
    String? status = '',
    String? area = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final images = _serializeList(imagesList);

    final ffApiRequestBody = '''
{
  "title": "$title",
  "description": "$description",
  "audio_file": "$audioFile",
  "images": $images,
  "status": "$status",
  "area": "$area"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Post Solicitacoes',
      apiUrl: '$baseUrl/solicitations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppointmentsByDateCall {
  Future<ApiCallResponse> call({
    String? dateFrom = '',
    String? dateTo = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAppointmentsByDate',
      apiUrl: '$baseUrl/appointments?date_from=$dateFrom&date_to=$dateTo',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAppointmentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? type = '',
    String? description = '',
    bool? recurrent,
    String? scheduledAt = '',
    String? confirmation = '',
    List<int>? professionalClientIdList,
    int? serviceId,
    String? recurrentInterval = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "type": "$type",
  "description": "$description",
  "recurrent": $recurrent,
  "recurrence_interval": "$recurrentInterval",
  "scheduled_at": "$scheduledAt",
  "confirmation": "$confirmation",
  "professional_client_id": $professionalClientId,
  "service_id": $serviceId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateAppointment',
      apiUrl: '$baseUrl/appointments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddHoursWorkProfessionalsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic disponibilityJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final disponibility = _serializeJson(disponibilityJson);
    final ffApiRequestBody = '''
{
  "disponibility": $disponibility
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addHoursWorkProfessionals',
      apiUrl: '$baseUrl/professionals',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DefaultDaysPaymentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? payMethod = '',
    String? payday = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "pay_method": "$payMethod",
  "payday": "$payday"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DefaultDaysPayment',
      apiUrl: '$baseUrl/professionals',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListScheduleCall {
  Future<ApiCallResponse> call({
    String? dataFiltro = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListSchedule',
      apiUrl: '$baseUrl/schedule?date=$dataFiltro',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubscriptionActiveTrialCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? featureId,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "feature_id": $featureId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SubscriptionActiveTrial',
      apiUrl: '$baseUrl/subscription/active-trial',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateAppointmentCall {
  Future<ApiCallResponse> call({
    String? type = '',
    String? description = '',
    bool? recurrent,
    String? scheduledAt = '',
    List<int>? professionalClientIdList,
    int? serviceId,
    String? authToken = '',
    String? idAppointment = '',
    String? recurrentInterval = '',
    String? confirmation = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "type": "$type",
  "description": "$description",
  "recurrent": $recurrent,
  "recurrence_interval": "$recurrentInterval",
  "scheduled_at": "$scheduledAt",
  "professional_client_id": $professionalClientId,
  "service_id": $serviceId,
  "confirmation": "$confirmation"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateAppointment',
      apiUrl: '$baseUrl/appointments/$idAppointment',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PUTSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? status = '',
    String? id = '',
    String? area = '',
    String? title = '',
    String? description = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "title": "$title",
  "status": "$status",
  "area": "$area",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PUT Solicitacoes',
      apiUrl: '$baseUrl/solicitations/$id',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddClientAppointmentCall {
  Future<ApiCallResponse> call({
    String? idAppointment = '',
    String? authToken = '',
    bool? recurrent,
    List<int>? professionalClientIdList,
    String? recurrentInterval = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "recurrent": $recurrent,
  "recurrence_interval": "$recurrentInterval",
  "professional_client_id": $professionalClientId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddClientAppointment',
      apiUrl: '$baseUrl/appointments/$idAppointment',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAppoitmentCall {
  Future<ApiCallResponse> call({
    String? idAppointment = '',
    String? authToken = '',
    String? date = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteAppoitment',
      apiUrl: '$baseUrl/appointments/$idAppointment?date=$date',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TimelineClientCall {
  Future<ApiCallResponse> call({
    String? idClient = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'TimelineClient',
      apiUrl: '$baseUrl/client/timeline/$idClient',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? packages(dynamic response) => getJsonField(
        response,
        r'''$.data.client.packages''',
        true,
      ) as List?;
  List? packagesItems(dynamic response) => getJsonField(
        response,
        r'''$.data.client.packages[:].items''',
        true,
      ) as List?;
}

class AddRatingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'AddRatings',
      apiUrl: '$baseUrl/ratings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteRatingsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteRatings',
      apiUrl: '$baseUrl/ratings/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRatingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? idClient = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListRatings',
      apiUrl: '$baseUrl/ratings?professional_client_id=$idClient',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRatingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateRating',
      apiUrl: '$baseUrl/ratings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'AddComments',
      apiUrl: '$baseUrl/comments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCommentsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteComments',
      apiUrl: '$baseUrl/comments/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? appointmentId = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListComments',
      apiUrl: '$baseUrl/comments?appointment_id=$appointmentId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic bodyJson,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = body;
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateComments',
      apiUrl: '$baseUrl/comments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlanCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetPlan',
      apiUrl: '$baseUrl/plan/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MyFeatureCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'MyFeature',
      apiUrl: '$baseUrl/features/my?feature_id=$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListSubscriptionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListSubscription',
      apiUrl: '$baseUrl/subscription',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteSubscriptionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? motive = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteSubscription',
      apiUrl: '$baseUrl/subscription?reason_cancel=$motive',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAppointmentsByIDCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAppointmentsByID',
      apiUrl: '$baseUrl/appointments/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSettingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Settings',
      apiUrl: '$baseUrl/settings',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EnableSettingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? settingId,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "setting_id": $settingId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enable Setting',
      apiUrl: '$baseUrl/settings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DisableSettingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Disable Setting',
      apiUrl: '$baseUrl/settings/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InsightsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'insights',
      apiUrl: '$baseUrl/insights/weekly-summary',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListConfigClubeWhatsappCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Config Clube  Whatsapp',
      apiUrl: '$baseUrl/club/config/whatsapp',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListClubActivateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Club Activate',
      apiUrl: '$baseUrl/club/config/activate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveClubWhatsappCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    bool? active,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"active":  $active
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Save club Whatsapp',
      apiUrl: '$baseUrl/club/config/whatsapp',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveConfigClubActivateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    bool? active,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"active":  $active
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Save config club activate',
      apiUrl: '$baseUrl/club/config/activate',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListClientsClubStatementCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List clients club statement',
      apiUrl: '$baseUrl/club/clients-statement',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PutAppointmentsProfessionalCall {
  Future<ApiCallResponse> call({
    String? idAppointment = '',
    String? authToken = '',
    List<int>? professionalClientIdList,
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "professional_client_id": $professionalClientId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PutAppointmentsProfessional',
      apiUrl: '$baseUrl/appointments/$idAppointment',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DELETEClientCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'DELETE Client',
      apiUrl: '$baseUrl/clients/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Oficial Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
