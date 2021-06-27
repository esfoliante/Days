import 'package:days_workers/models/User.dart';
import 'package:mobx/mobx.dart';
part 'user.store.g.dart';

class UserMob = _UserMobBase with _$UserMob;

abstract class _UserMobBase with Store {
  @observable
  User user;

  @action
  void setUser(User user) => this.user = user;
}
