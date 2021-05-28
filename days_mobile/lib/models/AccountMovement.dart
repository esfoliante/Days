class AccountMovement {
  int id;
  Null userId;
  int studentId;
  int amount;
  String isDebt;
  String location;
  String createdAt;

  AccountMovement(
      {this.id,
      this.userId,
      this.studentId,
      this.amount,
      this.isDebt,
      this.location,
      this.createdAt,});

  AccountMovement.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    studentId = json['student_id'];
    amount = json['amount'];
    isDebt = json['is_debt'];
    location = json['location'];
    createdAt = json['created_at'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['student_id'] = this.studentId;
    data['amount'] = this.amount;
    data['is_debt'] = this.isDebt;
    data['location'] = this.location;
    data['created_at'] = this.createdAt;

    return data;
  }
}
