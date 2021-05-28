import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key key}) : super(key: key);

  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    TextEditingController passwordController = new TextEditingController();

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
                  "Primeiro...",
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
                  "Gostaríamos, por motivos de segurança, que mudasses a tua password.\nEmbora as passwords sejam geradas aleatóriamente pelo sistema, privadas, e encriptadas, é sempre uma boa ideia mudar para algo nosso e fácil de decorar!",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: height * 0.018,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                    controller: passwordController,
                    obscureText: true,
                    autocorrect: false,
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
                        Icons.lock_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                SizedBox(height: 30.0,),
                Center(
                  child: Container(
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
                        "M U D A R",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.05,
                        ),
                      ),
                      onPressed: () => print("Hello world")
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    child: Text(
                      "Avançar passo...",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onPressed: () => Navigator.popAndPushNamed(context, 'chooseTheme')
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
