// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BusinessException {
  StackTrace get stackTrace => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessExceptionCopyWith<BusinessException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessExceptionCopyWith<$Res> {
  factory $BusinessExceptionCopyWith(
          BusinessException value, $Res Function(BusinessException) then) =
      _$BusinessExceptionCopyWithImpl<$Res, BusinessException>;
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class _$BusinessExceptionCopyWithImpl<$Res, $Val extends BusinessException>
    implements $BusinessExceptionCopyWith<$Res> {
  _$BusinessExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessException
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
abstract class _$$BusinessNotFoundImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessNotFoundImplCopyWith(_$BusinessNotFoundImpl value,
          $Res Function(_$BusinessNotFoundImpl) then) =
      __$$BusinessNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessNotFoundImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessNotFoundImpl>
    implements _$$BusinessNotFoundImplCopyWith<$Res> {
  __$$BusinessNotFoundImplCopyWithImpl(_$BusinessNotFoundImpl _value,
      $Res Function(_$BusinessNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessNotFoundImpl(
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

class _$BusinessNotFoundImpl extends BusinessNotFound {
  const _$BusinessNotFoundImpl(
      {required this.stackTrace, this.message = 'Business not found'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.notFound(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessNotFoundImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessNotFoundImplCopyWith<_$BusinessNotFoundImpl> get copyWith =>
      __$$BusinessNotFoundImplCopyWithImpl<_$BusinessNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
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
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
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
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class BusinessNotFound extends BusinessException {
  const factory BusinessNotFound(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessNotFoundImpl;
  const BusinessNotFound._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessNotFoundImplCopyWith<_$BusinessNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessInvalidDataImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessInvalidDataImplCopyWith(_$BusinessInvalidDataImpl value,
          $Res Function(_$BusinessInvalidDataImpl) then) =
      __$$BusinessInvalidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessInvalidDataImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessInvalidDataImpl>
    implements _$$BusinessInvalidDataImplCopyWith<$Res> {
  __$$BusinessInvalidDataImplCopyWithImpl(_$BusinessInvalidDataImpl _value,
      $Res Function(_$BusinessInvalidDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessInvalidDataImpl(
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

class _$BusinessInvalidDataImpl extends BusinessInvalidData {
  const _$BusinessInvalidDataImpl(
      {required this.stackTrace, this.message = 'Invalid business data'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.invalidData(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessInvalidDataImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessInvalidDataImplCopyWith<_$BusinessInvalidDataImpl> get copyWith =>
      __$$BusinessInvalidDataImplCopyWithImpl<_$BusinessInvalidDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
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
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
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
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class BusinessInvalidData extends BusinessException {
  const factory BusinessInvalidData(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessInvalidDataImpl;
  const BusinessInvalidData._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessInvalidDataImplCopyWith<_$BusinessInvalidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessUnauthorizedImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessUnauthorizedImplCopyWith(_$BusinessUnauthorizedImpl value,
          $Res Function(_$BusinessUnauthorizedImpl) then) =
      __$$BusinessUnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessUnauthorizedImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessUnauthorizedImpl>
    implements _$$BusinessUnauthorizedImplCopyWith<$Res> {
  __$$BusinessUnauthorizedImplCopyWithImpl(_$BusinessUnauthorizedImpl _value,
      $Res Function(_$BusinessUnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessUnauthorizedImpl(
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

class _$BusinessUnauthorizedImpl extends BusinessUnauthorized {
  const _$BusinessUnauthorizedImpl(
      {required this.stackTrace,
      this.message = 'Unauthorized to perform this operation'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.unauthorized(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessUnauthorizedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessUnauthorizedImplCopyWith<_$BusinessUnauthorizedImpl>
      get copyWith =>
          __$$BusinessUnauthorizedImplCopyWithImpl<_$BusinessUnauthorizedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
    required TResult Function(StackTrace stackTrace, String message)
        createFailed,
    required TResult Function(StackTrace stackTrace, String message)
        updateFailed,
    required TResult Function(StackTrace stackTrace, String message)
        deleteFailed,
  }) {
    return unauthorized(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace stackTrace, String message)? notFound,
    TResult? Function(StackTrace stackTrace, String message)? invalidData,
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
    TResult? Function(StackTrace stackTrace, String message)? createFailed,
    TResult? Function(StackTrace stackTrace, String message)? updateFailed,
    TResult? Function(StackTrace stackTrace, String message)? deleteFailed,
  }) {
    return unauthorized?.call(stackTrace, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace stackTrace, String message)? notFound,
    TResult Function(StackTrace stackTrace, String message)? invalidData,
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
    TResult Function(StackTrace stackTrace, String message)? createFailed,
    TResult Function(StackTrace stackTrace, String message)? updateFailed,
    TResult Function(StackTrace stackTrace, String message)? deleteFailed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(stackTrace, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class BusinessUnauthorized extends BusinessException {
  const factory BusinessUnauthorized(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessUnauthorizedImpl;
  const BusinessUnauthorized._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessUnauthorizedImplCopyWith<_$BusinessUnauthorizedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessCreateFailedImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessCreateFailedImplCopyWith(_$BusinessCreateFailedImpl value,
          $Res Function(_$BusinessCreateFailedImpl) then) =
      __$$BusinessCreateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessCreateFailedImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessCreateFailedImpl>
    implements _$$BusinessCreateFailedImplCopyWith<$Res> {
  __$$BusinessCreateFailedImplCopyWithImpl(_$BusinessCreateFailedImpl _value,
      $Res Function(_$BusinessCreateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessCreateFailedImpl(
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

class _$BusinessCreateFailedImpl extends BusinessCreateFailed {
  const _$BusinessCreateFailedImpl(
      {required this.stackTrace, this.message = 'Failed to create business'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.createFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessCreateFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessCreateFailedImplCopyWith<_$BusinessCreateFailedImpl>
      get copyWith =>
          __$$BusinessCreateFailedImplCopyWithImpl<_$BusinessCreateFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
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
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
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
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return createFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return createFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(this);
    }
    return orElse();
  }
}

abstract class BusinessCreateFailed extends BusinessException {
  const factory BusinessCreateFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessCreateFailedImpl;
  const BusinessCreateFailed._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessCreateFailedImplCopyWith<_$BusinessCreateFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessUpdateFailedImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessUpdateFailedImplCopyWith(_$BusinessUpdateFailedImpl value,
          $Res Function(_$BusinessUpdateFailedImpl) then) =
      __$$BusinessUpdateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessUpdateFailedImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessUpdateFailedImpl>
    implements _$$BusinessUpdateFailedImplCopyWith<$Res> {
  __$$BusinessUpdateFailedImplCopyWithImpl(_$BusinessUpdateFailedImpl _value,
      $Res Function(_$BusinessUpdateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessUpdateFailedImpl(
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

class _$BusinessUpdateFailedImpl extends BusinessUpdateFailed {
  const _$BusinessUpdateFailedImpl(
      {required this.stackTrace, this.message = 'Failed to update business'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.updateFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessUpdateFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessUpdateFailedImplCopyWith<_$BusinessUpdateFailedImpl>
      get copyWith =>
          __$$BusinessUpdateFailedImplCopyWithImpl<_$BusinessUpdateFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
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
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
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
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class BusinessUpdateFailed extends BusinessException {
  const factory BusinessUpdateFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessUpdateFailedImpl;
  const BusinessUpdateFailed._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessUpdateFailedImplCopyWith<_$BusinessUpdateFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessDeleteFailedImplCopyWith<$Res>
    implements $BusinessExceptionCopyWith<$Res> {
  factory _$$BusinessDeleteFailedImplCopyWith(_$BusinessDeleteFailedImpl value,
          $Res Function(_$BusinessDeleteFailedImpl) then) =
      __$$BusinessDeleteFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace stackTrace, String message});
}

/// @nodoc
class __$$BusinessDeleteFailedImplCopyWithImpl<$Res>
    extends _$BusinessExceptionCopyWithImpl<$Res, _$BusinessDeleteFailedImpl>
    implements _$$BusinessDeleteFailedImplCopyWith<$Res> {
  __$$BusinessDeleteFailedImplCopyWithImpl(_$BusinessDeleteFailedImpl _value,
      $Res Function(_$BusinessDeleteFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = null,
    Object? message = null,
  }) {
    return _then(_$BusinessDeleteFailedImpl(
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

class _$BusinessDeleteFailedImpl extends BusinessDeleteFailed {
  const _$BusinessDeleteFailedImpl(
      {required this.stackTrace, this.message = 'Failed to delete business'})
      : super._();

  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'BusinessException.deleteFailed(stackTrace: $stackTrace, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDeleteFailedImpl &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stackTrace, message);

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDeleteFailedImplCopyWith<_$BusinessDeleteFailedImpl>
      get copyWith =>
          __$$BusinessDeleteFailedImplCopyWithImpl<_$BusinessDeleteFailedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace stackTrace, String message) notFound,
    required TResult Function(StackTrace stackTrace, String message)
        invalidData,
    required TResult Function(StackTrace stackTrace, String message)
        unauthorized,
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
    TResult? Function(StackTrace stackTrace, String message)? unauthorized,
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
    TResult Function(StackTrace stackTrace, String message)? unauthorized,
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
    required TResult Function(BusinessNotFound value) notFound,
    required TResult Function(BusinessInvalidData value) invalidData,
    required TResult Function(BusinessUnauthorized value) unauthorized,
    required TResult Function(BusinessCreateFailed value) createFailed,
    required TResult Function(BusinessUpdateFailed value) updateFailed,
    required TResult Function(BusinessDeleteFailed value) deleteFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BusinessNotFound value)? notFound,
    TResult? Function(BusinessInvalidData value)? invalidData,
    TResult? Function(BusinessUnauthorized value)? unauthorized,
    TResult? Function(BusinessCreateFailed value)? createFailed,
    TResult? Function(BusinessUpdateFailed value)? updateFailed,
    TResult? Function(BusinessDeleteFailed value)? deleteFailed,
  }) {
    return deleteFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BusinessNotFound value)? notFound,
    TResult Function(BusinessInvalidData value)? invalidData,
    TResult Function(BusinessUnauthorized value)? unauthorized,
    TResult Function(BusinessCreateFailed value)? createFailed,
    TResult Function(BusinessUpdateFailed value)? updateFailed,
    TResult Function(BusinessDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class BusinessDeleteFailed extends BusinessException {
  const factory BusinessDeleteFailed(
      {required final StackTrace stackTrace,
      final String message}) = _$BusinessDeleteFailedImpl;
  const BusinessDeleteFailed._() : super._();

  @override
  StackTrace get stackTrace;
  @override
  String get message;

  /// Create a copy of BusinessException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDeleteFailedImplCopyWith<_$BusinessDeleteFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
