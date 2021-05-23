class Course {
  int id;
  String name;
  String slug;
  int userId;

  Course(
      {this.id,
      this.name,
      this.slug,
      this.userId,});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['user_id'] = this.userId;

    return data;
  }
}
