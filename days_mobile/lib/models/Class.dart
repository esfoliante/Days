class Class {
  int id;
  String name;
  int courseId;
  int year;
  int userId;
  int studentId;
  Null classIdentification;

  Class(
      {this.id,
      this.name,
      this.courseId,
      this.year,
      this.userId,
      this.studentId,
      this.classIdentification,});

  Class.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    courseId = json['course_id'];
    year = json['year'];
    userId = json['user_id'];
    studentId = json['student_id'];
    classIdentification = json['class_identification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['course_id'] = this.courseId;
    data['year'] = this.year;
    data['user_id'] = this.userId;
    data['student_id'] = this.studentId;
    data['class_identification'] = this.classIdentification;
    
    return data;
  }
}
