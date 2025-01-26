// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomUser user});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as CustomUser,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(this.user);

  @override
  final CustomUser user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final CustomUser user) = _$AuthenticatedImpl;

  CustomUser get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AuthState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailedImpl implements Failed {
  const _$FailedImpl(this.failure);

  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'AuthState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements AuthState {
  const factory Failed(final AuthFailure failure) = _$FailedImpl;

  AuthFailure get failure;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedUserAccountImplCopyWith<$Res> {
  factory _$$AuthenticatedUserAccountImplCopyWith(
          _$AuthenticatedUserAccountImpl value,
          $Res Function(_$AuthenticatedUserAccountImpl) then) =
      __$$AuthenticatedUserAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAccount userAccount});
}

/// @nodoc
class __$$AuthenticatedUserAccountImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedUserAccountImpl>
    implements _$$AuthenticatedUserAccountImplCopyWith<$Res> {
  __$$AuthenticatedUserAccountImplCopyWithImpl(
      _$AuthenticatedUserAccountImpl _value,
      $Res Function(_$AuthenticatedUserAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAccount = null,
  }) {
    return _then(_$AuthenticatedUserAccountImpl(
      null == userAccount
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as UserAccount,
    ));
  }
}

/// @nodoc

class _$AuthenticatedUserAccountImpl implements AuthenticatedUserAccount {
  const _$AuthenticatedUserAccountImpl(this.userAccount);

  @override
  final UserAccount userAccount;

  @override
  String toString() {
    return 'AuthState.authenticatedUserAccount(userAccount: $userAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserAccountImpl &&
            (identical(other.userAccount, userAccount) ||
                other.userAccount == userAccount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAccount);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserAccountImplCopyWith<_$AuthenticatedUserAccountImpl>
      get copyWith => __$$AuthenticatedUserAccountImplCopyWithImpl<
          _$AuthenticatedUserAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return authenticatedUserAccount(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return authenticatedUserAccount?.call(userAccount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (authenticatedUserAccount != null) {
      return authenticatedUserAccount(userAccount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return authenticatedUserAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return authenticatedUserAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (authenticatedUserAccount != null) {
      return authenticatedUserAccount(this);
    }
    return orElse();
  }
}

abstract class AuthenticatedUserAccount implements AuthState {
  const factory AuthenticatedUserAccount(final UserAccount userAccount) =
      _$AuthenticatedUserAccountImpl;

  UserAccount get userAccount;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedUserAccountImplCopyWith<_$AuthenticatedUserAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastLoginDetailsImplCopyWith<$Res> {
  factory _$$LastLoginDetailsImplCopyWith(_$LastLoginDetailsImpl value,
          $Res Function(_$LastLoginDetailsImpl) then) =
      __$$LastLoginDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> lastLogin});
}

/// @nodoc
class __$$LastLoginDetailsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LastLoginDetailsImpl>
    implements _$$LastLoginDetailsImplCopyWith<$Res> {
  __$$LastLoginDetailsImplCopyWithImpl(_$LastLoginDetailsImpl _value,
      $Res Function(_$LastLoginDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastLogin = null,
  }) {
    return _then(_$LastLoginDetailsImpl(
      null == lastLogin
          ? _value._lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$LastLoginDetailsImpl implements LastLoginDetails {
  const _$LastLoginDetailsImpl(final Map<String, String> lastLogin)
      : _lastLogin = lastLogin;

  final Map<String, String> _lastLogin;
  @override
  Map<String, String> get lastLogin {
    if (_lastLogin is EqualUnmodifiableMapView) return _lastLogin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lastLogin);
  }

  @override
  String toString() {
    return 'AuthState.lastLoginDetails(lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastLoginDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._lastLogin, _lastLogin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lastLogin));

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastLoginDetailsImplCopyWith<_$LastLoginDetailsImpl> get copyWith =>
      __$$LastLoginDetailsImplCopyWithImpl<_$LastLoginDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CustomUser user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(AuthFailure failure) failed,
    required TResult Function(UserAccount userAccount) authenticatedUserAccount,
    required TResult Function(Map<String, String> lastLogin) lastLoginDetails,
  }) {
    return lastLoginDetails(lastLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CustomUser user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(AuthFailure failure)? failed,
    TResult? Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult? Function(Map<String, String> lastLogin)? lastLoginDetails,
  }) {
    return lastLoginDetails?.call(lastLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CustomUser user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(AuthFailure failure)? failed,
    TResult Function(UserAccount userAccount)? authenticatedUserAccount,
    TResult Function(Map<String, String> lastLogin)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (lastLoginDetails != null) {
      return lastLoginDetails(lastLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Loading value) loading,
    required TResult Function(Failed value) failed,
    required TResult Function(AuthenticatedUserAccount value)
        authenticatedUserAccount,
    required TResult Function(LastLoginDetails value) lastLoginDetails,
  }) {
    return lastLoginDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Loading value)? loading,
    TResult? Function(Failed value)? failed,
    TResult? Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult? Function(LastLoginDetails value)? lastLoginDetails,
  }) {
    return lastLoginDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Loading value)? loading,
    TResult Function(Failed value)? failed,
    TResult Function(AuthenticatedUserAccount value)? authenticatedUserAccount,
    TResult Function(LastLoginDetails value)? lastLoginDetails,
    required TResult orElse(),
  }) {
    if (lastLoginDetails != null) {
      return lastLoginDetails(this);
    }
    return orElse();
  }
}

abstract class LastLoginDetails implements AuthState {
  const factory LastLoginDetails(final Map<String, String> lastLogin) =
      _$LastLoginDetailsImpl;

  Map<String, String> get lastLogin;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastLoginDetailsImplCopyWith<_$LastLoginDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
