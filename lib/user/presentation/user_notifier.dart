import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../data/user_model.dart';
import '../data/user_service.dart';

class UserNotifier extends StateNotifier<User> {
  final UserService _service;

  UserNotifier(this._service) : super(const User(id: 1, name: 'John', age: 20));

  void increaseAge() {
    state = _service.increaseAge(state);
  }

  void changeName(String name) {
    state = _service.changeName(state, name);
  }
}
