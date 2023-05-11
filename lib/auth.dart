import 'package:flutter/material.dart';

class Auth extends ChangeNotifier {
  bool _isRegisted = true;
  bool _isLoggedin = true;
  bool get authenticated => _isLoggedin;
  

  void login({required Map creds}) {
    
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
