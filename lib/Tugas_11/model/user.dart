import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final int? id;
  final String name;
  final String email;
  final String password;
  User({
    required this.email,
    required this.password,
    required this.name,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'name': name,
      'id': id,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      password: map['password'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
