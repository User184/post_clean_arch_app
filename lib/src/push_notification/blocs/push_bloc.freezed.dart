// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PushEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() receive,
    required TResult Function() changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? receive,
    TResult? Function()? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? receive,
    TResult Function()? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscription value) subscription,
    required TResult Function(Receive value) receive,
    required TResult Function(ChangeStatus value) changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscription value)? subscription,
    TResult? Function(Receive value)? receive,
    TResult? Function(ChangeStatus value)? changeStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscription value)? subscription,
    TResult Function(Receive value)? receive,
    TResult Function(ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushEventCopyWith<$Res> {
  factory $PushEventCopyWith(PushEvent value, $Res Function(PushEvent) then) =
      _$PushEventCopyWithImpl<$Res, PushEvent>;
}

/// @nodoc
class _$PushEventCopyWithImpl<$Res, $Val extends PushEvent>
    implements $PushEventCopyWith<$Res> {
  _$PushEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$PushEventCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubscriptionImpl extends Subscription {
  const _$SubscriptionImpl() : super._();

  @override
  String toString() {
    return 'PushEvent.subscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscriptionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() receive,
    required TResult Function() changeStatus,
  }) {
    return subscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? receive,
    TResult? Function()? changeStatus,
  }) {
    return subscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? receive,
    TResult Function()? changeStatus,
    required TResult orElse(),
  }) {
    if (subscription != null) {
      return subscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscription value) subscription,
    required TResult Function(Receive value) receive,
    required TResult Function(ChangeStatus value) changeStatus,
  }) {
    return subscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscription value)? subscription,
    TResult? Function(Receive value)? receive,
    TResult? Function(ChangeStatus value)? changeStatus,
  }) {
    return subscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscription value)? subscription,
    TResult Function(Receive value)? receive,
    TResult Function(ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (subscription != null) {
      return subscription(this);
    }
    return orElse();
  }
}

abstract class Subscription extends PushEvent {
  const factory Subscription() = _$SubscriptionImpl;
  const Subscription._() : super._();
}

/// @nodoc
abstract class _$$ReceiveImplCopyWith<$Res> {
  factory _$$ReceiveImplCopyWith(
          _$ReceiveImpl value, $Res Function(_$ReceiveImpl) then) =
      __$$ReceiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReceiveImplCopyWithImpl<$Res>
    extends _$PushEventCopyWithImpl<$Res, _$ReceiveImpl>
    implements _$$ReceiveImplCopyWith<$Res> {
  __$$ReceiveImplCopyWithImpl(
      _$ReceiveImpl _value, $Res Function(_$ReceiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReceiveImpl extends Receive {
  const _$ReceiveImpl() : super._();

  @override
  String toString() {
    return 'PushEvent.receive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReceiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() receive,
    required TResult Function() changeStatus,
  }) {
    return receive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? receive,
    TResult? Function()? changeStatus,
  }) {
    return receive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? receive,
    TResult Function()? changeStatus,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscription value) subscription,
    required TResult Function(Receive value) receive,
    required TResult Function(ChangeStatus value) changeStatus,
  }) {
    return receive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscription value)? subscription,
    TResult? Function(Receive value)? receive,
    TResult? Function(ChangeStatus value)? changeStatus,
  }) {
    return receive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscription value)? subscription,
    TResult Function(Receive value)? receive,
    TResult Function(ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (receive != null) {
      return receive(this);
    }
    return orElse();
  }
}

abstract class Receive extends PushEvent {
  const factory Receive() = _$ReceiveImpl;
  const Receive._() : super._();
}

/// @nodoc
abstract class _$$ChangeStatusImplCopyWith<$Res> {
  factory _$$ChangeStatusImplCopyWith(
          _$ChangeStatusImpl value, $Res Function(_$ChangeStatusImpl) then) =
      __$$ChangeStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeStatusImplCopyWithImpl<$Res>
    extends _$PushEventCopyWithImpl<$Res, _$ChangeStatusImpl>
    implements _$$ChangeStatusImplCopyWith<$Res> {
  __$$ChangeStatusImplCopyWithImpl(
      _$ChangeStatusImpl _value, $Res Function(_$ChangeStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeStatusImpl extends ChangeStatus {
  const _$ChangeStatusImpl() : super._();

  @override
  String toString() {
    return 'PushEvent.changeStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscription,
    required TResult Function() receive,
    required TResult Function() changeStatus,
  }) {
    return changeStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscription,
    TResult? Function()? receive,
    TResult? Function()? changeStatus,
  }) {
    return changeStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscription,
    TResult Function()? receive,
    TResult Function()? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Subscription value) subscription,
    required TResult Function(Receive value) receive,
    required TResult Function(ChangeStatus value) changeStatus,
  }) {
    return changeStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Subscription value)? subscription,
    TResult? Function(Receive value)? receive,
    TResult? Function(ChangeStatus value)? changeStatus,
  }) {
    return changeStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Subscription value)? subscription,
    TResult Function(Receive value)? receive,
    TResult Function(ChangeStatus value)? changeStatus,
    required TResult orElse(),
  }) {
    if (changeStatus != null) {
      return changeStatus(this);
    }
    return orElse();
  }
}

abstract class ChangeStatus extends PushEvent {
  const factory ChangeStatus() = _$ChangeStatusImpl;
  const ChangeStatus._() : super._();
}

/// @nodoc
mixin _$PushState {
  Activity get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Activity status) valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Activity status)? valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Activity status)? valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushStateCopyWith<PushState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushStateCopyWith<$Res> {
  factory $PushStateCopyWith(PushState value, $Res Function(PushState) then) =
      _$PushStateCopyWithImpl<$Res, PushState>;
  @useResult
  $Res call({Activity status});
}

/// @nodoc
class _$PushStateCopyWithImpl<$Res, $Val extends PushState>
    implements $PushStateCopyWith<$Res> {
  _$PushStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Activity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res> implements $PushStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Activity status});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$PushStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Activity,
    ));
  }
}

/// @nodoc

class _$StateImpl extends _State {
  const _$StateImpl({this.status = Activity.unknown}) : super._();

  @override
  @JsonKey()
  final Activity status;

  @override
  String toString() {
    return 'PushState.valueObject(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Activity status) valueObject,
  }) {
    return valueObject(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Activity status)? valueObject,
  }) {
    return valueObject?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Activity status)? valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) valueObject,
  }) {
    return valueObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? valueObject,
  }) {
    return valueObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? valueObject,
    required TResult orElse(),
  }) {
    if (valueObject != null) {
      return valueObject(this);
    }
    return orElse();
  }
}

abstract class _State extends PushState {
  const factory _State({final Activity status}) = _$StateImpl;
  const _State._() : super._();

  @override
  Activity get status;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
