import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'paynest-d5dvczaxcfaqhycj.centralindia-01.azurewebsites.net';
  static Map<String, String> headers = {};
  static SendOTPToUsersPhoneNumberCall sendOTPToUsersPhoneNumberCall =
      SendOTPToUsersPhoneNumberCall();
  static VerifyOTPAndAuthenticateUserCall verifyOTPAndAuthenticateUserCall =
      VerifyOTPAndAuthenticateUserCall();
}

class SendOTPToUsersPhoneNumberCall {
  Future<ApiCallResponse> call({
    String? phoneNumber = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phoneNumber": "+91${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP to user\'s phone number',
      apiUrl: '${baseUrl}/auth/send-otp',
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

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class VerifyOTPAndAuthenticateUserCall {
  Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? otp = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phoneNumber": "+91${escapeStringForJson(phoneNumber)}",
  "otp": "${escapeStringForJson(otp)}",
  "type": "tenant"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP and authenticate user',
      apiUrl: '${baseUrl}/auth/verify-otp',
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

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? userType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userType''',
      ));
  bool? isNew(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isNew''',
      ));
  bool? inProperty(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.inProperty''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Authorization''',
      ));
}

/// End Auth Group Code

/// Start Tenant Group Code

class TenantGroup {
  static String getBaseUrl() =>
      'paynest-d5dvczaxcfaqhycj.centralindia-01.azurewebsites.net';
  static Map<String, String> headers = {};
  static RegisterTenantCall registerTenantCall = RegisterTenantCall();
}

class RegisterTenantCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = TenantGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "phoneNumber": "919876543210",
  "name": "Alice Johnson",
  "email": "alice.johnson@example.com",
  "gender": "Female",
  "bio": "Loves photography and hiking.",
  "maritalStatus": "Single",
  "emergencyContact": {
    "name": "Robert Johnson",
    "phone": "919876543211",
    "relationShip": "Brother"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register tenant',
      apiUrl: '${baseUrl}/tenant/register',
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

/// End Tenant Group Code

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
