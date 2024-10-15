// lib/services/dio_client.dart

import 'package:dio/dio.dart';

class DioClient {
  final Dio dio;

  DioClient() : dio = Dio() {
    dio.options.baseUrl = 'https://slay-chat-back-end.onrender.com';

    dio.options.connectTimeout = Duration(seconds: 5); // 5 giây
    dio.options.receiveTimeout = Duration(seconds: 3); // 3 giây

    dio.options.headers['Authorization'] = 'Bearer your_token_here';

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print('Yêu cầu: ${options.method} ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('Phản hồi: ${response.statusCode} ${response.data}');
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        print('Lỗi: ${e.message}');
        return handler.next(e);
      },
    ));
  }
}
