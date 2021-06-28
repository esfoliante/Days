import 'package:flutter/material.dart';

class ProfileCustomAppbar extends StatelessWidget {
  final String title;

  const ProfileCustomAppbar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: width * 0.05,
          color: Colors.white,
        ),
      ),
      bottom: TabBar(
        tabs: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: Text(
              'Importantes',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10.0,
            ),
            child: Text(
              'Entradas e Saídas',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
