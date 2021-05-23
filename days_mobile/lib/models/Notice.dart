class Notice {
  int id;
  String reason;
  String description;
  int userId;
  int studentId;
  String occurrenceDate;

  Notice(
      {this.id,
      this.reason,
      this.description,
      this.userId,
      this.studentId,
      this.occurrenceDate,});

  Notice.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    reason = json['reason'];
    description = json['description'];
    userId = json['user_id'];
    studentId = json['student_id'];
    occurrenceDate = json['occurrence_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['reason'] = this.reason;
    data['description'] = this.description;
    data['user_id'] = this.userId;
    data['student_id'] = this.studentId;
    data['occurrence_date'] = this.occurrenceDate;
    
    return data;
  }
}
