import 'package:days_mobile/models/Student.dart';
import 'package:mobx/mobx.dart';
part 'student.store.g.dart';

class StudentMob = _StudentMobBase with _$StudentMob;

abstract class _StudentMobBase with Store {
  @observable
  Student student;

  @action
  void setStudent(Student student) => this.student = student;
}
