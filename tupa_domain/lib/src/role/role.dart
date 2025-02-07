import 'dart:convert';

class Role {
  final int id;
  final String name;
  Role({
    required this.id,
    required this.name,
  });

  Role copyWith({
    int? id,
    String? name,
  }) {
    return Role(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Role.fromJson(String source) => Role.fromMap(json.decode(source));

  String getRoleName() {
    switch (name) {
      case 'admin':
        return 'Administrador';
      case 'teacher':
        return 'Professor';
      case 'userCreator':
        return 'Criador de usuários';
      case 'contentManager':
        return 'Criador de conteúdo';
      case 'schoolCoordinator':
        return 'Coordenador';
      case 'student':
        return 'Aluno';
    }
    return '';
  }

  @override
  String toString() => 'Role(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Role && other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
