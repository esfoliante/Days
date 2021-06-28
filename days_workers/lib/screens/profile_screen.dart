import 'dart:convert';

import 'package:days_workers/models/Student.dart';
import 'package:days_workers/utils/config.dart';
import 'package:days_workers/widgets/profile_custom_appbar.dart';
import 'package:days_workers/widgets/profile_item_widget.dart';
import 'package:days_workers/widgets/timeline_chunck_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  final int id;

  ProfileScreen({Key key, this.id}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Future<Student> _getStudent(int id) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token');

    print(token);

    print('http://$base_url/students/${id}');

    final response = await http.get(
      Uri.parse('http://$base_url/students/${id}'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
    );

    print('Status code: ' + response.statusCode.toString());

    if (response.statusCode != 200) {
      throw Exception('Failed to login user.');
    }

    print(json.decode(response.body)['data']);

    return Student.fromJson(json.decode(response.body)['data']);
  }

   String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');
      String date = createdAt.substring(0, tIndex);
      String time =
          createdAt.substring(tIndex + 1, createdAt.lastIndexOf(':'));

      return "$date , $time";
    }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String parseDate(String createdAt) {
      int tIndex = createdAt.indexOf('T');
      String date = createdAt.substring(0, tIndex);
      String time =
          createdAt.substring(tIndex + 1, createdAt.lastIndexOf(':'));

      return "$date , $time";
    }


    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    Widget _checkLimitation(limitation) {
      if (limitation == null)
        return Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            ProfileItem(
              title: 'Limitações',
              content: 'Sem limitações registadas',
            ),
          ],
        );

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

    Widget _checkAllergies(allergies) {
      if (allergies == null) 
        return Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            ProfileItem(
              title: 'Alergias',
              content: 'Sem alergias registadas',
            ),
          ],
        );

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

    return FutureBuilder(
        future: _getStudent(widget.id),
        builder: (context, AsyncSnapshot<Student> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return _buildLoadingBar();
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
                                  content: snapshot.data.name,
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                ProfileItem(
                                  title: 'Curso',
                                  content: snapshot.data.course.name,
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                ProfileItem(
                                  title: 'Contacto de emergência',
                                  content: snapshot.data.emergencyContact,
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                ),
                                ProfileItem(
                                  title: 'Enc. de educação',
                                  content: snapshot.data.tutor.name,
                                ),
                                _checkLimitation(snapshot.data.limitation),
                                _checkAllergies(snapshot.data.allergies)
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
                                for (var entrance in snapshot.data.entrances)
                                  TimeLineChunk(
                                    title: entrance.actionType == "Entrada" ? 'Entrada' : "Saída",
                                    date: parseDate(entrance.createdAt),
                                    isSpecial: entrance.actionType == "Saída",
                                    isFirst: snapshot.data.entrances.indexOf(entrance) == 0,
                                    isLast: snapshot.data.entrances.indexOf(entrance) == snapshot.data.entrances.length - 1,
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
        });
  }
}
