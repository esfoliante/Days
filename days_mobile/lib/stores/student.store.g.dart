// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StudentMob on _StudentMobBase, Store {
  final _$studentAtom = Atom(name: '_StudentMobBase.student');

  @override
  Student get student {
    _$studentAtom.reportRead();
    return super.student;
  }

  @override
  set student(Student value) {
    _$studentAtom.reportWrite(value, super.student, () {
      super.student = value;
    });
  }

  final _$_StudentMobBaseActionController =
      ActionController(name: '_StudentMobBase');

  @override
  void setStudent(Student student) {
    final _$actionInfo = _$_StudentMobBaseActionController.startAction(
        name: '_StudentMobBase.setStudent');
    try {
      return super.setStudent(student);
    } finally {
      _$_StudentMobBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
student: ${student}
    ''';
  }
}
