import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          title: "Perfil",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    200.0,
                  ),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
