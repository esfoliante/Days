class User {
  int id;
  String name;
  String email;
  int roleId;
  String cc;
  String contact;
  String birthday;

  User(
      {this.id,
      this.name,
      this.email,
      this.roleId,
      this.cc,
      this.contact,
      this.birthday,});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    roleId = json['role_id'];
    cc = json['cc'];
    contact = json['contact'];
    birthday = json['birthday'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role_id'] = this.roleId;
    data['cc'] = this.cc;
    data['contact'] = this.contact;
    data['birthday'] = this.birthday;
    return data;
  }
}
