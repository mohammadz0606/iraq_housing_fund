import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

final class Network {
  /// Singleton class

  Network._();

  static final Network _instance = Network._();

  factory Network() {
    return _instance;
  }

  late Dio _dio;
  final CookieJar _cookieJar = CookieJar();

  void init() {
    BaseOptions options =
    BaseOptions(headers: {'ContentType': 'application/json'});
    _dio = Dio(options);

    (_dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    _dio.interceptors.add(CookieManager(_cookieJar));
    if (kDebugMode) {
      _dio.interceptors.add(
        TalkerDioLogger(
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
            printRequestData: true,
            printResponseData: true,
            printErrorData: true,
            printErrorMessage: true,
          ),
        ),
      );
    }
  }


}
