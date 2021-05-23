class Schedule {
  int id;
  int classId;
  int classroomId;
  int subjectId;
  int userId;
  String startsAt;
  String endsAt;
  String dayWeek;

  Schedule(
      {this.id,
      this.classId,
      this.classroomId,
      this.subjectId,
      this.userId,
      this.startsAt,
      this.endsAt,
      this.dayWeek,});

  Schedule.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    classId = json['class_id'];
    classroomId = json['classroom_id'];
    subjectId = json['subject_id'];
    userId = json['user_id'];
    startsAt = json['starts_at'];
    endsAt = json['ends_at'];
    dayWeek = json['day_week'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['class_id'] = this.classId;
    data['classroom_id'] = this.classroomId;
    data['subject_id'] = this.subjectId;
    data['user_id'] = this.userId;
    data['starts_at'] = this.startsAt;
    data['ends_at'] = this.endsAt;
    data['day_week'] = this.dayWeek;
    
    return data;
  }
}
