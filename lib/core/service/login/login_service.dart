import 'dart:io';

import 'package:bungee_web/core/util/managers/network_manager.dart';
import 'package:dio/dio.dart';

import 'model/request/login_request.dart';
import 'model/response/login_response.dart';


abstract class ILoginService {
  final String _path = '/auth/login';
  final Dio _dio = NetworkManager.instance.dio;
  Future<LoginResponse?> fetchLogin(LoginRequest model);

  ILoginService();
}

class LoginService extends ILoginService {
  static final shared = LoginService._init();
  LoginService._init();

  @override
  Future<LoginResponse> fetchLogin(LoginRequest model) async{
    final response = await _dio.post(_path, data: model);
    if (response.statusCode != HttpStatus.ok) {
      throw Exception('Response status code was ${response.statusCode}');
    }
    return LoginResponse.fromJson(response.data);
  }
}