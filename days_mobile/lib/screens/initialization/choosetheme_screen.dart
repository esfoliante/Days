import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ChooseThemeScreen extends StatefulWidget {
  ChooseThemeScreen({Key key}) : super(key: key);

  @override
  _ChooseThemeScreenState createState() => _ChooseThemeScreenState();
}

class _ChooseThemeScreenState extends State<ChooseThemeScreen> {
  @override
  void initState() {
    super.initState();
    bool lightTheme = false;
    bool darkTheme = false;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String theme = 'white';

    void _setTheme() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('theme', theme);

      Navigator.pushNamed(context, 'tour');
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.15,
                ),
                Text(
                  "Antes de\ntudo...",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Text(
                  "Preferes usar o tema claro ou o tema escuro?",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Podes mudar a tua escolha mais tarde.",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: width * 0.05,
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Container(
                  height: height * 0.1,
                  width: width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.0,
                    ),
                  ),
                  child: ToggleSwitch(
                    minWidth: width / 2.659,
                    cornerRadius: 50.0,
                    inactiveBgColor: Colors.white,
                    inactiveFgColor: Theme.of(context).primaryColor,
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    icons: [
                      Icons.wb_sunny_outlined,
                      Icons.brightness_2_outlined,
                    ],
                    labels: ['Claro', 'Escuro'],
                    onToggle: (index) {
                      print('switched to: $index');
                      if (index == 0) {
                        theme = 'white';
                      } else {
                        theme = 'dark';
                      }
                      print(theme);
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: width * 0.14,
                    width: width * 0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: FlatButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: width * 0.05,
                      ),
                      onPressed: () => _setTheme(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* 

_themeButton(
  true,
  Icons.wb_sunny_outlined,
  "left",
  "light",
  context,
),
_themeButton(
  false,
  Icons.brightness_2_outlined,
  "right",
  "dark",
  context,
),

*/

Widget _themeButton(bool isSelected, IconData icon, String position,
    String name, BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;

  Color _checkColor(bool isSelected) {
    if (isSelected) {
      return Theme.of(context).primaryColor;
    }

    return Colors.transparent;
  }

  Color _checkIconColor(bool isSelected) {
    if (!isSelected) {
      return Theme.of(context).primaryColor;
    }

    return Colors.white;
  }

  BorderRadius _checkBorders(String position) {
    if (position == "left") {
      return BorderRadius.only(
        topLeft: Radius.circular(
          50.0,
        ),
        bottomLeft: Radius.circular(
          50.0,
        ),
      );
    }

    return BorderRadius.only(
      topRight: Radius.circular(
        50.0,
      ),
      bottomRight: Radius.circular(
        50.0,
      ),
    );
  }

  return Container(
    decoration: BoxDecoration(
      borderRadius: _checkBorders(position),
      color: _checkColor(isSelected),
    ),
    child: FlatButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      height: height * 0.1,
      minWidth: width * 0.36115,
      child: Icon(
        icon,
        color: _checkIconColor(isSelected),
        size: 30.0,
      ),
      onPressed: () => {},
    ),
  );
}
