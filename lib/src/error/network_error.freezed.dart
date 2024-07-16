// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkErrors {
  String? get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkErrorsCopyWith<NetworkErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorsCopyWith<$Res> {
  factory $NetworkErrorsCopyWith(
          NetworkErrors value, $Res Function(NetworkErrors) then) =
      _$NetworkErrorsCopyWithImpl<$Res, NetworkErrors>;
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class _$NetworkErrorsCopyWithImpl<$Res, $Val extends NetworkErrors>
    implements $NetworkErrorsCopyWith<$Res> {
  _$NetworkErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadRequestErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$BadRequestErrorImplCopyWith(_$BadRequestErrorImpl value,
          $Res Function(_$BadRequestErrorImpl) then) =
      __$$BadRequestErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$BadRequestErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$BadRequestErrorImpl>
    implements _$$BadRequestErrorImplCopyWith<$Res> {
  __$$BadRequestErrorImplCopyWithImpl(
      _$BadRequestErrorImpl _value, $Res Function(_$BadRequestErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$BadRequestErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequestErrorImpl extends BadRequestError {
  const _$BadRequestErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.badRequest(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestErrorImplCopyWith<_$BadRequestErrorImpl> get copyWith =>
      __$$BadRequestErrorImplCopyWithImpl<_$BadRequestErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return badRequest(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return badRequest?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequestError extends NetworkErrors {
  const factory BadRequestError(final String? msg) = _$BadRequestErrorImpl;
  const BadRequestError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestErrorImplCopyWith<_$BadRequestErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$UnauthorizedErrorImplCopyWith(_$UnauthorizedErrorImpl value,
          $Res Function(_$UnauthorizedErrorImpl) then) =
      __$$UnauthorizedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$UnauthorizedErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$UnauthorizedErrorImpl>
    implements _$$UnauthorizedErrorImplCopyWith<$Res> {
  __$$UnauthorizedErrorImplCopyWithImpl(_$UnauthorizedErrorImpl _value,
      $Res Function(_$UnauthorizedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$UnauthorizedErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedErrorImpl extends UnauthorizedError {
  const _$UnauthorizedErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.unauthorized(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      __$$UnauthorizedErrorImplCopyWithImpl<_$UnauthorizedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return unauthorized(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return unauthorized?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedError extends NetworkErrors {
  const factory UnauthorizedError(final String? msg) = _$UnauthorizedErrorImpl;
  const UnauthorizedError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedErrorImplCopyWith<_$UnauthorizedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$ForbiddenErrorImplCopyWith(_$ForbiddenErrorImpl value,
          $Res Function(_$ForbiddenErrorImpl) then) =
      __$$ForbiddenErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ForbiddenErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$ForbiddenErrorImpl>
    implements _$$ForbiddenErrorImplCopyWith<$Res> {
  __$$ForbiddenErrorImplCopyWithImpl(
      _$ForbiddenErrorImpl _value, $Res Function(_$ForbiddenErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ForbiddenErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForbiddenErrorImpl extends ForbiddenError {
  const _$ForbiddenErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.forbidden(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenErrorImplCopyWith<_$ForbiddenErrorImpl> get copyWith =>
      __$$ForbiddenErrorImplCopyWithImpl<_$ForbiddenErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return forbidden(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return forbidden?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class ForbiddenError extends NetworkErrors {
  const factory ForbiddenError(final String? msg) = _$ForbiddenErrorImpl;
  const ForbiddenError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenErrorImplCopyWith<_$ForbiddenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$NotFoundErrorImplCopyWith(
          _$NotFoundErrorImpl value, $Res Function(_$NotFoundErrorImpl) then) =
      __$$NotFoundErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$NotFoundErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$NotFoundErrorImpl>
    implements _$$NotFoundErrorImplCopyWith<$Res> {
  __$$NotFoundErrorImplCopyWithImpl(
      _$NotFoundErrorImpl _value, $Res Function(_$NotFoundErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$NotFoundErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundErrorImpl extends NotFoundError {
  const _$NotFoundErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.notFound(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      __$$NotFoundErrorImplCopyWithImpl<_$NotFoundErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return notFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return notFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundError extends NetworkErrors {
  const factory NotFoundError(final String? msg) = _$NotFoundErrorImpl;
  const NotFoundError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundErrorImplCopyWith<_$NotFoundErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAlowedErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$NotAlowedErrorImplCopyWith(_$NotAlowedErrorImpl value,
          $Res Function(_$NotAlowedErrorImpl) then) =
      __$$NotAlowedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$NotAlowedErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$NotAlowedErrorImpl>
    implements _$$NotAlowedErrorImplCopyWith<$Res> {
  __$$NotAlowedErrorImplCopyWithImpl(
      _$NotAlowedErrorImpl _value, $Res Function(_$NotAlowedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$NotAlowedErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotAlowedErrorImpl extends NotAlowedError {
  const _$NotAlowedErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.notAlowed(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAlowedErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAlowedErrorImplCopyWith<_$NotAlowedErrorImpl> get copyWith =>
      __$$NotAlowedErrorImplCopyWithImpl<_$NotAlowedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return notAlowed(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return notAlowed?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (notAlowed != null) {
      return notAlowed(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return notAlowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return notAlowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (notAlowed != null) {
      return notAlowed(this);
    }
    return orElse();
  }
}

abstract class NotAlowedError extends NetworkErrors {
  const factory NotAlowedError(final String? msg) = _$NotAlowedErrorImpl;
  const NotAlowedError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$NotAlowedErrorImplCopyWith<_$NotAlowedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooLargeErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$TooLargeErrorImplCopyWith(
          _$TooLargeErrorImpl value, $Res Function(_$TooLargeErrorImpl) then) =
      __$$TooLargeErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$TooLargeErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$TooLargeErrorImpl>
    implements _$$TooLargeErrorImplCopyWith<$Res> {
  __$$TooLargeErrorImplCopyWithImpl(
      _$TooLargeErrorImpl _value, $Res Function(_$TooLargeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$TooLargeErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TooLargeErrorImpl extends TooLargeError {
  const _$TooLargeErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.tooLarge(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooLargeErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLargeErrorImplCopyWith<_$TooLargeErrorImpl> get copyWith =>
      __$$TooLargeErrorImplCopyWithImpl<_$TooLargeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return tooLarge(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return tooLarge?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (tooLarge != null) {
      return tooLarge(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return tooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return tooLarge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (tooLarge != null) {
      return tooLarge(this);
    }
    return orElse();
  }
}

abstract class TooLargeError extends NetworkErrors {
  const factory TooLargeError(final String? msg) = _$TooLargeErrorImpl;
  const TooLargeError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$TooLargeErrorImplCopyWith<_$TooLargeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ServerErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl extends ServerError {
  const _$ServerErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.serverError(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError extends NetworkErrors {
  const factory ServerError(final String? msg) = _$ServerErrorImpl;
  const ServerError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadGatewayErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$BadGatewayErrorImplCopyWith(_$BadGatewayErrorImpl value,
          $Res Function(_$BadGatewayErrorImpl) then) =
      __$$BadGatewayErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$BadGatewayErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$BadGatewayErrorImpl>
    implements _$$BadGatewayErrorImplCopyWith<$Res> {
  __$$BadGatewayErrorImplCopyWithImpl(
      _$BadGatewayErrorImpl _value, $Res Function(_$BadGatewayErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$BadGatewayErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadGatewayErrorImpl extends BadGatewayError {
  const _$BadGatewayErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.badGateway(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadGatewayErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadGatewayErrorImplCopyWith<_$BadGatewayErrorImpl> get copyWith =>
      __$$BadGatewayErrorImplCopyWithImpl<_$BadGatewayErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return badGateway(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return badGateway?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (badGateway != null) {
      return badGateway(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return badGateway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return badGateway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (badGateway != null) {
      return badGateway(this);
    }
    return orElse();
  }
}

abstract class BadGatewayError extends NetworkErrors {
  const factory BadGatewayError(final String? msg) = _$BadGatewayErrorImpl;
  const BadGatewayError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$BadGatewayErrorImplCopyWith<_$BadGatewayErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnavailableErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$ServiceUnavailableErrorImplCopyWith(
          _$ServiceUnavailableErrorImpl value,
          $Res Function(_$ServiceUnavailableErrorImpl) then) =
      __$$ServiceUnavailableErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$ServiceUnavailableErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$ServiceUnavailableErrorImpl>
    implements _$$ServiceUnavailableErrorImplCopyWith<$Res> {
  __$$ServiceUnavailableErrorImplCopyWithImpl(
      _$ServiceUnavailableErrorImpl _value,
      $Res Function(_$ServiceUnavailableErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$ServiceUnavailableErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServiceUnavailableErrorImpl extends ServiceUnavailableError {
  const _$ServiceUnavailableErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.unavailable(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnavailableErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUnavailableErrorImplCopyWith<_$ServiceUnavailableErrorImpl>
      get copyWith => __$$ServiceUnavailableErrorImplCopyWithImpl<
          _$ServiceUnavailableErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return unavailable(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return unavailable?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return unavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return unavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (unavailable != null) {
      return unavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailableError extends NetworkErrors {
  const factory ServiceUnavailableError(final String? msg) =
      _$ServiceUnavailableErrorImpl;
  const ServiceUnavailableError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$ServiceUnavailableErrorImplCopyWith<_$ServiceUnavailableErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeOutErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$TimeOutErrorImplCopyWith(
          _$TimeOutErrorImpl value, $Res Function(_$TimeOutErrorImpl) then) =
      __$$TimeOutErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$TimeOutErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$TimeOutErrorImpl>
    implements _$$TimeOutErrorImplCopyWith<$Res> {
  __$$TimeOutErrorImplCopyWithImpl(
      _$TimeOutErrorImpl _value, $Res Function(_$TimeOutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$TimeOutErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TimeOutErrorImpl extends TimeOutError {
  const _$TimeOutErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.timeOut(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeOutErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeOutErrorImplCopyWith<_$TimeOutErrorImpl> get copyWith =>
      __$$TimeOutErrorImplCopyWithImpl<_$TimeOutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return timeOut(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return timeOut?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return timeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return timeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (timeOut != null) {
      return timeOut(this);
    }
    return orElse();
  }
}

abstract class TimeOutError extends NetworkErrors {
  const factory TimeOutError(final String? msg) = _$TimeOutErrorImpl;
  const TimeOutError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$TimeOutErrorImplCopyWith<_$TimeOutErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$UnexpectedErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorImpl extends UnexpectedError {
  const _$UnexpectedErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.unExpected(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return unExpected(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return unExpected?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return unExpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return unExpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (unExpected != null) {
      return unExpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError extends NetworkErrors {
  const factory UnexpectedError(final String? msg) = _$UnexpectedErrorImpl;
  const UnexpectedError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomErrorImplCopyWith<$Res>
    implements $NetworkErrorsCopyWith<$Res> {
  factory _$$CustomErrorImplCopyWith(
          _$CustomErrorImpl value, $Res Function(_$CustomErrorImpl) then) =
      __$$CustomErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg});
}

/// @nodoc
class __$$CustomErrorImplCopyWithImpl<$Res>
    extends _$NetworkErrorsCopyWithImpl<$Res, _$CustomErrorImpl>
    implements _$$CustomErrorImplCopyWith<$Res> {
  __$$CustomErrorImplCopyWithImpl(
      _$CustomErrorImpl _value, $Res Function(_$CustomErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_$CustomErrorImpl(
      freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomErrorImpl extends CustomError {
  const _$CustomErrorImpl(this.msg) : super._();

  @override
  final String? msg;

  @override
  String toString() {
    return 'NetworkErrors.custom(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomErrorImplCopyWith<_$CustomErrorImpl> get copyWith =>
      __$$CustomErrorImplCopyWithImpl<_$CustomErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? msg) badRequest,
    required TResult Function(String? msg) unauthorized,
    required TResult Function(String? msg) forbidden,
    required TResult Function(String? msg) notFound,
    required TResult Function(String? msg) notAlowed,
    required TResult Function(String? msg) tooLarge,
    required TResult Function(String? msg) serverError,
    required TResult Function(String? msg) badGateway,
    required TResult Function(String? msg) unavailable,
    required TResult Function(String? msg) timeOut,
    required TResult Function(String? msg) unExpected,
    required TResult Function(String? msg) custom,
  }) {
    return custom(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? msg)? badRequest,
    TResult? Function(String? msg)? unauthorized,
    TResult? Function(String? msg)? forbidden,
    TResult? Function(String? msg)? notFound,
    TResult? Function(String? msg)? notAlowed,
    TResult? Function(String? msg)? tooLarge,
    TResult? Function(String? msg)? serverError,
    TResult? Function(String? msg)? badGateway,
    TResult? Function(String? msg)? unavailable,
    TResult? Function(String? msg)? timeOut,
    TResult? Function(String? msg)? unExpected,
    TResult? Function(String? msg)? custom,
  }) {
    return custom?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? msg)? badRequest,
    TResult Function(String? msg)? unauthorized,
    TResult Function(String? msg)? forbidden,
    TResult Function(String? msg)? notFound,
    TResult Function(String? msg)? notAlowed,
    TResult Function(String? msg)? tooLarge,
    TResult Function(String? msg)? serverError,
    TResult Function(String? msg)? badGateway,
    TResult Function(String? msg)? unavailable,
    TResult Function(String? msg)? timeOut,
    TResult Function(String? msg)? unExpected,
    TResult Function(String? msg)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequestError value) badRequest,
    required TResult Function(UnauthorizedError value) unauthorized,
    required TResult Function(ForbiddenError value) forbidden,
    required TResult Function(NotFoundError value) notFound,
    required TResult Function(NotAlowedError value) notAlowed,
    required TResult Function(TooLargeError value) tooLarge,
    required TResult Function(ServerError value) serverError,
    required TResult Function(BadGatewayError value) badGateway,
    required TResult Function(ServiceUnavailableError value) unavailable,
    required TResult Function(TimeOutError value) timeOut,
    required TResult Function(UnexpectedError value) unExpected,
    required TResult Function(CustomError value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequestError value)? badRequest,
    TResult? Function(UnauthorizedError value)? unauthorized,
    TResult? Function(ForbiddenError value)? forbidden,
    TResult? Function(NotFoundError value)? notFound,
    TResult? Function(NotAlowedError value)? notAlowed,
    TResult? Function(TooLargeError value)? tooLarge,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(BadGatewayError value)? badGateway,
    TResult? Function(ServiceUnavailableError value)? unavailable,
    TResult? Function(TimeOutError value)? timeOut,
    TResult? Function(UnexpectedError value)? unExpected,
    TResult? Function(CustomError value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequestError value)? badRequest,
    TResult Function(UnauthorizedError value)? unauthorized,
    TResult Function(ForbiddenError value)? forbidden,
    TResult Function(NotFoundError value)? notFound,
    TResult Function(NotAlowedError value)? notAlowed,
    TResult Function(TooLargeError value)? tooLarge,
    TResult Function(ServerError value)? serverError,
    TResult Function(BadGatewayError value)? badGateway,
    TResult Function(ServiceUnavailableError value)? unavailable,
    TResult Function(TimeOutError value)? timeOut,
    TResult Function(UnexpectedError value)? unExpected,
    TResult Function(CustomError value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomError extends NetworkErrors {
  const factory CustomError(final String? msg) = _$CustomErrorImpl;
  const CustomError._() : super._();

  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$CustomErrorImplCopyWith<_$CustomErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
