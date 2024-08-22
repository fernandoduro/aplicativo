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
  }) async {
    final baseUrl = APIOficialGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "$name",
  "password": "$password",
  "c_password": "$cPassword",
  "cellphone": "$cellphone",
  "category_id": $categoryId,
  "code": "$code"
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
