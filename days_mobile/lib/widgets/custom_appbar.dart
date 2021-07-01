import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({Key key, this.title}) : super(key: key);

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
      actions: [
        IconButton(
          icon: Icon(Icons.settings_outlined, size: 30.0, color: Colors.white),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () => Navigator.pushNamed(context, 'settings'),
        )
      ],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
    );
  }
}
