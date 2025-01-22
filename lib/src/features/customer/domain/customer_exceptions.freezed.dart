// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerException {
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerExceptionCopyWith<CustomerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerExceptionCopyWith<$Res> {
  factory $CustomerExceptionCopyWith(
          CustomerException value, $Res Function(CustomerException) then) =
      _$CustomerExceptionCopyWithImpl<$Res, CustomerException>;
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class _$CustomerExceptionCopyWithImpl<$Res, $Val extends CustomerException>
    implements $CustomerExceptionCopyWith<$Res> {
  _$CustomerExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerCreateErrorImplCopyWith<$Res>
    implements $CustomerExceptionCopyWith<$Res> {
  factory _$$CustomerCreateErrorImplCopyWith(_$CustomerCreateErrorImpl value,
          $Res Function(_$CustomerCreateErrorImpl) then) =
      __$$CustomerCreateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class __$$CustomerCreateErrorImplCopyWithImpl<$Res>
    extends _$CustomerExceptionCopyWithImpl<$Res, _$CustomerCreateErrorImpl>
    implements _$$CustomerCreateErrorImplCopyWith<$Res> {
  __$$CustomerCreateErrorImplCopyWithImpl(_$CustomerCreateErrorImpl _value,
      $Res Function(_$CustomerCreateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$CustomerCreateErrorImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerCreateErrorImpl extends CustomerCreateError {
  const _$CustomerCreateErrorImpl(
      {required this.stackTrace, this.message = 'Failed to create customer'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'CustomerException.createError(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerCreateErrorImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerCreateErrorImplCopyWith<_$CustomerCreateErrorImpl> get copyWith =>
      __$$CustomerCreateErrorImplCopyWithImpl<_$CustomerCreateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) {
    return createError(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) {
    return createError?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) {
    return createError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) {
    return createError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) {
    if (createError != null) {
      return createError(this);
    }
    return orElse();
  }
}

abstract class CustomerCreateError extends CustomerException {
  const factory CustomerCreateError(
      {required final StackTrace stackTrace,
      final String? message}) = _$CustomerCreateErrorImpl;
  const CustomerCreateError._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerCreateErrorImplCopyWith<_$CustomerCreateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerUpdateErrorImplCopyWith<$Res>
    implements $CustomerExceptionCopyWith<$Res> {
  factory _$$CustomerUpdateErrorImplCopyWith(_$CustomerUpdateErrorImpl value,
          $Res Function(_$CustomerUpdateErrorImpl) then) =
      __$$CustomerUpdateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class __$$CustomerUpdateErrorImplCopyWithImpl<$Res>
    extends _$CustomerExceptionCopyWithImpl<$Res, _$CustomerUpdateErrorImpl>
    implements _$$CustomerUpdateErrorImplCopyWith<$Res> {
  __$$CustomerUpdateErrorImplCopyWithImpl(_$CustomerUpdateErrorImpl _value,
      $Res Function(_$CustomerUpdateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$CustomerUpdateErrorImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerUpdateErrorImpl extends CustomerUpdateError {
  const _$CustomerUpdateErrorImpl(
      {required this.stackTrace, this.message = 'Failed to update customer'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'CustomerException.updateError(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerUpdateErrorImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerUpdateErrorImplCopyWith<_$CustomerUpdateErrorImpl> get copyWith =>
      __$$CustomerUpdateErrorImplCopyWithImpl<_$CustomerUpdateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) {
    return updateError(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) {
    return updateError?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) {
    return updateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) {
    return updateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError(this);
    }
    return orElse();
  }
}

abstract class CustomerUpdateError extends CustomerException {
  const factory CustomerUpdateError(
      {required final StackTrace stackTrace,
      final String? message}) = _$CustomerUpdateErrorImpl;
  const CustomerUpdateError._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerUpdateErrorImplCopyWith<_$CustomerUpdateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerDeleteErrorImplCopyWith<$Res>
    implements $CustomerExceptionCopyWith<$Res> {
  factory _$$CustomerDeleteErrorImplCopyWith(_$CustomerDeleteErrorImpl value,
          $Res Function(_$CustomerDeleteErrorImpl) then) =
      __$$CustomerDeleteErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class __$$CustomerDeleteErrorImplCopyWithImpl<$Res>
    extends _$CustomerExceptionCopyWithImpl<$Res, _$CustomerDeleteErrorImpl>
    implements _$$CustomerDeleteErrorImplCopyWith<$Res> {
  __$$CustomerDeleteErrorImplCopyWithImpl(_$CustomerDeleteErrorImpl _value,
      $Res Function(_$CustomerDeleteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$CustomerDeleteErrorImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerDeleteErrorImpl extends CustomerDeleteError {
  const _$CustomerDeleteErrorImpl(
      {required this.stackTrace, this.message = 'Failed to delete customer'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'CustomerException.deleteError(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDeleteErrorImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDeleteErrorImplCopyWith<_$CustomerDeleteErrorImpl> get copyWith =>
      __$$CustomerDeleteErrorImplCopyWithImpl<_$CustomerDeleteErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) {
    return deleteError(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) {
    return deleteError?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class CustomerDeleteError extends CustomerException {
  const factory CustomerDeleteError(
      {required final StackTrace stackTrace,
      final String? message}) = _$CustomerDeleteErrorImpl;
  const CustomerDeleteError._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDeleteErrorImplCopyWith<_$CustomerDeleteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerReadErrorImplCopyWith<$Res>
    implements $CustomerExceptionCopyWith<$Res> {
  factory _$$CustomerReadErrorImplCopyWith(_$CustomerReadErrorImpl value,
          $Res Function(_$CustomerReadErrorImpl) then) =
      __$$CustomerReadErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class __$$CustomerReadErrorImplCopyWithImpl<$Res>
    extends _$CustomerExceptionCopyWithImpl<$Res, _$CustomerReadErrorImpl>
    implements _$$CustomerReadErrorImplCopyWith<$Res> {
  __$$CustomerReadErrorImplCopyWithImpl(_$CustomerReadErrorImpl _value,
      $Res Function(_$CustomerReadErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$CustomerReadErrorImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerReadErrorImpl extends CustomerReadError {
  const _$CustomerReadErrorImpl(
      {required this.stackTrace, this.message = 'Failed to read customer'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'CustomerException.readError(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerReadErrorImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerReadErrorImplCopyWith<_$CustomerReadErrorImpl> get copyWith =>
      __$$CustomerReadErrorImplCopyWithImpl<_$CustomerReadErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) {
    return readError(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) {
    return readError?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) {
    return readError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) {
    return readError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError(this);
    }
    return orElse();
  }
}

abstract class CustomerReadError extends CustomerException {
  const factory CustomerReadError(
      {required final StackTrace stackTrace,
      final String? message}) = _$CustomerReadErrorImpl;
  const CustomerReadError._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerReadErrorImplCopyWith<_$CustomerReadErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerInvalidDataImplCopyWith<$Res>
    implements $CustomerExceptionCopyWith<$Res> {
  factory _$$CustomerInvalidDataImplCopyWith(_$CustomerInvalidDataImpl value,
          $Res Function(_$CustomerInvalidDataImpl) then) =
      __$$CustomerInvalidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String? message});
}

/// @nodoc
class __$$CustomerInvalidDataImplCopyWithImpl<$Res>
    extends _$CustomerExceptionCopyWithImpl<$Res, _$CustomerInvalidDataImpl>
    implements _$$CustomerInvalidDataImplCopyWith<$Res> {
  __$$CustomerInvalidDataImplCopyWithImpl(_$CustomerInvalidDataImpl _value,
      $Res Function(_$CustomerInvalidDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = freezed,
  }) {
    return _then(_$CustomerInvalidDataImpl(
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomerInvalidDataImpl extends CustomerInvalidData {
  const _$CustomerInvalidDataImpl(
      {required this.stackTrace, this.message = 'Invalid customer data'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'CustomerException.invalidData(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerInvalidDataImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerInvalidDataImplCopyWith<_$CustomerInvalidDataImpl> get copyWith =>
      __$$CustomerInvalidDataImplCopyWithImpl<_$CustomerInvalidDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String? message)
        createError,
    required TResult Function(StackTrace stackTrace, String? message)
        updateError,
    required TResult Function(StackTrace stackTrace, String? message)
        deleteError,
    required TResult Function(StackTrace stackTrace, String? message) readError,
    required TResult Function(StackTrace stackTrace, String? message)
        invalidData,
  }) {
    return invalidData(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String? message)? createError,
    TResult? Function(StackTrace stackTrace, String? message)? updateError,
    TResult? Function(StackTrace stackTrace, String? message)? deleteError,
    TResult? Function(StackTrace stackTrace, String? message)? readError,
    TResult? Function(StackTrace stackTrace, String? message)? invalidData,
  }) {
    return invalidData?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String? message)? createError,
    TResult Function(StackTrace stackTrace, String? message)? updateError,
    TResult Function(StackTrace stackTrace, String? message)? deleteError,
    TResult Function(StackTrace stackTrace, String? message)? readError,
    TResult Function(StackTrace stackTrace, String? message)? invalidData,
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
    required TResult Function(CustomerCreateError value) createError,
    required TResult Function(CustomerUpdateError value) updateError,
    required TResult Function(CustomerDeleteError value) deleteError,
    required TResult Function(CustomerReadError value) readError,
    required TResult Function(CustomerInvalidData value) invalidData,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerCreateError value)? createError,
    TResult? Function(CustomerUpdateError value)? updateError,
    TResult? Function(CustomerDeleteError value)? deleteError,
    TResult? Function(CustomerReadError value)? readError,
    TResult? Function(CustomerInvalidData value)? invalidData,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerCreateError value)? createError,
    TResult Function(CustomerUpdateError value)? updateError,
    TResult Function(CustomerDeleteError value)? deleteError,
    TResult Function(CustomerReadError value)? readError,
    TResult Function(CustomerInvalidData value)? invalidData,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class CustomerInvalidData extends CustomerException {
  const factory CustomerInvalidData(
      {required final StackTrace stackTrace,
      final String? message}) = _$CustomerInvalidDataImpl;
  const CustomerInvalidData._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String? get message;

  /// Create a copy of CustomerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerInvalidDataImplCopyWith<_$CustomerInvalidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
