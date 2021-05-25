import 'package:days_mobile/domain/resources/StudentResource.dart';
import 'package:days_mobile/models/Student.dart';
import 'package:days_mobile/screens/auth/login_screen.dart';
import 'package:days_mobile/screens/home/home_screen.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    final StudentMob _studentMob = Provider.of<StudentMob>(context);

    return FutureBuilder(
      future: StudentResource().getCurrentStudent(),
      builder: (context, AsyncSnapshot<Student> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingBar();
        }
        _studentMob.setStudent(snapshot.data);

        debugPrint(snapshot.data.toString());

        return Observer(
          builder: (_) =>
              _studentMob.student == null ? LoginScreen() : HomeScreen(),
        );
      },
    );
  
  }

  Widget _buildLoadingBar() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

}
