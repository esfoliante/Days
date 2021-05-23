class Student {
  int id;
  int internalNumber;
  String name;
  String email;
  int tutorId;
  int courseId;
  String limitation;
  String allergies;
  String emergencyContact;
  String cc;
  String residence;
  String birthday;
  int firstLogin;

  Student(
      {this.id,
      this.internalNumber,
      this.name,
      this.email,
      this.tutorId,
      this.courseId,
      this.limitation,
      this.allergies,
      this.emergencyContact,
      this.cc,
      this.residence,
      this.birthday,
      this.firstLogin,});

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    internalNumber = json['internal_number'];
    name = json['name'];
    email = json['email'];
    tutorId = json['tutor_id'];
    courseId = json['course_id'];
    limitation = json['limitation'];
    allergies = json['allergies'];
    emergencyContact = json['emergency_contact'];
    cc = json['cc'];
    residence = json['residence'];
    birthday = json['birthday'];
    firstLogin = json['first_login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['internal_number'] = this.internalNumber;
    data['name'] = this.name;
    data['email'] = this.email;
    data['tutor_id'] = this.tutorId;
    data['course_id'] = this.courseId;
    data['limitation'] = this.limitation;
    data['allergies'] = this.allergies;
    data['emergency_contact'] = this.emergencyContact;
    data['cc'] = this.cc;
    data['residence'] = this.residence;
    data['birthday'] = this.birthday;
    data['first_login'] = this.firstLogin;
    return data;
  }
}
