// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceException {
  String get message => throw _privateConstructorUsedError;
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceExceptionCopyWith<ServiceException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceExceptionCopyWith<$Res> {
  factory $ServiceExceptionCopyWith(
          ServiceException value, $Res Function(ServiceException) then) =
      _$ServiceExceptionCopyWithImpl<$Res, ServiceException>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class _$ServiceExceptionCopyWithImpl<$Res, $Val extends ServiceException>
    implements $ServiceExceptionCopyWith<$Res> {
  _$ServiceExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceNotFoundImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceNotFoundImplCopyWith(_$ServiceNotFoundImpl value,
          $Res Function(_$ServiceNotFoundImpl) then) =
      __$$ServiceNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceNotFoundImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceNotFoundImpl>
    implements _$$ServiceNotFoundImplCopyWith<$Res> {
  __$$ServiceNotFoundImplCopyWithImpl(
      _$ServiceNotFoundImpl _value, $Res Function(_$ServiceNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceNotFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceNotFoundImpl implements ServiceNotFound {
  const _$ServiceNotFoundImpl(
      {this.message = 'Service not found', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.notFound(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceNotFoundImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceNotFoundImplCopyWith<_$ServiceNotFoundImpl> get copyWith =>
      __$$ServiceNotFoundImplCopyWithImpl<_$ServiceNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return notFound(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return notFound?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class ServiceNotFound implements ServiceException {
  const factory ServiceNotFound(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceNotFoundImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceNotFoundImplCopyWith<_$ServiceNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceInvalidDataImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceInvalidDataImplCopyWith(_$ServiceInvalidDataImpl value,
          $Res Function(_$ServiceInvalidDataImpl) then) =
      __$$ServiceInvalidDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceInvalidDataImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceInvalidDataImpl>
    implements _$$ServiceInvalidDataImplCopyWith<$Res> {
  __$$ServiceInvalidDataImplCopyWithImpl(_$ServiceInvalidDataImpl _value,
      $Res Function(_$ServiceInvalidDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceInvalidDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceInvalidDataImpl implements ServiceInvalidData {
  const _$ServiceInvalidDataImpl(
      {this.message = 'Invalid service data', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.invalidData(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInvalidDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInvalidDataImplCopyWith<_$ServiceInvalidDataImpl> get copyWith =>
      __$$ServiceInvalidDataImplCopyWithImpl<_$ServiceInvalidDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return invalidData(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return invalidData?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class ServiceInvalidData implements ServiceException {
  const factory ServiceInvalidData(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceInvalidDataImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceInvalidDataImplCopyWith<_$ServiceInvalidDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnauthorizedImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceUnauthorizedImplCopyWith(_$ServiceUnauthorizedImpl value,
          $Res Function(_$ServiceUnauthorizedImpl) then) =
      __$$ServiceUnauthorizedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceUnauthorizedImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceUnauthorizedImpl>
    implements _$$ServiceUnauthorizedImplCopyWith<$Res> {
  __$$ServiceUnauthorizedImplCopyWithImpl(_$ServiceUnauthorizedImpl _value,
      $Res Function(_$ServiceUnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceUnauthorizedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceUnauthorizedImpl implements ServiceUnauthorized {
  const _$ServiceUnauthorizedImpl(
      {this.message = 'Unauthorized to perform this operation',
      this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.unauthorized(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnauthorizedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUnauthorizedImplCopyWith<_$ServiceUnauthorizedImpl> get copyWith =>
      __$$ServiceUnauthorizedImplCopyWithImpl<_$ServiceUnauthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return unauthorized(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return unauthorized?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class ServiceUnauthorized implements ServiceException {
  const factory ServiceUnauthorized(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceUnauthorizedImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceUnauthorizedImplCopyWith<_$ServiceUnauthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceCreateFailedImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceCreateFailedImplCopyWith(_$ServiceCreateFailedImpl value,
          $Res Function(_$ServiceCreateFailedImpl) then) =
      __$$ServiceCreateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceCreateFailedImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceCreateFailedImpl>
    implements _$$ServiceCreateFailedImplCopyWith<$Res> {
  __$$ServiceCreateFailedImplCopyWithImpl(_$ServiceCreateFailedImpl _value,
      $Res Function(_$ServiceCreateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceCreateFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceCreateFailedImpl implements ServiceCreateFailed {
  const _$ServiceCreateFailedImpl(
      {this.message = 'Failed to create service', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.createFailed(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceCreateFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceCreateFailedImplCopyWith<_$ServiceCreateFailedImpl> get copyWith =>
      __$$ServiceCreateFailedImplCopyWithImpl<_$ServiceCreateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return createFailed(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return createFailed?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return createFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return createFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceCreateFailed implements ServiceException {
  const factory ServiceCreateFailed(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceCreateFailedImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceCreateFailedImplCopyWith<_$ServiceCreateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUpdateFailedImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceUpdateFailedImplCopyWith(_$ServiceUpdateFailedImpl value,
          $Res Function(_$ServiceUpdateFailedImpl) then) =
      __$$ServiceUpdateFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceUpdateFailedImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceUpdateFailedImpl>
    implements _$$ServiceUpdateFailedImplCopyWith<$Res> {
  __$$ServiceUpdateFailedImplCopyWithImpl(_$ServiceUpdateFailedImpl _value,
      $Res Function(_$ServiceUpdateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceUpdateFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceUpdateFailedImpl implements ServiceUpdateFailed {
  const _$ServiceUpdateFailedImpl(
      {this.message = 'Failed to update service', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.updateFailed(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUpdateFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceUpdateFailedImplCopyWith<_$ServiceUpdateFailedImpl> get copyWith =>
      __$$ServiceUpdateFailedImplCopyWithImpl<_$ServiceUpdateFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return updateFailed(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return updateFailed?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceUpdateFailed implements ServiceException {
  const factory ServiceUpdateFailed(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceUpdateFailedImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceUpdateFailedImplCopyWith<_$ServiceUpdateFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceDeleteFailedImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceDeleteFailedImplCopyWith(_$ServiceDeleteFailedImpl value,
          $Res Function(_$ServiceDeleteFailedImpl) then) =
      __$$ServiceDeleteFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceDeleteFailedImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceDeleteFailedImpl>
    implements _$$ServiceDeleteFailedImplCopyWith<$Res> {
  __$$ServiceDeleteFailedImplCopyWithImpl(_$ServiceDeleteFailedImpl _value,
      $Res Function(_$ServiceDeleteFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceDeleteFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceDeleteFailedImpl implements ServiceDeleteFailed {
  const _$ServiceDeleteFailedImpl(
      {this.message = 'Failed to delete service', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.deleteFailed(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDeleteFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDeleteFailedImplCopyWith<_$ServiceDeleteFailedImpl> get copyWith =>
      __$$ServiceDeleteFailedImplCopyWithImpl<_$ServiceDeleteFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return deleteFailed(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return deleteFailed?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return deleteFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceDeleteFailed implements ServiceException {
  const factory ServiceDeleteFailed(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceDeleteFailedImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDeleteFailedImplCopyWith<_$ServiceDeleteFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceListFailedImplCopyWith<$Res>
    implements $ServiceExceptionCopyWith<$Res> {
  factory _$$ServiceListFailedImplCopyWith(_$ServiceListFailedImpl value,
          $Res Function(_$ServiceListFailedImpl) then) =
      __$$ServiceListFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$ServiceListFailedImplCopyWithImpl<$Res>
    extends _$ServiceExceptionCopyWithImpl<$Res, _$ServiceListFailedImpl>
    implements _$$ServiceListFailedImplCopyWith<$Res> {
  __$$ServiceListFailedImplCopyWithImpl(_$ServiceListFailedImpl _value,
      $Res Function(_$ServiceListFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ServiceListFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ServiceListFailedImpl implements ServiceListFailed {
  const _$ServiceListFailedImpl(
      {this.message = 'Failed to fetch services', this.stackTrace});

  @override
  @JsonKey()
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'ServiceException.listFailed(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceListFailedImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceListFailedImplCopyWith<_$ServiceListFailedImpl> get copyWith =>
      __$$ServiceListFailedImplCopyWithImpl<_$ServiceListFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, StackTrace? stackTrace) notFound,
    required TResult Function(String message, StackTrace? stackTrace)
        invalidData,
    required TResult Function(String message, StackTrace? stackTrace)
        unauthorized,
    required TResult Function(String message, StackTrace? stackTrace)
        createFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        updateFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        deleteFailed,
    required TResult Function(String message, StackTrace? stackTrace)
        listFailed,
  }) {
    return listFailed(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message, StackTrace? stackTrace)? notFound,
    TResult? Function(String message, StackTrace? stackTrace)? invalidData,
    TResult? Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult? Function(String message, StackTrace? stackTrace)? createFailed,
    TResult? Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult? Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult? Function(String message, StackTrace? stackTrace)? listFailed,
  }) {
    return listFailed?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, StackTrace? stackTrace)? notFound,
    TResult Function(String message, StackTrace? stackTrace)? invalidData,
    TResult Function(String message, StackTrace? stackTrace)? unauthorized,
    TResult Function(String message, StackTrace? stackTrace)? createFailed,
    TResult Function(String message, StackTrace? stackTrace)? updateFailed,
    TResult Function(String message, StackTrace? stackTrace)? deleteFailed,
    TResult Function(String message, StackTrace? stackTrace)? listFailed,
    required TResult orElse(),
  }) {
    if (listFailed != null) {
      return listFailed(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServiceNotFound value) notFound,
    required TResult Function(ServiceInvalidData value) invalidData,
    required TResult Function(ServiceUnauthorized value) unauthorized,
    required TResult Function(ServiceCreateFailed value) createFailed,
    required TResult Function(ServiceUpdateFailed value) updateFailed,
    required TResult Function(ServiceDeleteFailed value) deleteFailed,
    required TResult Function(ServiceListFailed value) listFailed,
  }) {
    return listFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServiceNotFound value)? notFound,
    TResult? Function(ServiceInvalidData value)? invalidData,
    TResult? Function(ServiceUnauthorized value)? unauthorized,
    TResult? Function(ServiceCreateFailed value)? createFailed,
    TResult? Function(ServiceUpdateFailed value)? updateFailed,
    TResult? Function(ServiceDeleteFailed value)? deleteFailed,
    TResult? Function(ServiceListFailed value)? listFailed,
  }) {
    return listFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServiceNotFound value)? notFound,
    TResult Function(ServiceInvalidData value)? invalidData,
    TResult Function(ServiceUnauthorized value)? unauthorized,
    TResult Function(ServiceCreateFailed value)? createFailed,
    TResult Function(ServiceUpdateFailed value)? updateFailed,
    TResult Function(ServiceDeleteFailed value)? deleteFailed,
    TResult Function(ServiceListFailed value)? listFailed,
    required TResult orElse(),
  }) {
    if (listFailed != null) {
      return listFailed(this);
    }
    return orElse();
  }
}

abstract class ServiceListFailed implements ServiceException {
  const factory ServiceListFailed(
      {final String message,
      final StackTrace? stackTrace}) = _$ServiceListFailedImpl;

  @override
  String get message;
  @override
  StackTrace? get stackTrace;

  /// Create a copy of ServiceException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceListFailedImplCopyWith<_$ServiceListFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
