import 'package:tupa_dependencies_core/tupa_dependencies_core.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure {
  const factory UserFailure.serverError() = UserServerError;
}
