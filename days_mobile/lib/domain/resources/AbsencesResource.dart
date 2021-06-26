import 'dart:convert';

import 'package:days_mobile/models/Absence.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/utils/config.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AbsencesResource {
  static Future<List<Absence>> getAbsences(context) async {
    final StudentMob _studentMob = Provider.of<StudentMob>(context);
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('http://$base_url/students/${_studentMob.student.id}/absences'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get account movements.');
    }

    Map<String, dynamic> map = json.decode(response.body);
    List<dynamic> data = map["data"];

    print(map);

    List<Absence> absences = [];

    data.forEach((element) {
      absences.add(Absence.fromJson(element));
    });

    absences.forEach((element) {
      print(element.className);
    });

    return absences;
  }
}
