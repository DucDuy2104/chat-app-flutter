import 'dart:convert';

import 'package:chat_app/src/api/dio_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user/user.dart';

class HttpAuthRepository {
  DioClient dioClient = DioClient();
  Future<User?> login(String email, String pass) async {
    debugPrint('login......................');
    try {
      final response = await dioClient.dio.post('/user/login', data: {
        "email" : email,
        "password" : pass
      });
      if(response.data['status']) {
        final user = User.fromJson(response.data['data']);
        debugPrint('user $user');
        return user;
      } else {
        throw Exception('Lỗi gọi api dang nhap!');
      }
    } catch(e) {
      debugPrint('Lỗi đăng nhập $e');
    }
    return null;
  }

}

final httpAuthRepositoryProvider = Provider<HttpAuthRepository>((ref) {
  return HttpAuthRepository();
});