class Meeting {
  int id;
  int studentId;
  int userId;
  String title;
  String content;
  String meetingDate;

  Meeting(
      {this.id,
      this.studentId,
      this.userId,
      this.title,
      this.content,
      this.meetingDate,});

  Meeting.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    userId = json['user_id'];
    title = json['title'];
    content = json['content'];
    meetingDate = json['meeting_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['content'] = this.content;
    data['meeting_date'] = this.meetingDate;
    
    return data;
  }
}
