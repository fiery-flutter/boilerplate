import 'dart:convert';

class User {
  User({
    this.id,
    this.name,
    this.email,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      id: map['id'],
      name: map['name'],
      email: map['email'],
    );
  }

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  final int id;
  final String name;
  final String email;

  User copyWith({
    int id,
    String name,
    String email,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'User(id: $id, name: $name, email: $email)';
}
