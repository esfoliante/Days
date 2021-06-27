import 'package:days_workers/screens/login_screen.dart';
import 'package:days_workers/screens/profile_screen.dart';
import 'package:days_workers/screens/read_qrcode_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class RouterHandler {
  static FluroRouter router = FluroRouter();

  static final Handler _loginScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());
  
  static final Handler _qrcodeScannerScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ReadQRCodeScreen());

  static final Handler _profileScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProfileScreen(id: int.parse(params["id"][0].toString())));
        

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginScreen,
    );
    router.define(
      'qrcodeScan',
      handler: _qrcodeScannerScreen,
    );
    router.define(
      'profile/:id',
      handler: _profileScreen,
    );
  }
}
