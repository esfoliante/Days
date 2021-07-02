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

    Future<int> getCurrentTheme() async {
      final SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      String theme = await sharedPreferences.getString('theme');

      if (theme == 'dark') return 1;

      return 0;
    }

    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return FutureBuilder(
        future: getCurrentTheme(),
        builder: (context, AsyncSnapshot<int> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _buildLoadingBar();
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
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 18.9,
                      ),
                      child: Container(
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
                          inactiveBgColor: Theme.of(context).backgroundColor,
                          inactiveFgColor: Theme.of(context).primaryColor,
                          initialLabelIndex: snapshot.data,
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
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      'Terá de reiniciar a aplicação para aplicar o tema *',
                      style: TextStyle(
                        fontSize: 10.0,
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
                          "G U A R D A R",
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
        });
  }
}
