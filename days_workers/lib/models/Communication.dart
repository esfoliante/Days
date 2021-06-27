class Communication {
  int id;
  int userId;
  String title;
  String content;
  String createdAt;
  String updatedAt;

  Communication({
    this.id,
    this.userId,
    this.title,
    this.content,
    this.createdAt,
    this.updatedAt,
  });

  Communication.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    content = json['content'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['content'] = this.content;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }
}

