import 'package:days_workers/main.dart';
import 'package:days_workers/models/User.dart';
import 'package:days_workers/resources/UserResource.dart';
import 'package:days_workers/stores/user.store.dart';
import 'package:days_workers/widgets/loading_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final UserMob _userMob = Provider.of<UserMob>(context);

    Widget _showDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (_) => LoadingDialog(
          message: "Estamos a preparar tudo para si!",
        ),
      );
    }

    @override
    void dispose() {
      // Clean up the controller when the widget is removed from the
      // widget tree.
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    Future<void> loginStudent(String email, String password, UserMob usermob, context) async {
      _showDialog(context);

      final user = await UserResource.login(email.trim(), password.trim());

      if (user == null) return 0;

      userMob.setUser(user);

      Navigator.popAndPushNamed(context, 'qrcodeScan');
    }

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
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
                    child: TextFormField(
                      controller: emailController,
                      validator: (String value) {
                        final bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
          
                        return !emailValid ? 'O email não é válido' : null;
                      },
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
                    child: TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      controller: passwordController,
                      validator: (String value) {
                        return value.length < 8
                            ? 'A password deve ter pelo menos 8 carateres'
                            : null;
                      },
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
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                            try {
                              print(emailController.text.trim());
                              print(passwordController.text.trim());
            
                              final user = await UserResource.login(emailController.text.trim(), passwordController.text.trim());
                              _showDialog(context);
            
                              _userMob.setUser(user);
            
                              Navigator.popAndPushNamed(context, 'qrcodeScan');
                            } catch (e) {
                              print(e.toString());
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Email ou password inválidas")
                                )
                              );
                            }
                          }
                      },
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
      ),
    );
  }
}
