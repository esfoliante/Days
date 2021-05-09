import 'package:days_workers/screens/login_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterHandler {
  static FluroRouter router = FluroRouter();

  static final Handler _loginScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginScreen,
    );
  }
}
