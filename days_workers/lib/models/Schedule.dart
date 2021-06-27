class Schedule {
  String subject;
  String startsAt;
  String endsAt;
  String dayWeek;

  Schedule({this.subject, this.startsAt, this.endsAt, this.dayWeek});

  Schedule.fromJson(Map<String, dynamic> json) {
    subject = json['subject'];
    startsAt = json['starts_at'];
    endsAt = json['ends_at'];
    dayWeek = json['day_week'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subject'] = this.subject;
    data['starts_at'] = this.startsAt;
    data['ends_at'] = this.endsAt;
    data['day_week'] = this.dayWeek;
    return data;
  }
}