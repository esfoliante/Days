import 'package:days_mobile/widgets/settings_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String theme = 'white';

    void _setTheme() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('theme', theme);

      Navigator.pushNamed(context, 'home');
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: SettingsAppBar(
          title: "Definições",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
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
                  minWidth: width,
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
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                width: width * 0.6,
                constraints: BoxConstraints(
                  minWidth: 220,
                ),
                child: TextButton(
                  child: Text(
                    "L O G I N",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: width * 0.05,
                    ),
                  ),
                  onPressed: () {
                    _setTheme();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
