import 'package:days_workers/theme.dart';
import 'package:fluro/fluro.dart';
import 'package:days_workers/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  RouterHandler.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      // darkTheme: themeDark(),
      initialRoute: 'login',
      onGenerateRoute: RouterHandler.router.generator,
    );
  }
}
