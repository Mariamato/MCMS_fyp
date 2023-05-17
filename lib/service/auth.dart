import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'package:municipal_cms/service/dio.dart';

class Auth extends ChangeNotifier {
  bool _isRegisted = true;
  bool _isLoggedin = true;
  bool get authenticated => _isLoggedin;

  void login({required Map creds}) async {
    try {
      Dio.Response responce = await dio().post('/sanctum/token', data: creds);
      print(responce.data.toString());
    } catch (e) {
      print(e);
    }

    _isLoggedin = true;
    notifyListeners();
  }

  void logout(Map creds) {
    _isLoggedin = false;
    notifyListeners();
  }

  void register({required Map creds}) {
    _isRegisted = true;
    notifyListeners();
  }
}
