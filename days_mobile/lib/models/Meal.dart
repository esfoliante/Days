class Meal {
  int id;
  String mainCourse;
  String dessert;
  String mealDay;

  Meal(
      {this.id,
      this.mainCourse,
      this.dessert,
      this.mealDay,});

  Meal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mainCourse = json['main_course'];
    dessert = json['dessert'];
    mealDay = json['meal_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main_course'] = this.mainCourse;
    data['dessert'] = this.dessert;
    data['meal_day'] = this.mealDay;
    
    return data;
  }
}
