import 'dart:io';

import 'package:dio/dio.dart';

const String BASE_URL = "http://hazrin.aiota.live/api/";

class DioService {
  static Dio? _dio;
  DioService() {
    _dio = Dio();
    _dio!.options.baseUrl = BASE_URL;
    _dio!.options.connectTimeout = 30000;
    _dio!.options.receiveTimeout = 30000;
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          print('onRequest');
          print(options.path);
          print(options.method);
          _dio!.options.headers.putIfAbsent(
              HttpHeaders.acceptHeader, () => Headers.jsonContentType);
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('onResponse');
          print(response.statusCode);
          print(response.requestOptions.path);
          print('success: ${response.data['success']}');
          print('message: ${response.data['message']}');
          return handler.next(response);
        },
        onError: (DioError error, ErrorInterceptorHandler handler) {
          if (error.response?.statusCode == 401) {
            print('DioError - trying again - ${error.response?.statusCode}');
            print(error.error ?? 'NUll from dioerror');
          } else {
            print(error.response?.statusCode);
            print(error.message);
          }
          return handler.next(error);
        },
      ),
    );
  }
  static Dio getInstance() {
    if (_dio == null) {
      DioService();
      return _dio!;
    }
    return _dio!;
  }
}

// class HttpService {
//   Dio? _dio;

//   final baseUrl = "http://hazrin.aiota.live/api";

//   HttpService() {
//     _dio = Dio(BaseOptions(
//       baseUrl: baseUrl,
//     ));

//     // initializeInterceptors();
//   }

//   Future<Response> getRequest(String endPoint) async {
//     Response response;

//     try {
//       response = await _dio!.get(endPoint);
//     } on DioError catch (e) {
//       print(e.message);
//       throw Exception(e.message);
//     }

//     return response;
//   }

// initializeInterceptors() {
//   _dio!.interceptors.add(InterceptorsWrapper(onError: (error) {
//     assert(error != null);
//     print(error.message);
//   }, onRequest: (request) {
//     assert(request != null);
//     print("${request.method} ${request.path}");
//   }, onResponse: (response) {
//     print(response.data);
//   }));
// }

// }

// void getHttp() async {
//   try {
//     var response = await Dio().get('https://hazrin.aiota.live/api/');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }

// import 'dart:convert';

// // import 'package:http/http.dart' as http;

//
// class SummaryResponseFailure implements Exception {}

// class SummaryRequstFailure implements Exception {}
