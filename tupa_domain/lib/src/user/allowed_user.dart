// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AllowedUser {
  final int? id;
  final String? name;
  final String? email;
  final String? uuid;
  final int? roleId;
  final List<int>? schoolIds;
  final bool signedUp;
  final bool active;
  final List<int> notificationsRead;
  AllowedUser({
    this.id,
    this.name,
    this.email,
    this.roleId,
    this.schoolIds,
    this.uuid,
    required this.signedUp,
    required this.active,
    required this.notificationsRead,
  });

  AllowedUser copyWith({
    int? id,
    String? name,
    String? email,
    String? studentGrade,
    String? uuid,
    int? roleId,
    int? modelId,
    List<int>? schoolIds,
    bool? signedUp,
    bool? active,
    List<int>? notificationsRead,
  }) {
    return AllowedUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      uuid: uuid ?? this.uuid,
      roleId: roleId ?? this.roleId,
      schoolIds: schoolIds ?? this.schoolIds,
      signedUp: signedUp ?? this.signedUp,
      active: active ?? this.active,
      notificationsRead: notificationsRead ?? this.notificationsRead,
    );
  }

  factory AllowedUser.empty() => AllowedUser(
      email: '', signedUp: false, active: true, notificationsRead: []);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'roleId': roleId,
      'schoolIds': schoolIds,
      'signedUp': signedUp,
      'active': active,
      'notifications_read': notificationsRead,
    };
  }

  Map<String, dynamic> toDbMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role_id': roleId,
      'school_ids': schoolIds,
      'signedUp': signedUp,
      'active': active,
      'notifications_read': notificationsRead,
    };
  }

  Map<String, dynamic> toDbMapWithoutId() {
    return {
      'name': name,
      'email': email,
      'role_id': roleId,
      'school_ids': schoolIds,
      'signedUp': signedUp,
      'active': active,
      'notifications_read': notificationsRead,
    };
  }

  factory AllowedUser.fromMap(Map<String, dynamic> map) {
    return AllowedUser(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      roleId: map['role_id']?.toInt(),
      schoolIds:
          map['school_ids'] != null ? List<int>.from(map['school_ids']) : null,
      signedUp: map['signedUp'],
      uuid: map['user_id'],
      active: map['active'],
      notificationsRead: map['notifications_read'] != null
          ? List<int>.from(map['notifications_read'])
          : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory AllowedUser.fromJson(String source) =>
      AllowedUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AllowedUser(id: $id, name: $name, email: $email, roleId: $roleId, schoolIds: $schoolIds, signedUp: $signedUp, active: $active, notificationsRead: $notificationsRead, user_id: $uuid)';
  }

  @override
  bool operator ==(covariant AllowedUser other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.uuid == uuid &&
        other.roleId == roleId &&
        listEquals(other.schoolIds, schoolIds) &&
        other.signedUp == signedUp &&
        other.active == active &&
        listEquals(other.notificationsRead, notificationsRead);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        uuid.hashCode ^
        roleId.hashCode ^
        schoolIds.hashCode ^
        signedUp.hashCode ^
        active.hashCode ^
        notificationsRead.hashCode;
  }
}
