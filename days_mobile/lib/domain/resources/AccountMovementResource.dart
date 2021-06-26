import 'dart:convert';

import 'package:days_mobile/models/AccountMovement.dart';
import 'package:days_mobile/stores/student.store.dart';
import 'package:days_mobile/utils/config.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountMovementResource {
  static Future<List<AccountMovement>> getMovements(context) async {
    final StudentMob _studentMob = Provider.of<StudentMob>(context);
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    String token = sharedPreferences.getString('token');

    final response = await http.get(
      Uri.parse('http://$base_url/students/${_studentMob.student.id}/movements'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get account movements.');
    }

    List<dynamic> data = json.decode(response.body);

    List<AccountMovement> movements = [];
    /*data.forEach((key, value) {
      // ? Add our account movement to our array of movements
      
    });*/
    print(data);

    data.forEach((element) {
      movements.add(AccountMovement.fromJson(element));
    });

    return movements;
  }
}
