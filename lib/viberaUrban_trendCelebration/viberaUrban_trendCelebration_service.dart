import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:vibera/viberaUrban_trendCelebration/viberaUrban_trendCelebration_nanager.dart';
import '../internal_framework_components_manager_methed/secure_string_decoding_service.dart';

enum NetworkRequestMethod { post, get, patch, delete }

class NetworkRequestDispatchService {
  static final NetworkRequestDispatchService _instance =
  NetworkRequestDispatchService._internal();
  factory NetworkRequestDispatchService() => _instance;
  NetworkRequestDispatchService._internal();

  final Dio _client = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  Future<dynamic> execute({
    required NetworkRequestMethod method,
    required String url,
    required Map<String, dynamic> data,
  }) async {
    try {
      Options options = _p1BuildOptions();
      Response response;

      switch (method) {
        case NetworkRequestMethod.post:
          response = await _client.post(url, data: data, options: options);
          break;
        case NetworkRequestMethod.get:
          response = await _client.get(
            url,
            queryParameters: data,
            options: options,
          );
          break;
        case NetworkRequestMethod.patch:
          response = await _client.patch(url, data: data, options: options);
          break;
        case NetworkRequestMethod.delete:
          response = await _client.delete(url, data: data, options: options);
          break;
      }
      return _p2ProcessResponse(response);
    } catch (e) {
      if (kDebugMode) {
        print(
          '${SecureStringDecodingService.d("TmV0d29yayByZXF1ZXN0IGVycm9yOiA=")} $e',
        );
      }
      return {
        SecureStringDecodingService.d(
          'ZXJyb3JNZXNzYWdl',
        ): '${SecureStringDecodingService.d("TmV0d29yayBlcnJvcjog")} ${e.toString()}',
      };
    }
  }

  Options _p1BuildOptions() {
    Map<String, String> headers = {
      SecureStringDecodingService.d(
        'Q29udGVudC1UeXBl',
      ): SecureStringDecodingService.d('YXBwbGljYXRpb24vanNvbg=='),
      SecureStringDecodingService.d('QWNjZXB0'): SecureStringDecodingService.d(
        'Ki8q',
      ),
      SecureStringDecodingService.d(
        'Q29ubmVjdGlvbg==',
      ): SecureStringDecodingService.d('a2VlcC1hbGl2ZQ=='),
    };

    if (ApplicationStateAndSessionManager.instance.v1SessionKey != null) {
      headers[ApplicationStateAndSessionManager.instance.v1SessionKey!] =
      ApplicationStateAndSessionManager.instance.v2SessionToken!;
    }
    return Options(headers: headers);
  }

  dynamic _p2ProcessResponse(Response response) {
    try {
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return {
          SecureStringDecodingService.d(
            'ZXJyb3JNZXNzYWdl',
          ): '${SecureStringDecodingService.d("UmVxdWVzdCBmYWlsZWQgd2l0aCBzdGF0dXM6IA==")} ${response.statusCode}',
        };
      }
    } catch (e) {
      if (kDebugMode) {
        print(
          '${SecureStringDecodingService.d("RXJyb3IgcHJvY2Vzc2luZyByZXNwb25zZTog")} $e',
        );
      }
      return {
        SecureStringDecodingService.d(
          'ZXJyb3JNZXNzYWdl',
        ): SecureStringDecodingService.d(
          'RmFpbGVkIHRvIHByb2Nlc3Mgc2VydmVyIHJlc3BvbnNl',
        ),
      };
    }
  }
}
