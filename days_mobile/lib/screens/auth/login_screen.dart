import 'package:days_mobile/screens/initialization/choosetheme_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.10,
                ),
                Image.asset(
                  'assets/images/logo-slogan.png',
                  width: width * 0.6,
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      hintText: 'E-mail...',
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ),
                      ),
                      hintText: 'Password...',
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    top: 10.0,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Esqueci-me da password",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
                  child: FlatButton(
                    child: Text(
                      "L O G I N",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.05,
                      ),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, 'chooseTheme'),
                  ),
                ),
                SizedBox(
                  height: width * 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Made with 💙 by:",
                      style: TextStyle(
                        fontSize: width * 0.04,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5.0,
                        left: 5.0,
                      ),
                      child: Text(
                        "Miguel Ferreira",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
