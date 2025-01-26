part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(CustomUser user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.loading() = Loading;
  const factory AuthState.failed(AuthFailure failure) = Failed;
  const factory AuthState.authenticatedUserAccount(UserAccount userAccount) =
      AuthenticatedUserAccount;
  const factory AuthState.lastLoginDetails(Map<String, String> lastLogin) =
      LastLoginDetails;
}
