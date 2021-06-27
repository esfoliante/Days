class User {
  int id;
  int internalNumber;
  String name;
  String email;
  String profilePicture;
  int roleId;
  String cc;
  String contact;
  String birthday;
  int firstLogin;
  Null rememberToken;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.internalNumber,
      this.name,
      this.email,
      this.profilePicture,
      this.roleId,
      this.cc,
      this.contact,
      this.birthday,
      this.firstLogin,
      this.rememberToken,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    internalNumber = json['internal_number'];
    name = json['name'];
    email = json['email'];
    profilePicture = json['profile_picture'];
    roleId = json['role_id'];
    cc = json['cc'];
    contact = json['contact'];
    birthday = json['birthday'];
    firstLogin = json['first_login'];
    rememberToken = json['remember_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['internal_number'] = this.internalNumber;
    data['name'] = this.name;
    data['email'] = this.email;
    data['profile_picture'] = this.profilePicture;
    data['role_id'] = this.roleId;
    data['cc'] = this.cc;
    data['contact'] = this.contact;
    data['birthday'] = this.birthday;
    data['first_login'] = this.firstLogin;
    data['remember_token'] = this.rememberToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}