import 'dart:convert';

class Tower {
  final int id; // Identificador único (ID)
  final double towerExtension; // Extensão da torre
  final double legA; // Comprimento da perna A
  final double legB; // Comprimento da perna B
  final double legC; // Comprimento da perna C
  final double legD; // Comprimento da perna D
  final String referenceLeg; // Perna de referência
  final double elevationReferenceLeg; // Elevação da perna de referência
  final double centralStakeElevation; // Cota de piquete central
  final double dh; // Diferença de altura (ou variação de altura entre pontos)
  final double towerHeightVariation; // Variação da altura da torre
  Tower({
    required this.id,
    required this.towerExtension,
    required this.legA,
    required this.legB,
    required this.legC,
    required this.legD,
    required this.referenceLeg,
    required this.elevationReferenceLeg,
    required this.centralStakeElevation,
    required this.dh,
    required this.towerHeightVariation,
  });

  Tower copyWith({
    int? id,
    double? towerExtension,
    double? legA,
    double? legB,
    double? legC,
    double? legD,
    String? referenceLeg,
    double? elevationReferenceLeg,
    double? centralStakeElevation,
    double? dh,
    double? towerHeightVariation,
  }) {
    return Tower(
      id: id ?? this.id,
      towerExtension: towerExtension ?? this.towerExtension,
      legA: legA ?? this.legA,
      legB: legB ?? this.legB,
      legC: legC ?? this.legC,
      legD: legD ?? this.legD,
      referenceLeg: referenceLeg ?? this.referenceLeg,
      elevationReferenceLeg:
          elevationReferenceLeg ?? this.elevationReferenceLeg,
      centralStakeElevation:
          centralStakeElevation ?? this.centralStakeElevation,
      dh: dh ?? this.dh,
      towerHeightVariation: towerHeightVariation ?? this.towerHeightVariation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'towerExtension': towerExtension,
      'legA': legA,
      'legB': legB,
      'legC': legC,
      'legD': legD,
      'referenceLeg': referenceLeg,
      'elevationReferenceLeg': elevationReferenceLeg,
      'centralStakeElevation': centralStakeElevation,
      'dh': dh,
      'towerHeightVariation': towerHeightVariation,
    };
  }

  factory Tower.fromMap(Map<String, dynamic> map) {
    return Tower(
      id: map['id'] as int,
      towerExtension: (map['towerExtensions'] as num).toDouble(),
      legA: (map['legA'] as num).toDouble(),
      legB: (map['legB'] as num).toDouble(),
      legC: (map['legC'] as num).toDouble(),
      legD: (map['legD'] as num).toDouble(),
      referenceLeg: map['referenceLeg'] as String,
      elevationReferenceLeg: (map['elevationReference'] as num).toDouble(),
      centralStakeElevation: (map['centralStakeElevation'] as num).toDouble(),
      dh: (map['dh'] as num).toDouble(),
      towerHeightVariation: (map['towerHeightVariation'] as num).toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Tower.fromJson(String source) =>
      Tower.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Tower(id: $id, towerExtension: $towerExtension, legA: $legA, legB: $legB, legC: $legC, legD: $legD, referenceLeg: $referenceLeg, elevationReferenceLeg: $elevationReferenceLeg, centralStakeElevation: $centralStakeElevation, dh: $dh, towerHeightVariation: $towerHeightVariation)';
  }

  @override
  bool operator ==(covariant Tower other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.towerExtension == towerExtension &&
        other.legA == legA &&
        other.legB == legB &&
        other.legC == legC &&
        other.legD == legD &&
        other.referenceLeg == referenceLeg &&
        other.elevationReferenceLeg == elevationReferenceLeg &&
        other.centralStakeElevation == centralStakeElevation &&
        other.dh == dh &&
        other.towerHeightVariation == towerHeightVariation;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        towerExtension.hashCode ^
        legA.hashCode ^
        legB.hashCode ^
        legC.hashCode ^
        legD.hashCode ^
        referenceLeg.hashCode ^
        elevationReferenceLeg.hashCode ^
        centralStakeElevation.hashCode ^
        dh.hashCode ^
        towerHeightVariation.hashCode;
  }
}
