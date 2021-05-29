class Entrance {
  int id;
  int studentId;
  String actionType;
  String createdAt;

  Entrance({
    this.id,
    this.studentId,
    this.actionType,
    this.createdAt,
  });

  Entrance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studentId = json['student_id'];
    actionType = json['action_type'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['student_id'] = this.studentId;
    data['action_type'] = this.actionType;
    data['created_at'] = this.createdAt;

    return data;
  }
}
