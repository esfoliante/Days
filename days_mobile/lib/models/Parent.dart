class Parent {
  int id;
  String name;
  String email;
  String contact;
  String studentRelationship;
  String profession;
  String cc;
  String nIF;
  String residence;

  Parent(
      {this.id,
      this.name,
      this.email,
      this.contact,
      this.studentRelationship,
      this.profession,
      this.cc,
      this.nIF,
      this.residence,});

  Parent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    studentRelationship = json['student_relationship'];
    profession = json['profession'];
    cc = json['cc'];
    nIF = json['NIF'];
    residence = json['residence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['student_relationship'] = this.studentRelationship;
    data['profession'] = this.profession;
    data['cc'] = this.cc;
    data['NIF'] = this.nIF;
    data['residence'] = this.residence;
    
    return data;
  }
}
