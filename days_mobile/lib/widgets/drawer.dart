import 'package:days_mobile/stores/student.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final StudentMob _studentMob = Provider.of<StudentMob>(context);

    return Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.2,
                      right: width * 0.2,
                      top: height * 0.03,
                      bottom: height * 0.05,
                    ),
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  _tab(context, "Próxima Aula", "schedule"),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  // ? Let's leave this here for another time, shall we?
                  /*_tab(context, "Marcação de Refeições", "candle"),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),*/
                  _tab(context, "Movimentos de conta", "cardMoviments"),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  _tab(context, "Ver atividade", "activity"),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  _tab(context, "Ver perfil", "profile"),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  _logout(context, _studentMob),
                ],
              ),
            ),
            // ? In case you're wondering, we've created this container to
            // ? put the version in the bottom left
            Container(
              // This align moves the children to the bottom
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                // This container holds all the children that will be aligned
                // on the bottom and should not scroll with the above ListView
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            bottom: 10.0,
                          ),
                          child: Text(
                            'Versão 0.1.0',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tab(BuildContext context, String title, String route) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: height * 0.02,
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: () => Navigator.of(context).popAndPushNamed(route),
      ),
    );
  }

  Widget _logout(BuildContext context, StudentMob _studentMob) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: ListTile(
        title: Text(
          "Logout",
          style: TextStyle(
            fontSize: height * 0.02,
            color: Theme.of(context).primaryColor,
          ),
        ),
        onTap: () => _logoutStudent(context, _studentMob),
      ),
    );
  }

  void _logoutStudent(context, StudentMob studentMob) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('token', '');
    
    Navigator.of(context).popAndPushNamed('login');
  }
}
