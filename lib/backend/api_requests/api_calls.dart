import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Oficial Group Code

class APIOficialGroup {
  static String getBaseUrl({
    String? apiURL,
  }) {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    return '${apiURL}';
  }

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
  static PostSolicitacoesCompletoCall postSolicitacoesCompletoCall =
      PostSolicitacoesCompletoCall();
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
  static POSTSolicitationsSemDescricaoCall pOSTSolicitationsSemDescricaoCall =
      POSTSolicitationsSemDescricaoCall();
  static POSTSolicitationsSemAudioCall pOSTSolicitationsSemAudioCall =
      POSTSolicitationsSemAudioCall();

  static final interceptors = [
    SwitchApiInterceptor(),
  ];
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? password = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "cellphone": "${cellphone}",
  "password": "${password}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Login',
        apiUrl: '${baseUrl}/login',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
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
    List<String>? challangeList,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final challange = _serializeList(challangeList);

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "password": "${password}",
  "c_password": "${cPassword}",
  "cellphone": "${cellphone}",
  "category_id": ${categoryId},
  "code": "${code}",
  "gender": "${gender}",
  "challange": ${challange}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Register',
        apiUrl: '${baseUrl}/register',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
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
  Future<ApiCallResponse> call({
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Categories',
        apiUrl: '${baseUrl}/categories',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Colors',
        apiUrl: '${baseUrl}/site/colors',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Layouts',
        apiUrl: '${baseUrl}/site/layouts',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Specializations',
        apiUrl: '${baseUrl}/site/specializations',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GetSite',
        apiUrl: '${baseUrl}/site',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
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
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateSite',
        apiUrl: '${baseUrl}/site/update',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Domains',
        apiUrl: '${baseUrl}/site/domains',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  dynamic? data(dynamic response) => getJsonField(
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'CEP',
        apiUrl: '${baseUrl}/tools/cep/${cep}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
  Future<ApiCallResponse> call({
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'State',
        apiUrl: '${baseUrl}/state',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'City',
        apiUrl: '${baseUrl}/city?state=${idCity}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DomainCheck',
        apiUrl: '${baseUrl}/site/domain-check?domain=${url}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic? data(dynamic response) => getJsonField(
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GetUser',
        apiUrl: '${baseUrl}/user',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateProfessional',
        apiUrl: '${baseUrl}/professionals',
        callType: ApiCallType.PATCH,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class EncerrarContaCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? motive = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'EncerrarConta',
        apiUrl: '${baseUrl}/professionals?motive=${motive}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class InvitesCall {
  Future<ApiCallResponse> call({
    String? invite = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Invites',
        apiUrl: '${baseUrl}/invites/${invite}/use',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'MyInvites',
        apiUrl: '${baseUrl}/my-invites',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'RequestInviteCustomWebsite',
        apiUrl: '${baseUrl}/request-invite/custom-website',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetPackagesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'getPackages',
        apiUrl: '${baseUrl}/packages',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Views',
        apiUrl: '${baseUrl}/site/views',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic? data(dynamic response) => getJsonField(
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "cpf": "${cpf}",
  "cellphone": [
    "${cellphone}"
  ],
  "status": "${status}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'CreateClient',
        apiUrl: '${baseUrl}/clients',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic? data(dynamic response) => getJsonField(
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ListAllClients',
        apiUrl: '${baseUrl}/clients?q=${filter}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
  dynamic? allData(dynamic response) => getJsonField(
        response,
        r'''$.data[*]''',
      );
}

class GetClientByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'getClientByID',
        apiUrl: '${baseUrl}/clients/${id}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ConfirmCodeCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? code = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "cellphone": "${cellphone}",
  "code": "${code}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ConfirmCode',
        apiUrl: '${baseUrl}/confirm-code',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "cellphone": "${cellphone}",
  "code": "${code}",
  "password": "${password}",
  "c_password": "${cPassword}",
  "id": ${id}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Resetpassword',
        apiUrl: '${baseUrl}/reset-password',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? cellphone = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "cellphone": "${cellphone}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ForgotPassword',
        apiUrl: '${baseUrl}/forgot-password',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {},
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final packages = _serializeList(packagesList);

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "cpf": "${cpf}",
  "cellphone": [
    "${cellphone}"
  ],
  "status": "${status}"
  
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'editClient',
        apiUrl: '${baseUrl}/clients/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "payment_due_date": ${paymentDueDate},
  "first_appointment": "${firstAppointment}",
  "birthday": "${birthday}",
  "gender": "${gender}",
  "email": [
    "${email}"
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'editClientComplement',
        apiUrl: '${baseUrl}/clients/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class PackagesByIdCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PackagesById',
        apiUrl: '${baseUrl}/packages/${id}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class EditClientPackagesCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    dynamic? packagesJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final packages = _serializeJson(packagesJson, true);
    final ffApiRequestBody = '''
{
  "packages":${packages}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'editClientPackages',
        apiUrl: '${baseUrl}/clients/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetServicesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'getServices',
        apiUrl: '${baseUrl}/services',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
  dynamic? data(dynamic response) => getJsonField(
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
    String? extraDuration = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "duration": "${durantion}",
  "extra_duration": "${extraDuration}",
  "is_singular_client": ${isSingularClient},
  "max_clients": ${maxClients}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'CreateService',
        apiUrl: '${baseUrl}/services',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeleteServiceCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteService',
        apiUrl: '${baseUrl}/services/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? extraDuration = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "duration": ${duration},
  "extra_duration": "${extraDuration}",
  "is_singular_client": ${isSingularClient},
  "max_clients": ${maxClients}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateService',
        apiUrl: '${baseUrl}/services/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "recurrency": ${recurrency},
  "monthly_value": ${monthlyValue},
  "service_ids": [${serviceIds}]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'CreatePackage',
        apiUrl: '${baseUrl}/packages',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "name": "${name}",
  "recurrency": ${recurrency},
  "monthly_value": ${monthlyValue},
  "service_ids": [
    ${serviceIds}
  ]
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdatePackages',
        apiUrl: '${baseUrl}/packages/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeletePackageCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeletePackage',
        apiUrl: '${baseUrl}/packages/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetAppointmentsByClientCall {
  Future<ApiCallResponse> call({
    String? idCliente = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GetAppointmentsByClient',
        apiUrl: '${baseUrl}/appointments?client=${idCliente}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GETSolicitacoesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GET solicitacoes',
        apiUrl: '${baseUrl}/solicitations',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'SubscriptionCurrent',
        apiUrl: '${baseUrl}/subscription/current',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class PostSolicitacoesCompletoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? title = '',
    String? description = '',
    String? audioFile = '',
    List<String>? imagesList,
    String? status = '',
    String? area = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final images = _serializeList(imagesList);

    final ffApiRequestBody = '''
{
  "title": "${title}",
  "description": "${description}",
  "audio_file": "${audioFile}",
  "images": ${images},
  "status": "${status}",
  "area": "${area}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Post Solicitacoes Completo',
        apiUrl: '${baseUrl}/solicitations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetAppointmentsByDateCall {
  Future<ApiCallResponse> call({
    String? dateFrom = '',
    String? dateTo = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'getAppointmentsByDate',
        apiUrl:
            '${baseUrl}/appointments?date_from=${dateFrom}&date_to=${dateTo}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    int? duration,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "type": "${type}",
  "description": "${description}",
  "recurrent": ${recurrent},
  "recurrence_interval": "${recurrentInterval}",
  "scheduled_at": "${scheduledAt}",
  "confirmation": "${confirmation}",
  "professional_client_id": ${professionalClientId},
  "service_id": ${serviceId},
  "duration": ${duration}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'CreateAppointment',
        apiUrl: '${baseUrl}/appointments',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class AddHoursWorkProfessionalsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic? disponibilityJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final disponibility = _serializeJson(disponibilityJson);
    final ffApiRequestBody = '''
{
  "disponibility": ${disponibility}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'addHoursWorkProfessionals',
        apiUrl: '${baseUrl}/professionals',
        callType: ApiCallType.PATCH,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DefaultDaysPaymentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? payMethod = '',
    String? payday = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "pay_method": "${payMethod}",
  "payday": "${payday}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DefaultDaysPayment',
        apiUrl: '${baseUrl}/professionals',
        callType: ApiCallType.PATCH,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListScheduleCall {
  Future<ApiCallResponse> call({
    String? dataFiltro = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ListSchedule',
        apiUrl: '${baseUrl}/schedule?date=${dataFiltro}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class SubscriptionActiveTrialCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? featureId,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "feature_id": ${featureId}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'SubscriptionActiveTrial',
        apiUrl: '${baseUrl}/subscription/active-trial',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    int? duration,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "type": "${type}",
  "description": "${description}",
  "recurrent": ${recurrent},
  "recurrence_interval": "${recurrentInterval}",
  "scheduled_at": "${scheduledAt}",
  "professional_client_id": ${professionalClientId},
  "service_id": ${serviceId},
  "confirmation": "${confirmation}",
  "duration": ${duration}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateAppointment',
        apiUrl: '${baseUrl}/appointments/${idAppointment}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "title": "${title}",
  "status": "${status}",
  "area": "${area}",
  "description": "${description}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PUT Solicitacoes',
        apiUrl: '${baseUrl}/solicitations/${id}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "recurrent": ${recurrent},
  "recurrence_interval": "${recurrentInterval}",
  "professional_client_id": ${professionalClientId}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'AddClientAppointment',
        apiUrl: '${baseUrl}/appointments/${idAppointment}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeleteAppoitmentCall {
  Future<ApiCallResponse> call({
    String? idAppointment = '',
    String? authToken = '',
    String? date = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteAppoitment',
        apiUrl: '${baseUrl}/appointments/${idAppointment}?date=${date}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class TimelineClientCall {
  Future<ApiCallResponse> call({
    String? idClient = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'TimelineClient',
        apiUrl: '${baseUrl}/client/timeline/${idClient}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'AddRatings',
        apiUrl: '${baseUrl}/ratings',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeleteRatingsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteRatings',
        apiUrl: '${baseUrl}/ratings/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListRatingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? professionalClientId = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ListRatings',
        apiUrl:
            '${baseUrl}/ratings?professional_client_id=${professionalClientId}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class UpdateRatingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateRating',
        apiUrl: '${baseUrl}/ratings',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class AddCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'AddComments',
        apiUrl: '${baseUrl}/comments',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeleteCommentsCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteComments',
        apiUrl: '${baseUrl}/comments/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? appointmentId = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ListComments',
        apiUrl: '${baseUrl}/comments?appointment_id=${appointmentId}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class UpdateCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    dynamic? bodyJson,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final body = _serializeJson(bodyJson);
    final ffApiRequestBody = '''
${body}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'UpdateComments',
        apiUrl: '${baseUrl}/comments',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetPlanCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GetPlan',
        apiUrl: '${baseUrl}/plan/${id}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class MyFeatureCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'MyFeature',
        apiUrl: '${baseUrl}/features/my?feature_id=${id}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListSubscriptionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'ListSubscription',
        apiUrl: '${baseUrl}/subscription',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DeleteSubscriptionCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? motive = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DeleteSubscription',
        apiUrl: '${baseUrl}/subscription?reason_cancel=${motive}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetAppointmentsByIDCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'GetAppointmentsByID',
        apiUrl: '${baseUrl}/appointments/${id}',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class GetSettingsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Get Settings',
        apiUrl: '${baseUrl}/settings',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class EnableSettingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? settingId,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "setting_id": ${settingId}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Enable Setting',
        apiUrl: '${baseUrl}/settings',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DisableSettingCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Disable Setting',
        apiUrl: '${baseUrl}/settings/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class InsightsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'insights',
        apiUrl: '${baseUrl}/insights/weekly-summary',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListConfigClubeWhatsappCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'List Config Clube  Whatsapp',
        apiUrl: '${baseUrl}/club/config/whatsapp',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListClubActivateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'List Club Activate',
        apiUrl: '${baseUrl}/club/config/activate',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class SaveClubWhatsappCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    bool? active,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
"active":  ${active}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Save club Whatsapp',
        apiUrl: '${baseUrl}/club/config/whatsapp',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class SaveConfigClubActivateCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    bool? active,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
"active":  ${active}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'Save config club activate',
        apiUrl: '${baseUrl}/club/config/activate',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class ListClientsClubStatementCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'List clients club statement',
        apiUrl: '${baseUrl}/club/clients-statement',
        callType: ApiCallType.GET,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class PutAppointmentsProfessionalCall {
  Future<ApiCallResponse> call({
    String? idAppointment = '',
    String? authToken = '',
    List<int>? professionalClientIdList,
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final professionalClientId = _serializeList(professionalClientIdList);

    final ffApiRequestBody = '''
{
  "professional_client_id": ${professionalClientId}
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'PutAppointmentsProfessional',
        apiUrl: '${baseUrl}/appointments/${idAppointment}',
        callType: ApiCallType.PUT,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class DELETEClientCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'DELETE Client',
        apiUrl: '${baseUrl}/clients/${id}',
        callType: ApiCallType.DELETE,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},

        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class POSTSolicitationsSemDescricaoCall {
  Future<ApiCallResponse> call({
    String? title = '',
    String? audioFile = '',
    List<String>? imagesList,
    String? status = '',
    String? area = '',
    String? authToken = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final images = _serializeList(imagesList);

    final ffApiRequestBody = '''
{
  "title": "${escapeStringForJson(title)}",
   "audio_file": "${escapeStringForJson(audioFile)}",
  "images": ${images},
  "status": "${escapeStringForJson(status)}",
  "area": "${escapeStringForJson(area)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'POST solicitations  sem descricao',
        apiUrl: '${baseUrl}/solicitations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
    );
  }
}

class POSTSolicitationsSemAudioCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? title = '',
    String? description = '',
    List<String>? imagesList,
    String? status = '',
    String? area = '',
    String? apiURL,
  }) async {
    apiURL ??= FFDevEnvironmentValues().apiURL;
    final baseUrl = APIOficialGroup.getBaseUrl(
      apiURL: apiURL,
    );
    final images = _serializeList(imagesList);

    final ffApiRequestBody = '''
{
  "title": "${escapeStringForJson(title)}",
  "description": "${escapeStringForJson(description)}",
  "images": ${images},
  "status": "${escapeStringForJson(status)}",
  "area": "${escapeStringForJson(area)}"
}''';
    return FFApiInterceptor.makeApiCall(
      // ignore: prefer_const_constructors - can be mutated by interceptors
      ApiCallOptions(
        callName: 'POST solicitations sem audio',
        apiUrl: '${baseUrl}/solicitations',
        callType: ApiCallType.POST,
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        headers: {
          'Authorization': 'Bearer ${authToken}',
        },
        // ignore: prefer_const_literals_to_create_immutables - can be mutated by interceptors
        params: {},
        body: ffApiRequestBody,
        bodyType: BodyType.JSON,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        isStreamingApi: false,
        alwaysAllowBody: false,
      ),

      APIOficialGroup.interceptors,
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
