// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthCancelledByUserImplCopyWith<$Res> {
  factory _$$AuthCancelledByUserImplCopyWith(_$AuthCancelledByUserImpl value,
          $Res Function(_$AuthCancelledByUserImpl) then) =
      __$$AuthCancelledByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCancelledByUserImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$AuthCancelledByUserImpl>
    implements _$$AuthCancelledByUserImplCopyWith<$Res> {
  __$$AuthCancelledByUserImplCopyWithImpl(_$AuthCancelledByUserImpl _value,
      $Res Function(_$AuthCancelledByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCancelledByUserImpl implements AuthCancelledByUser {
  const _$AuthCancelledByUserImpl();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCancelledByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class AuthCancelledByUser implements AuthFailure {
  const factory AuthCancelledByUser() = _$AuthCancelledByUserImpl;
}

/// @nodoc
abstract class _$$AuthServerErrorImplCopyWith<$Res> {
  factory _$$AuthServerErrorImplCopyWith(_$AuthServerErrorImpl value,
          $Res Function(_$AuthServerErrorImpl) then) =
      __$$AuthServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$AuthServerErrorImpl>
    implements _$$AuthServerErrorImplCopyWith<$Res> {
  __$$AuthServerErrorImplCopyWithImpl(
      _$AuthServerErrorImpl _value, $Res Function(_$AuthServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthServerErrorImpl implements AuthServerError {
  const _$AuthServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class AuthServerError implements AuthFailure {
  const factory AuthServerError() = _$AuthServerErrorImpl;
}

/// @nodoc
abstract class _$$AuthEmailNotAllowedImplCopyWith<$Res> {
  factory _$$AuthEmailNotAllowedImplCopyWith(_$AuthEmailNotAllowedImpl value,
          $Res Function(_$AuthEmailNotAllowedImpl) then) =
      __$$AuthEmailNotAllowedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEmailNotAllowedImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$AuthEmailNotAllowedImpl>
    implements _$$AuthEmailNotAllowedImplCopyWith<$Res> {
  __$$AuthEmailNotAllowedImplCopyWithImpl(_$AuthEmailNotAllowedImpl _value,
      $Res Function(_$AuthEmailNotAllowedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEmailNotAllowedImpl implements AuthEmailNotAllowed {
  const _$AuthEmailNotAllowedImpl();

  @override
  String toString() {
    return 'AuthFailure.emailNotAllowed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEmailNotAllowedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return emailNotAllowed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return emailNotAllowed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emailNotAllowed != null) {
      return emailNotAllowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return emailNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return emailNotAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emailNotAllowed != null) {
      return emailNotAllowed(this);
    }
    return orElse();
  }
}

abstract class AuthEmailNotAllowed implements AuthFailure {
  const factory AuthEmailNotAllowed() = _$AuthEmailNotAllowedImpl;
}

/// @nodoc
abstract class _$$AuthEmailOrPasswordInvalidImplCopyWith<$Res> {
  factory _$$AuthEmailOrPasswordInvalidImplCopyWith(
          _$AuthEmailOrPasswordInvalidImpl value,
          $Res Function(_$AuthEmailOrPasswordInvalidImpl) then) =
      __$$AuthEmailOrPasswordInvalidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEmailOrPasswordInvalidImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$AuthEmailOrPasswordInvalidImpl>
    implements _$$AuthEmailOrPasswordInvalidImplCopyWith<$Res> {
  __$$AuthEmailOrPasswordInvalidImplCopyWithImpl(
      _$AuthEmailOrPasswordInvalidImpl _value,
      $Res Function(_$AuthEmailOrPasswordInvalidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEmailOrPasswordInvalidImpl implements AuthEmailOrPasswordInvalid {
  const _$AuthEmailOrPasswordInvalidImpl();

  @override
  String toString() {
    return 'AuthFailure.emailOrPasswordInvalid()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEmailOrPasswordInvalidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return emailOrPasswordInvalid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return emailOrPasswordInvalid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emailOrPasswordInvalid != null) {
      return emailOrPasswordInvalid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return emailOrPasswordInvalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return emailOrPasswordInvalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (emailOrPasswordInvalid != null) {
      return emailOrPasswordInvalid(this);
    }
    return orElse();
  }
}

abstract class AuthEmailOrPasswordInvalid implements AuthFailure {
  const factory AuthEmailOrPasswordInvalid() = _$AuthEmailOrPasswordInvalidImpl;
}

/// @nodoc
abstract class _$$UserAlreadyExistsImplCopyWith<$Res> {
  factory _$$UserAlreadyExistsImplCopyWith(_$UserAlreadyExistsImpl value,
          $Res Function(_$UserAlreadyExistsImpl) then) =
      __$$UserAlreadyExistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAlreadyExistsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserAlreadyExistsImpl>
    implements _$$UserAlreadyExistsImplCopyWith<$Res> {
  __$$UserAlreadyExistsImplCopyWithImpl(_$UserAlreadyExistsImpl _value,
      $Res Function(_$UserAlreadyExistsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAlreadyExistsImpl implements UserAlreadyExists {
  const _$UserAlreadyExistsImpl();

  @override
  String toString() {
    return 'AuthFailure.userAlreadyExists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAlreadyExistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return userAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return userAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return userAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return userAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (userAlreadyExists != null) {
      return userAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class UserAlreadyExists implements AuthFailure {
  const factory UserAlreadyExists() = _$UserAlreadyExistsImpl;
}

/// @nodoc
abstract class _$$InvalidCredentialsImplCopyWith<$Res> {
  factory _$$InvalidCredentialsImplCopyWith(_$InvalidCredentialsImpl value,
          $Res Function(_$InvalidCredentialsImpl) then) =
      __$$InvalidCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCredentialsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidCredentialsImpl>
    implements _$$InvalidCredentialsImplCopyWith<$Res> {
  __$$InvalidCredentialsImplCopyWithImpl(_$InvalidCredentialsImpl _value,
      $Res Function(_$InvalidCredentialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCredentialsImpl implements InvalidCredentials {
  const _$InvalidCredentialsImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailNotAllowed,
    required TResult Function() emailOrPasswordInvalid,
    required TResult Function() userAlreadyExists,
    required TResult Function() invalidCredentials,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelledByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailNotAllowed,
    TResult? Function()? emailOrPasswordInvalid,
    TResult? Function()? userAlreadyExists,
    TResult? Function()? invalidCredentials,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailNotAllowed,
    TResult Function()? emailOrPasswordInvalid,
    TResult Function()? userAlreadyExists,
    TResult Function()? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthCancelledByUser value) cancelledByUser,
    required TResult Function(AuthServerError value) serverError,
    required TResult Function(AuthEmailNotAllowed value) emailNotAllowed,
    required TResult Function(AuthEmailOrPasswordInvalid value)
        emailOrPasswordInvalid,
    required TResult Function(UserAlreadyExists value) userAlreadyExists,
    required TResult Function(InvalidCredentials value) invalidCredentials,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthCancelledByUser value)? cancelledByUser,
    TResult? Function(AuthServerError value)? serverError,
    TResult? Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult? Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult? Function(UserAlreadyExists value)? userAlreadyExists,
    TResult? Function(InvalidCredentials value)? invalidCredentials,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthCancelledByUser value)? cancelledByUser,
    TResult Function(AuthServerError value)? serverError,
    TResult Function(AuthEmailNotAllowed value)? emailNotAllowed,
    TResult Function(AuthEmailOrPasswordInvalid value)? emailOrPasswordInvalid,
    TResult Function(UserAlreadyExists value)? userAlreadyExists,
    TResult Function(InvalidCredentials value)? invalidCredentials,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthFailure {
  const factory InvalidCredentials() = _$InvalidCredentialsImpl;
}
