class User {
  int? id;
  String? name;
  int age;

  User({required this.id, required this.name, required this.age});

  User copyWith({int? age}) {
    return User(id: id, name: name, age: age ?? this.age);
  }
}
