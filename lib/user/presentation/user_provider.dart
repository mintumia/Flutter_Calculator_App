import 'package:calculator_app/user/data/user_service.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod/riverpod.dart';

class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(User(id: 1, name: "mintu", age: 35));

  void increaseAge() {
    state = state.copyWith(age: state.age + 1);
  }

  void changeName(String _name){
    state.name = _name;
  }
}
