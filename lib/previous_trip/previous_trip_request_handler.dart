import 'dart:convert';
import 'previous_trip_user_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

enum HttpRequestMethod {
  post,
  get,
  patch,
  delete,
}

class PreviousTripRequestHandler {
  static final PreviousTripRequestHandler _instance = PreviousTripRequestHandler._internal();
  factory PreviousTripRequestHandler() => _instance;
  PreviousTripRequestHandler._internal();

  final Dio _dioClient = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  ));

  Future<dynamic> sendRequest({
    required HttpRequestMethod method,
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      Options requestOptions = _buildRequestOptions();
      Response response;

      switch (method) {
        case HttpRequestMethod.post:
          response = await _dioClient.post(url, data: data, options: requestOptions);
          break;
        case HttpRequestMethod.get:
          response = await _dioClient.get(url, queryParameters: data, options: requestOptions);
          break;
        case HttpRequestMethod.patch:
          response = await _dioClient.patch(url, data: data, options: requestOptions);
          break;
        case HttpRequestMethod.delete:
          response = await _dioClient.delete(url, data: data, options: requestOptions);
          break;
      }
      return _processResponse(response);
    } catch (e) {
      if (kDebugMode) {
        print('Network request error: $e');
      }
      return {'errorMessage': 'Network error: ${e.toString()}'};
    }
  }

  Options _buildRequestOptions() {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': '*/*',
      'Connection': 'keep-alive',
    };

    if (PreviousTripUserData.instance.sessionKey != null) {
      headers[PreviousTripUserData.instance.sessionKey!] = PreviousTripUserData.instance.sessionToken!;
    }
    return Options(headers: headers);
  }

  dynamic _processResponse(Response response) {
    try {
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return {'errorMessage': 'Request failed with status: ${response.statusCode}'};
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error processing response: $e');
      }
      return {'errorMessage': 'Failed to process server response'};
    }
  }
}

