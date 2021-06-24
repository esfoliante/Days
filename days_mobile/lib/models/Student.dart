import 'package:days_mobile/models/Absence.dart';
import 'package:days_mobile/models/Assessment.dart';
import 'package:days_mobile/models/Communication.dart';
import 'package:days_mobile/models/Course.dart';
import 'package:days_mobile/models/Entrance.dart';
import 'package:days_mobile/models/Mark.dart';
import 'package:days_mobile/models/Meeting.dart';
import 'package:days_mobile/models/Notice.dart';
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
  List<Entrance> entrances = new List<Entrance>();
  List<Notice> notices = new List<Notice>();
  List<Assessment> assessments = new List<Assessment>();
  List<Communication> communications = new List<Communication>();
  List<Meeting> meetings = new List<Meeting>();

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
    this.entrances,
    this.notices,
    this.assessments,
    this.communications,
    this.meetings,
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
    List<dynamic> jsonEntrance = json['entrance'];
    List<dynamic> jsonNotice = json['notices'];
    List<dynamic> jsonAssessments = json['assessments']['data'];
    List<dynamic> jsonCommunications = json['communications'];
    List<dynamic> jsonMeetings = json['meetings'];

    for (var entrance in jsonEntrance)
      entrances.add(Entrance.fromJson(entrance));
    for (var notice in jsonNotice) notices.add(Notice.fromJson(notice));
    for (var assessment in jsonAssessments)
      assessments.add(Assessment.fromJson(assessment));
    for (var communication in jsonCommunications)
      communications.add(Communication.fromJson(communication));
    for (var meeting in jsonMeetings)
      meetings.add(Meeting.fromJson(meeting));
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
    data['entrance'] = this.entrances;
    data['notices'] = this.notices;
    data['assessments'] = this.assessments;
    data['communications'] = this.communications;
    data['meetings'] = this.meetings;

    return data;
  }
}
