import 'package:days_mobile/screens/auth/login_screen.dart';
import 'package:days_mobile/screens/initialization/choosetheme_screen.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/theme.dart';
import 'package:fluro/fluro.dart';
import 'package:days_mobile/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

final StudentMob studentMob = StudentMob();

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
    return MultiProvider(
      providers: [
        Provider<StudentMob>(
          create: (_) => studentMob,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeLight(),
        // darkTheme: themeDark(),
        initialRoute: 'changePassword',
        onGenerateRoute: RouterHandler.router.generator,
      ),
    );
  }
}
