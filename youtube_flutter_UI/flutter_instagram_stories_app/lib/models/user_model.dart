import 'package:flutter/material.dart';

class User {
  final String name, profileImageUrl;

  const User({@required this.name, @required this.profileImageUrl});

  // It create an User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json["name"],
      profileImageUrl: json["profileImageUrl"],
    );
  }

  @override
  String toString() {
    return "{name: $name, profileImageUrl: $profileImageUrl}";
  }
}
