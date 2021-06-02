class Absence {
  String className;
  String absenceDate;

  Absence({this.className, this.absenceDate});

  Absence.fromJson(Map<String, dynamic> json) {
    className = json['class_name'];
    absenceDate = json['absence_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['class_name'] = this.className;
    data['absence_date'] = this.absenceDate;
    return data;
  }
}
