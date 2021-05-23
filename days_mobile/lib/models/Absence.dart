class Absence {
  int id;
  int studentId;
  int classId;
  String absenceDate;

  Absence(
      {this.id,
      this.studentId,
      this.classId,
      this.absenceDate,});

  Absence.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    classId = json['class_id'];
    absenceDate = json['absence_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['class_id'] = this.classId;
    data['absence_date'] = this.absenceDate;
    
    return data;
  }
}
