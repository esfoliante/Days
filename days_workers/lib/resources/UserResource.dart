import 'dart:convert';

import 'package:days_workers/models/User.dart';
import 'package:days_workers/utils/config.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserResource {
  static Future<User> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://$base_url/login/user'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to login user.');
    }

    Map<String, dynamic> data = json.decode(response.body);

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString('token', data['token']);

    print(sharedPreferences.getString('token'));

    return User.fromJson(data['user']);
  }
  
  Future<void> logout() async {
    // Delete token from shared preferences
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', '');
  }
}
