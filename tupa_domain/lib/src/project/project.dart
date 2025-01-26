// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:tupa_domain/tupa_domain.dart';

class Project {
  final int? id;
  final String title;
  final String costumer;
  final String location;
  final List<Tower>? towers;
  final String? thumbnail;
  final DateTime? createdAt;
  Project({
    this.id,
    required this.title,
    required this.costumer,
    required this.location,
    required this.towers,
    required this.thumbnail,
    required this.createdAt,
  });

  Project copyWith({
    int? id,
    String? title,
    String? costumer,
    String? location,
    List<Tower>? towers,
    String? thumbnail,
    DateTime? createdAt,
  }) {
    return Project(
      id: id ?? this.id,
      title: title ?? this.title,
      costumer: costumer ?? this.costumer,
      location: location ?? this.location,
      towers: towers ?? this.towers,
      thumbnail: thumbnail ?? this.thumbnail,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  bool isValid() =>
      title.isNotEmpty && costumer.isNotEmpty && location.isNotEmpty;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'costumer': costumer,
      'location': location,
      'towers': towers?.map((x) => x.toMap()).toList(),
      'created_at': DateTime.now().toIso8601String(),
    };
  }

  factory Project.empty() => Project(
        id: null,
        title: '',
        costumer: '',
        location: '',
        towers: null,
        thumbnail: null,
        createdAt: null,
      );

  Map<String, dynamic> toDbMapWithoutId() {
    return <String, dynamic>{
      'title': title,
      'costumer': costumer,
      'location': location,
      // Towers é relacional
      'created_at': DateTime.now().toIso8601String(),
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      id: map['id'] as int,
      title: map['title'] as String,
      costumer: map['costumer'] as String,
      location: map['location'] as String,
      thumbnail: map['thumbnail'] as String?,
      towers: map['towers'] != null
          ? List<Tower>.from(
              (map['towers'] as List<dynamic>).map<Tower>(
                (x) => Tower.fromMap(x['tower'] as Map<String, dynamic>),
              ),
            )
          : null,
      createdAt: map['created_at'] != null
          ? DateTime.parse(map['created_at'] as String)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Project.fromJson(String source) =>
      Project.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Project(id: $id, title: $title, costumer: $costumer, location: $location, towers: $towers, thumbnail: $thumbnail, created_at: $createdAt)';
  }

  @override
  bool operator ==(covariant Project other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.costumer == costumer &&
        other.location == location &&
        listEquals(other.towers, towers) &&
        other.thumbnail == thumbnail &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        costumer.hashCode ^
        location.hashCode ^
        towers.hashCode ^
        thumbnail.hashCode ^
        createdAt.hashCode;
  }
}
