import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

part 'tower_failure.freezed.dart';

@freezed
class TowerFailure with _$TowerFailure {
  const factory TowerFailure.serverError() = TowerFailureServerError;
}
