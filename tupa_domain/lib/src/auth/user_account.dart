// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserAccount {
  final int id;
  final DateTime? createdAt;
  final String email;
  final String username;
  final String? password;
  final String? googleId;
  final List<int>? notificationsRead;
  const UserAccount({
    required this.id,
    this.createdAt,
    required this.email,
    required this.username,
    this.password,
    this.googleId,
    this.notificationsRead,
  });

  UserAccount copyWith({
    int? id,
    DateTime? createdAt,
    String? email,
    String? username,
    String? password,
    String? googleId,
    String? cpf,
    List<int>? notificationsRead,
    int? schoolId,
    List<int>? classesId,
    List<int>? studentsId,
  }) {
    return UserAccount(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      googleId: googleId ?? this.googleId,
      notificationsRead: notificationsRead ?? this.notificationsRead,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'email': email,
      'username': username,
      'password': password,
      'google_id': googleId,
      'notifications_read': notificationsRead,
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'] as int,
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : null,
      email: map['email'] as String,
      username: map['username'] as String,
      password: map['password'] as String,
      googleId: map['google_id'] as String,
      notificationsRead: map['notifications_read'] != null
          ? List<int>.from(map['notifications_read'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) =>
      UserAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserAccount(id: $id, createdAt: $createdAt, email: $email, username: $username, password: $password, google_id: $googleId, notifications_read: $notificationsRead, )';
  }

  @override
  bool operator ==(covariant UserAccount other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.createdAt == createdAt &&
        other.email == email &&
        other.username == username &&
        other.password == password &&
        other.googleId == googleId &&
        listEquals(other.notificationsRead, notificationsRead);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        createdAt.hashCode ^
        email.hashCode ^
        username.hashCode ^
        password.hashCode ^
        googleId.hashCode ^
        notificationsRead.hashCode;
  }
}
