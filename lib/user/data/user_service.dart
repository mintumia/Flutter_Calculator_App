import 'user_model.dart';

class UserService {
  User increaseAge(User user) {
    return user.copyWith(age: user.age + 1);
  }

  User changeName(User user, String name) {
    return user.copyWith(name: name);
  }

}