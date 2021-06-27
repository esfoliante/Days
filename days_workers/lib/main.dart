import 'package:days_workers/stores/user.store.dart';
import 'package:days_workers/theme.dart';
import 'package:fluro/fluro.dart';
import 'package:days_workers/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

final UserMob userMob = UserMob();

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<UserMob>(
          create: (_) => userMob,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeLight(),
        initialRoute: 'login',
        onGenerateRoute: RouterHandler.router.generator,
      ),
    );
  }
}
