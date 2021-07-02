import 'dart:convert';

import 'package:days_mobile/models/Student.dart';
import 'package:days_mobile/utils/config.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class StudentResource {
  static Future<Student> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://$base_url/login/student'),
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

    return Student.fromJson(data['student']);
  }

  Future<Student> getStudent(String token) async {
    final response = await http.get(
      Uri.parse('http://$base_url/students/student'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + token
      },
    );

    print('Response ${response.statusCode}');

    Map<String, dynamic> data = json.decode(response.body);

    if (response.statusCode != 200) {
      throw Exception('Failed to login user.');
    }

    return Student.fromJson(data['data']);
  }

  Future<Student> getCurrentStudent() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String token = sharedPreferences.getString('token');

    print(token);

    Student student;

    if (token.isEmpty) {
      return null;
    }

    try {
      student = await getStudent(token);
      print("Current student check done");
    } catch (e) {
      await sharedPreferences.setString('token', '');
    }

    return student;
  }

  Future<void> logout() async {
    // Delete token from shared preferences
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setString('token', '');
  }
}
