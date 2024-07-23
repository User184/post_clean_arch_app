// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ErrorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkErrors error) error,
    required TResult Function() closeModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkErrors error)? error,
    TResult? Function()? closeModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkErrors error)? error,
    TResult Function()? closeModal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_CloseModal value) closeModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_CloseModal value)? closeModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_CloseModal value)? closeModal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsEventCopyWith<$Res> {
  factory $ErrorsEventCopyWith(
          ErrorsEvent value, $Res Function(ErrorsEvent) then) =
      _$ErrorsEventCopyWithImpl<$Res, ErrorsEvent>;
}

/// @nodoc
class _$ErrorsEventCopyWithImpl<$Res, $Val extends ErrorsEvent>
    implements $ErrorsEventCopyWith<$Res> {
  _$ErrorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkErrors error});

  $NetworkErrorsCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ErrorsEventCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkErrors,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkErrorsCopyWith<$Res> get error {
    return $NetworkErrorsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.error}) : super._();

  @override
  final NetworkErrors error;

  @override
  String toString() {
    return 'ErrorsEvent.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkErrors error) error,
    required TResult Function() closeModal,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkErrors error)? error,
    TResult? Function()? closeModal,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkErrors error)? error,
    TResult Function()? closeModal,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_CloseModal value) closeModal,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_CloseModal value)? closeModal,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_CloseModal value)? closeModal,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends ErrorsEvent {
  const factory _Error({required final NetworkErrors error}) = _$ErrorImpl;
  const _Error._() : super._();

  NetworkErrors get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseModalImplCopyWith<$Res> {
  factory _$$CloseModalImplCopyWith(
          _$CloseModalImpl value, $Res Function(_$CloseModalImpl) then) =
      __$$CloseModalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseModalImplCopyWithImpl<$Res>
    extends _$ErrorsEventCopyWithImpl<$Res, _$CloseModalImpl>
    implements _$$CloseModalImplCopyWith<$Res> {
  __$$CloseModalImplCopyWithImpl(
      _$CloseModalImpl _value, $Res Function(_$CloseModalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CloseModalImpl extends _CloseModal {
  const _$CloseModalImpl() : super._();

  @override
  String toString() {
    return 'ErrorsEvent.closeModal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseModalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkErrors error) error,
    required TResult Function() closeModal,
  }) {
    return closeModal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkErrors error)? error,
    TResult? Function()? closeModal,
  }) {
    return closeModal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkErrors error)? error,
    TResult Function()? closeModal,
    required TResult orElse(),
  }) {
    if (closeModal != null) {
      return closeModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_CloseModal value) closeModal,
  }) {
    return closeModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_CloseModal value)? closeModal,
  }) {
    return closeModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_CloseModal value)? closeModal,
    required TResult orElse(),
  }) {
    if (closeModal != null) {
      return closeModal(this);
    }
    return orElse();
  }
}

abstract class _CloseModal extends ErrorsEvent {
  const factory _CloseModal() = _$CloseModalImpl;
  const _CloseModal._() : super._();
}

/// @nodoc
mixin _$ErrorsState {
  PersistType get persist => throw _privateConstructorUsedError;
  String? get modal => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersistType persist, String? modal) objectValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersistType persist, String? modal)? objectValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersistType persist, String? modal)? objectValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) objectValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? objectValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? objectValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorsStateCopyWith<ErrorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsStateCopyWith<$Res> {
  factory $ErrorsStateCopyWith(
          ErrorsState value, $Res Function(ErrorsState) then) =
      _$ErrorsStateCopyWithImpl<$Res, ErrorsState>;
  @useResult
  $Res call({PersistType persist, String? modal});
}

/// @nodoc
class _$ErrorsStateCopyWithImpl<$Res, $Val extends ErrorsState>
    implements $ErrorsStateCopyWith<$Res> {
  _$ErrorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persist = null,
    Object? modal = freezed,
  }) {
    return _then(_value.copyWith(
      persist: null == persist
          ? _value.persist
          : persist // ignore: cast_nullable_to_non_nullable
              as PersistType,
      modal: freezed == modal
          ? _value.modal
          : modal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StateImplCopyWith<$Res>
    implements $ErrorsStateCopyWith<$Res> {
  factory _$$StateImplCopyWith(
          _$StateImpl value, $Res Function(_$StateImpl) then) =
      __$$StateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersistType persist, String? modal});
}

/// @nodoc
class __$$StateImplCopyWithImpl<$Res>
    extends _$ErrorsStateCopyWithImpl<$Res, _$StateImpl>
    implements _$$StateImplCopyWith<$Res> {
  __$$StateImplCopyWithImpl(
      _$StateImpl _value, $Res Function(_$StateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persist = null,
    Object? modal = freezed,
  }) {
    return _then(_$StateImpl(
      persist: null == persist
          ? _value.persist
          : persist // ignore: cast_nullable_to_non_nullable
              as PersistType,
      modal: freezed == modal
          ? _value.modal
          : modal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StateImpl extends _State {
  const _$StateImpl({this.persist = PersistType.connected, this.modal})
      : super._();

  @override
  @JsonKey()
  final PersistType persist;
  @override
  final String? modal;

  @override
  String toString() {
    return 'ErrorsState.objectValue(persist: $persist, modal: $modal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateImpl &&
            (identical(other.persist, persist) || other.persist == persist) &&
            (identical(other.modal, modal) || other.modal == modal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, persist, modal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      __$$StateImplCopyWithImpl<_$StateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PersistType persist, String? modal) objectValue,
  }) {
    return objectValue(persist, modal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PersistType persist, String? modal)? objectValue,
  }) {
    return objectValue?.call(persist, modal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PersistType persist, String? modal)? objectValue,
    required TResult orElse(),
  }) {
    if (objectValue != null) {
      return objectValue(persist, modal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) objectValue,
  }) {
    return objectValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? objectValue,
  }) {
    return objectValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? objectValue,
    required TResult orElse(),
  }) {
    if (objectValue != null) {
      return objectValue(this);
    }
    return orElse();
  }
}

abstract class _State extends ErrorsState {
  const factory _State({final PersistType persist, final String? modal}) =
      _$StateImpl;
  const _State._() : super._();

  @override
  PersistType get persist;
  @override
  String? get modal;
  @override
  @JsonKey(ignore: true)
  _$$StateImplCopyWith<_$StateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
