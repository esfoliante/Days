class Mark {
  int id;
  String subject;
  int year;
  int term;
  int mark;

  Mark({
    this.id,
    this.subject,
    this.year,
    this.term,
    this.mark,
  });

  Mark.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subject = json['subject'];
    year = json['year'];
    term = json['term'];
    mark = json['mark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject'] = this.subject;
    data['year'] = this.year;
    data['term'] = this.term;
    data['mark'] = this.mark;

    return data;
  }
}
