import 'package:days_mobile/models/Course.dart';
import 'package:days_mobile/models/Tutor.dart';

class Student {
  int id;
  int internalNumber;
  String name;
  String email;
  String limitation;
  String allergies;
  String emergencyContact;
  String cc;
  String residence;
  String birthday;
  int firstLogin;
  String transactionTotal;
  Tutor tutor;
  Course course;

  Student({
    this.id,
    this.internalNumber,
    this.name,
    this.email,
    this.limitation,
    this.allergies,
    this.emergencyContact,
    this.cc,
    this.residence,
    this.birthday,
    this.firstLogin,
    this.transactionTotal,
    this.tutor,
    this.course,
  });

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    internalNumber = json['internal_number'];
    name = json['name'];
    email = json['email'];
    limitation = json['limitation'];
    allergies = json['allergies'];
    emergencyContact = json['emergency_contact'];
    cc = json['cc'];
    residence = json['residence'];
    birthday = json['birthday'];
    firstLogin = json['first_login'];
    transactionTotal = json['transaction_total'];
    tutor = Tutor.fromJson(json['tutor']);
    course = Course.fromJson(json['course']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['internal_number'] = this.internalNumber;
    data['name'] = this.name;
    data['email'] = this.email;
    data['limitation'] = this.limitation;
    data['allergies'] = this.allergies;
    data['emergency_contact'] = this.emergencyContact;
    data['cc'] = this.cc;
    data['residence'] = this.residence;
    data['birthday'] = this.birthday;
    data['first_login'] = this.firstLogin;
    data['transaction_total'] = this.transactionTotal;
    data['tutor'] = this.tutor.toJson();
    data['course'] = this.course.toJson();

    return data;
  }
}
