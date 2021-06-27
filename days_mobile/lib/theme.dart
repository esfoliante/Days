import 'package:flutter/material.dart';

ThemeData themeLight() {
  return ThemeData(
    primaryColor: const Color(0xff508D8F),
    accentColor: const Color(0xffE27F24),
    backgroundColor: const Color(0xffFFFFFF),
    highlightColor: const Color(0xff000000),
    scaffoldBackgroundColor: const Color(0xffFFFFFF),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

ThemeData themePink() {
  return ThemeData(
    primaryColor: const Color(0xffff97b7),
    accentColor: const Color(0xff73877B),
    highlightColor: const Color(0xffff97b7),
    backgroundColor: const Color(0xffFFFFFF),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

ThemeData themeDark() {
  return ThemeData(
    primaryColor: const Color(0xff508D8F),
    accentColor: const Color(0xffE27F24),
    backgroundColor: const Color(0xff171717),
    // ? I know that i am supposed to follow some shit about color
    // ? rules and stuff like that but... meh, I don't care xD
    highlightColor: const Color(0xffFFFFFF),
    scaffoldBackgroundColor: const Color(0xff121212),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
