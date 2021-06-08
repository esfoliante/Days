class Assessment {
  int id;
  String subject;
  String contents;
  String assessmentDate;

  Assessment({this.id, this.subject, this.contents, this.assessmentDate});

  Assessment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    contents = json['contents'];
    assessmentDate = json['assessment_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject'] = this.subject;
    data['contents'] = this.contents;
    data['assessment_date'] = this.assessmentDate;
    return data;
  }
}
