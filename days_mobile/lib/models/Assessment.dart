class Assessment {
  int id;
  int classId;
  int subjectId;
  String contents;
  String assessmentDate;

  Assessment(
      {this.id,
      this.classId,
      this.subjectId,
      this.contents,
      this.assessmentDate,});

  Assessment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    classId = json['class_id'];
    subjectId = json['subject_id'];
    contents = json['contents'];
    assessmentDate = json['assessment_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['class_id'] = this.classId;
    data['subject_id'] = this.subjectId;
    data['contents'] = this.contents;
    data['assessment_date'] = this.assessmentDate;
    
    return data;
  }
}
