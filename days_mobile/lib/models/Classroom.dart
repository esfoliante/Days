class Classroom {
  int id;
  String department;
  int floor;
  int number;

  Classroom(
      {this.id,
      this.department,
      this.floor,
      this.number,});

  Classroom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    department = json['department'];
    floor = json['floor'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['department'] = this.department;
    data['floor'] = this.floor;
    data['number'] = this.number;
    
    return data;
  }
}
