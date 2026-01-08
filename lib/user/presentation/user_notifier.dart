
import 'package:flutter_riverpod/legacy.dart';

import '../data/user_model.dart';

class UserNotifier extends StateNotifier<User>{
  UserNotifier(super.state);


  /*void increment() => state ++;
  void decrement() => state--;
  void reset() => state = 0;*/

  User getName() =>state.copyWith(name: "Mintu Mia");

  User setName(_name){
    return state.setName(_name);

  }
  User getAge(){
    return state.getAge();
  }

  User incrementAge(){
    return state.incrementAge();
  }
}