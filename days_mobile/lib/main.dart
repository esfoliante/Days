import 'package:days_mobile/screens/auth/login_screen.dart';
import 'package:days_mobile/screens/initialization/choosetheme_screen.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/theme.dart';
import 'package:fluro/fluro.dart';
import 'package:days_mobile/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'routes.dart';

final StudentMob studentMob = StudentMob();

void main() {
  RouterHandler.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  Future<String> _getTheme() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String theme = await sharedPreferences.getString('theme');

    return theme;
  }

  Future<ThemeData> _chooseTheme() async {
    String theme = await _getTheme();

    if (theme == 'dark') {
      return themeDark();
    }

    return themeLight();
  }

  Widget _buildLoadingBar() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

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
        Provider<StudentMob>(
          create: (_) => studentMob,
        ),
      ],
      child: FutureBuilder(
          future: _chooseTheme(),
          builder: (context, AsyncSnapshot<ThemeData> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return _buildLoadingBar();
            }

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: snapshot.data,
              initialRoute: 'load',
              onGenerateRoute: RouterHandler.router.generator,
            );
          }),
    );
  }
}
