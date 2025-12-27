class User {
  final int id;
  final String name;
  final int age;

  const User({
    required this.id,
    required this.name,
    required this.age,
  });

  String getName(){
    return this.name;
  }

  User copyWith({
    int? id,
    String? name,
    int? age,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}