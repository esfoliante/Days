class Mark {
  int id;
  int studentId;
  int subjectId;
  int year;
  int term;
  int mark;

  Mark(
      {this.id,
      this.studentId,
      this.subjectId,
      this.year,
      this.term,
      this.mark,});

  Mark.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    subjectId = json['subject_id'];
    year = json['year'];
    term = json['term'];
    mark = json['mark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['subject_id'] = this.subjectId;
    data['year'] = this.year;
    data['term'] = this.term;
    data['mark'] = this.mark;
    
    return data;
  }
}
