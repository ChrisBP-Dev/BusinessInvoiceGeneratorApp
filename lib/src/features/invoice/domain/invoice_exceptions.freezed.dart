// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceException {
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceExceptionCopyWith<InvoiceException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceExceptionCopyWith<$Res> {
  factory $InvoiceExceptionCopyWith(
          InvoiceException value, $Res Function(InvoiceException) then) =
      _$InvoiceExceptionCopyWithImpl<$Res, InvoiceException>;
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class _$InvoiceExceptionCopyWithImpl<$Res, $Val extends InvoiceException>
    implements $InvoiceExceptionCopyWith<$Res> {
  _$InvoiceExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceNotFoundImplCopyWith<$Res>
    implements $InvoiceExceptionCopyWith<$Res> {
  factory _$$InvoiceNotFoundImplCopyWith(_$InvoiceNotFoundImpl value,
          $Res Function(_$InvoiceNotFoundImpl) then) =
      __$$InvoiceNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$InvoiceNotFoundImplCopyWithImpl<$Res>
    extends _$InvoiceExceptionCopyWithImpl<$Res, _$InvoiceNotFoundImpl>
    implements _$$InvoiceNotFoundImplCopyWith<$Res> {
  __$$InvoiceNotFoundImplCopyWithImpl(
      _$InvoiceNotFoundImpl _value, $Res Function(_$InvoiceNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$InvoiceNotFoundImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceNotFoundImpl implements InvoiceNotFound {
  const _$InvoiceNotFoundImpl(
      {required this.stackTrace, this.message = 'Invoice not found'});

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'InvoiceException.notFound(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceNotFoundImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceNotFoundImplCopyWith<_$InvoiceNotFoundImpl> get copyWith =>
      __$$InvoiceNotFoundImplCopyWithImpl<_$InvoiceNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return notFound(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return notFound?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class InvoiceNotFound implements InvoiceException {
  const factory InvoiceNotFound(
      {required final StackTrace stackTrace,
      final String message}) = _$InvoiceNotFoundImpl;

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceNotFoundImplCopyWith<_$InvoiceNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceInvalidDataImplCopyWith<$Res>
    implements $InvoiceExceptionCopyWith<$Res> {
  factory _$$InvoiceInvalidDataImplCopyWith(_$InvoiceInvalidDataImpl value,
          $Res Function(_$InvoiceInvalidDataImpl) then) =
      __$$InvoiceInvalidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$InvoiceInvalidDataImplCopyWithImpl<$Res>
    extends _$InvoiceExceptionCopyWithImpl<$Res, _$InvoiceInvalidDataImpl>
    implements _$$InvoiceInvalidDataImplCopyWith<$Res> {
  __$$InvoiceInvalidDataImplCopyWithImpl(_$InvoiceInvalidDataImpl _value,
      $Res Function(_$InvoiceInvalidDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$InvoiceInvalidDataImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceInvalidDataImpl implements InvoiceInvalidData {
  const _$InvoiceInvalidDataImpl(
      {required this.stackTrace, this.message = 'Invalid invoice data'});

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'InvoiceException.invalidData(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceInvalidDataImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceInvalidDataImplCopyWith<_$InvoiceInvalidDataImpl> get copyWith =>
      __$$InvoiceInvalidDataImplCopyWithImpl<_$InvoiceInvalidDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return invalidData(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return invalidData?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class InvoiceInvalidData implements InvoiceException {
  const factory InvoiceInvalidData(
      {required final StackTrace stackTrace,
      final String message}) = _$InvoiceInvalidDataImpl;

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceInvalidDataImplCopyWith<_$InvoiceInvalidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceCreateFailedImplCopyWith<$Res>
    implements $InvoiceExceptionCopyWith<$Res> {
  factory _$$InvoiceCreateFailedImplCopyWith(_$InvoiceCreateFailedImpl value,
          $Res Function(_$InvoiceCreateFailedImpl) then) =
      __$$InvoiceCreateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$InvoiceCreateFailedImplCopyWithImpl<$Res>
    extends _$InvoiceExceptionCopyWithImpl<$Res, _$InvoiceCreateFailedImpl>
    implements _$$InvoiceCreateFailedImplCopyWith<$Res> {
  __$$InvoiceCreateFailedImplCopyWithImpl(_$InvoiceCreateFailedImpl _value,
      $Res Function(_$InvoiceCreateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$InvoiceCreateFailedImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceCreateFailedImpl implements InvoiceCreateFailed {
  const _$InvoiceCreateFailedImpl(
      {required this.stackTrace, this.message = 'Failed to create invoice'});

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'InvoiceException.createFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCreateFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCreateFailedImplCopyWith<_$InvoiceCreateFailedImpl> get copyWith =>
      __$$InvoiceCreateFailedImplCopyWithImpl<_$InvoiceCreateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return createFailed(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return createFailed?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) {
    return createFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) {
    return createFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(this);
    }
    return orElse();
  }
}

abstract class InvoiceCreateFailed implements InvoiceException {
  const factory InvoiceCreateFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$InvoiceCreateFailedImpl;

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceCreateFailedImplCopyWith<_$InvoiceCreateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceUpdateFailedImplCopyWith<$Res>
    implements $InvoiceExceptionCopyWith<$Res> {
  factory _$$InvoiceUpdateFailedImplCopyWith(_$InvoiceUpdateFailedImpl value,
          $Res Function(_$InvoiceUpdateFailedImpl) then) =
      __$$InvoiceUpdateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$InvoiceUpdateFailedImplCopyWithImpl<$Res>
    extends _$InvoiceExceptionCopyWithImpl<$Res, _$InvoiceUpdateFailedImpl>
    implements _$$InvoiceUpdateFailedImplCopyWith<$Res> {
  __$$InvoiceUpdateFailedImplCopyWithImpl(_$InvoiceUpdateFailedImpl _value,
      $Res Function(_$InvoiceUpdateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$InvoiceUpdateFailedImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceUpdateFailedImpl implements InvoiceUpdateFailed {
  const _$InvoiceUpdateFailedImpl(
      {required this.stackTrace, this.message = 'Failed to update invoice'});

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'InvoiceException.updateFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceUpdateFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceUpdateFailedImplCopyWith<_$InvoiceUpdateFailedImpl> get copyWith =>
      __$$InvoiceUpdateFailedImplCopyWithImpl<_$InvoiceUpdateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return updateFailed(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return updateFailed?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class InvoiceUpdateFailed implements InvoiceException {
  const factory InvoiceUpdateFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$InvoiceUpdateFailedImpl;

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceUpdateFailedImplCopyWith<_$InvoiceUpdateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceDeleteFailedImplCopyWith<$Res>
    implements $InvoiceExceptionCopyWith<$Res> {
  factory _$$InvoiceDeleteFailedImplCopyWith(_$InvoiceDeleteFailedImpl value,
          $Res Function(_$InvoiceDeleteFailedImpl) then) =
      __$$InvoiceDeleteFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$InvoiceDeleteFailedImplCopyWithImpl<$Res>
    extends _$InvoiceExceptionCopyWithImpl<$Res, _$InvoiceDeleteFailedImpl>
    implements _$$InvoiceDeleteFailedImplCopyWith<$Res> {
  __$$InvoiceDeleteFailedImplCopyWithImpl(_$InvoiceDeleteFailedImpl _value,
      $Res Function(_$InvoiceDeleteFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$InvoiceDeleteFailedImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceDeleteFailedImpl implements InvoiceDeleteFailed {
  const _$InvoiceDeleteFailedImpl(
      {required this.stackTrace, this.message = 'Failed to delete invoice'});

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'InvoiceException.deleteFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDeleteFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDeleteFailedImplCopyWith<_$InvoiceDeleteFailedImpl> get copyWith =>
      __$$InvoiceDeleteFailedImplCopyWithImpl<_$InvoiceDeleteFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return deleteFailed(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return deleteFailed?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceNotFound value) notFound,
    required TResult Function(InvoiceInvalidData value) invalidData,
    required TResult Function(InvoiceCreateFailed value) createFailed,
    required TResult Function(InvoiceUpdateFailed value) updateFailed,
    required TResult Function(InvoiceDeleteFailed value) deleteFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceNotFound value)? notFound,
    TResult? Function(InvoiceInvalidData value)? invalidData,
    TResult? Function(InvoiceCreateFailed value)? createFailed,
    TResult? Function(InvoiceUpdateFailed value)? updateFailed,
    TResult? Function(InvoiceDeleteFailed value)? deleteFailed,
  }) {
    return deleteFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceNotFound value)? notFound,
    TResult Function(InvoiceInvalidData value)? invalidData,
    TResult Function(InvoiceCreateFailed value)? createFailed,
    TResult Function(InvoiceUpdateFailed value)? updateFailed,
    TResult Function(InvoiceDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class InvoiceDeleteFailed implements InvoiceException {
  const factory InvoiceDeleteFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$InvoiceDeleteFailedImpl;

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of InvoiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceDeleteFailedImplCopyWith<_$InvoiceDeleteFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
