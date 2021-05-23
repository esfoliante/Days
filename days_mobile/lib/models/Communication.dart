class Communication {
  int id;
  int userId;
  String title;
  String content;

  Communication(
      {this.id,
      this.userId,
      this.title,
      this.content,});

  Communication.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    title = json['title'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['content'] = this.content;
    
    return data;
  }
}
