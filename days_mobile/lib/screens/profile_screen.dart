import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/widgets/custom_appbar.dart';
import 'package:days_mobile/widgets/profile_custom_appbar.dart';
import 'package:days_mobile/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    final StudentMob studentMob = Provider.of<StudentMob>(context);

    final String tutor = studentMob.student.tutor.name;
    final String course = studentMob.student.course.name;

    final dynamic limitation = studentMob.student.limitation;
    final dynamic allergies = studentMob.student.allergies;

    Widget _checkLimitation() {
      if (limitation == null) return Container();

      return Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          ProfileItem(
            title: 'Limitações',
            content: '$limitation',
          ),
        ],
      );
    }

    Widget _checkAllergies() {
      if (allergies == null) return Container();

      return Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          ProfileItem(
            title: 'Alergias',
            content: '$allergies',
          ),
        ],
      );
    }
    
    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf(' ');

      return createdAt.substring(0, tIndex - 1);
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: ProfileCustomAppbar(
            title: "Perfil",
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          width: width * 0.45,
                        ),
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
                      child: Column(
                        children: [
                          ProfileItem(
                            title: 'Nome',
                            content: '${studentMob.student.name}',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Curso',
                            content: '$course',
                          ),
                          _checkLimitation(),
                          _checkAllergies(),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Contacto de emergência',
                            content: '${studentMob.student.emergencyContact}',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
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
                          width: width * 0.45,
                        ),
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
                      child: Column(
                        children: [
                          ProfileItem(
                            title: 'Email',
                            content: '${studentMob.student.email}',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Enc. de educação',
                            content: '$tutor',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Cartão de cidadão',
                            content: '${studentMob.student.cc}',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Morada',
                            content: '${studentMob.student.residence}',
                          ),
                          SizedBox(
                            height: height * 0.04,
                          ),
                          ProfileItem(
                            title: 'Data de nascimento',
                            content: parseDate(studentMob.student.birthday),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
