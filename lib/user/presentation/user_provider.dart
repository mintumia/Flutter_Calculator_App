import 'package:calculator_app/user/data/user_model.dart';
import 'package:calculator_app/user/presentation/user_notifier.dart';
import 'package:flutter_riverpod/legacy.dart';


final userProvider = StateNotifierProvider <UserNotifier, List<User>>((_){

  return UserNotifier([User(id: 1, name: "mintu",age: 35)]);

});
