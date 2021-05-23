class AccountMovement {
  int id;
  int userId;
  Null studentId;
  int amount;
  String transactionType;
  String location;

  AccountMovement(
      {this.id,
      this.userId,
      this.studentId,
      this.amount,
      this.transactionType,
      this.location,});

  AccountMovement.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    studentId = json['student_id'];
    amount = json['amount'];
    transactionType = json['transaction_type'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['student_id'] = this.studentId;
    data['amount'] = this.amount;
    data['transaction_type'] = this.transactionType;
    data['location'] = this.location;
    
    return data;
  }
}
