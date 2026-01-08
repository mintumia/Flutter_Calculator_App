import 'package:flutter_riverpod/legacy.dart';

import '../data/user_model.dart';

class UserNotifier extends StateNotifier<List<User>> {
  UserNotifier(super.state);

  /*void increment() => state ++;
  void decrement() => state--;
  void reset() => state = 0;*/

  void add(String _name) {
    final newUser = User(
      id: state.isEmpty ? 0 : state.last.id + 1,
      name: _name,
      age: state.last.age,
    );
    state = [...state, newUser];
  }

  void updateName(int id, String _name) {
    final updateUser = User(
      id: state.isEmpty ? id : state.last.id = id,
      name: _name,
      age:state.last.age,
    );
    state = [...state, updateUser];
  }




}
