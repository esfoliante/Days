// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserMob on _UserMobBase, Store {
  final _$userAtom = Atom(name: '_UserMobBase.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_UserMobBaseActionController = ActionController(name: '_UserMobBase');

  @override
  void setUser(User user) {
    final _$actionInfo = _$_UserMobBaseActionController.startAction(
        name: '_UserMobBase.setUser');
    try {
      return super.setUser(user);
    } finally {
      _$_UserMobBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
