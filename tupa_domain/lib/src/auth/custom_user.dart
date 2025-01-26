// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:tupa_domain/src/role/domain_role.dart';

class CustomUser {
  String uuid;
  String name;
  String? email;
  List<Role>? userRoles;
  List<int>? notificationsRead;
  CustomUser({
    required this.uuid,
    required this.name,
    this.email,
    this.userRoles,
    this.notificationsRead,
  });

  CustomUser copyWith({
    String? uuid,
    String? name,
    String? email,
    List<Role>? userRoles,
    List<int>? notificationsRead,
  }) {
    return CustomUser(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      email: email ?? this.email,
      userRoles: userRoles ?? this.userRoles,
      notificationsRead: notificationsRead ?? this.notificationsRead,
    );
  }

  Map<String, dynamic> toDbMap() {
    return {
      'user_id': uuid,
      'name': name,
      'email': email,
    };
  }

  factory CustomUser.fromMap(Map<String, dynamic> map) {
    final roles = <Role>[];

    if (map['roles'] != null) {
      for (final role in (map['roles'] as List<dynamic>)) {
        final roleObj = Role.fromMap(role);
        roles.add(roleObj);
      }
    }

    return CustomUser(
      uuid: map['user_id'] ?? map['id'].toString(),
      name: map['name'],
      email: map['email'],
      userRoles: map['roles'] != null ? roles : null,
      notificationsRead: [],
    );
  }

  factory CustomUser.fromRoleMap(Map<String, dynamic> map) {
    final roles = <Role>[];

    if (map['role'] != null) {
      final roleObj = Role.fromMap(map['role']);
      roles.add(roleObj);
    }

    final user = map['user'];

    return CustomUser(
      uuid: user['id'].toString(),
      name: user['name'],
      email: user['email'],
      userRoles: map['role'] != null ? roles : null,
      notificationsRead: [],
    );
  }

  String toJson() => json.encode(toDbMap());

  factory CustomUser.fromJson(String source) =>
      CustomUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CustomUser(user_id: $uuid, name: $name, email: $email, userRole: $userRoles, notifications_read: $notificationsRead)';
  }

  @override
  bool operator ==(covariant CustomUser other) {
    if (identical(this, other)) return true;

    return other.uuid == uuid &&
        other.name == name &&
        other.email == email &&
        listEquals(other.userRoles, userRoles) &&
        listEquals(other.notificationsRead, notificationsRead);
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        userRoles.hashCode ^
        notificationsRead.hashCode;
  }
}
