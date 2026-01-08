import 'package:flutter_hooks/flutter_hooks.dart';
class User {


  String? id;
  String name;
  int age;

  User({this.id, this.name = "", this.age =0});

  User getName() {
    return copyWith();
  }

  User getAge(){
    return copyWith(age: this.age);
  }

  User setName(String _name) {
    return copyWith(name: _name);
  }

  User incrementAge(){

    return copyWith(age:this.age++);
  }

  User copyWith({String? id, String? name, int? age}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
