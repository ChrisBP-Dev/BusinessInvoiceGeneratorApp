// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailValidationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalidFormat,
    required TResult Function() invalidDomain,
    required TResult Function() tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? invalidFormat,
    TResult? Function()? invalidDomain,
    TResult? Function()? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalidFormat,
    TResult Function()? invalidDomain,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_InvalidDomain value) invalidDomain,
    required TResult Function(_TooLong value) tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_InvalidDomain value)? invalidDomain,
    TResult? Function(_TooLong value)? tooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_InvalidDomain value)? invalidDomain,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailValidationFailureCopyWith<$Res> {
  factory $EmailValidationFailureCopyWith(EmailValidationFailure value,
          $Res Function(EmailValidationFailure) then) =
      _$EmailValidationFailureCopyWithImpl<$Res, EmailValidationFailure>;
}

/// @nodoc
class _$EmailValidationFailureCopyWithImpl<$Res,
        $Val extends EmailValidationFailure>
    implements $EmailValidationFailureCopyWith<$Res> {
  _$EmailValidationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailValidationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailValidationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'EmailValidationFailure.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalidFormat,
    required TResult Function() invalidDomain,
    required TResult Function() tooLong,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? invalidFormat,
    TResult? Function()? invalidDomain,
    TResult? Function()? tooLong,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalidFormat,
    TResult Function()? invalidDomain,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_InvalidDomain value) invalidDomain,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_InvalidDomain value)? invalidDomain,
    TResult? Function(_TooLong value)? tooLong,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_InvalidDomain value)? invalidDomain,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends EmailValidationFailure {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
abstract class _$$InvalidFormatImplCopyWith<$Res> {
  factory _$$InvalidFormatImplCopyWith(
          _$InvalidFormatImpl value, $Res Function(_$InvalidFormatImpl) then) =
      __$$InvalidFormatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidFormatImplCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res, _$InvalidFormatImpl>
    implements _$$InvalidFormatImplCopyWith<$Res> {
  __$$InvalidFormatImplCopyWithImpl(
      _$InvalidFormatImpl _value, $Res Function(_$InvalidFormatImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailValidationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidFormatImpl extends _InvalidFormat {
  const _$InvalidFormatImpl() : super._();

  @override
  String toString() {
    return 'EmailValidationFailure.invalidFormat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidFormatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalidFormat,
    required TResult Function() invalidDomain,
    required TResult Function() tooLong,
  }) {
    return invalidFormat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? invalidFormat,
    TResult? Function()? invalidDomain,
    TResult? Function()? tooLong,
  }) {
    return invalidFormat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalidFormat,
    TResult Function()? invalidDomain,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_InvalidDomain value) invalidDomain,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_InvalidDomain value)? invalidDomain,
    TResult? Function(_TooLong value)? tooLong,
  }) {
    return invalidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_InvalidDomain value)? invalidDomain,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat extends EmailValidationFailure {
  const factory _InvalidFormat() = _$InvalidFormatImpl;
  const _InvalidFormat._() : super._();
}

/// @nodoc
abstract class _$$InvalidDomainImplCopyWith<$Res> {
  factory _$$InvalidDomainImplCopyWith(
          _$InvalidDomainImpl value, $Res Function(_$InvalidDomainImpl) then) =
      __$$InvalidDomainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidDomainImplCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res, _$InvalidDomainImpl>
    implements _$$InvalidDomainImplCopyWith<$Res> {
  __$$InvalidDomainImplCopyWithImpl(
      _$InvalidDomainImpl _value, $Res Function(_$InvalidDomainImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailValidationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidDomainImpl extends _InvalidDomain {
  const _$InvalidDomainImpl() : super._();

  @override
  String toString() {
    return 'EmailValidationFailure.invalidDomain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidDomainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalidFormat,
    required TResult Function() invalidDomain,
    required TResult Function() tooLong,
  }) {
    return invalidDomain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? invalidFormat,
    TResult? Function()? invalidDomain,
    TResult? Function()? tooLong,
  }) {
    return invalidDomain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalidFormat,
    TResult Function()? invalidDomain,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (invalidDomain != null) {
      return invalidDomain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_InvalidDomain value) invalidDomain,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return invalidDomain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_InvalidDomain value)? invalidDomain,
    TResult? Function(_TooLong value)? tooLong,
  }) {
    return invalidDomain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_InvalidDomain value)? invalidDomain,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (invalidDomain != null) {
      return invalidDomain(this);
    }
    return orElse();
  }
}

abstract class _InvalidDomain extends EmailValidationFailure {
  const factory _InvalidDomain() = _$InvalidDomainImpl;
  const _InvalidDomain._() : super._();
}

/// @nodoc
abstract class _$$TooLongImplCopyWith<$Res> {
  factory _$$TooLongImplCopyWith(
          _$TooLongImpl value, $Res Function(_$TooLongImpl) then) =
      __$$TooLongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooLongImplCopyWithImpl<$Res>
    extends _$EmailValidationFailureCopyWithImpl<$Res, _$TooLongImpl>
    implements _$$TooLongImplCopyWith<$Res> {
  __$$TooLongImplCopyWithImpl(
      _$TooLongImpl _value, $Res Function(_$TooLongImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailValidationFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TooLongImpl extends _TooLong {
  const _$TooLongImpl() : super._();

  @override
  String toString() {
    return 'EmailValidationFailure.tooLong()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooLongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() invalidFormat,
    required TResult Function() invalidDomain,
    required TResult Function() tooLong,
  }) {
    return tooLong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? invalidFormat,
    TResult? Function()? invalidDomain,
    TResult? Function()? tooLong,
  }) {
    return tooLong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? invalidFormat,
    TResult Function()? invalidDomain,
    TResult Function()? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_InvalidDomain value) invalidDomain,
    required TResult Function(_TooLong value) tooLong,
  }) {
    return tooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty value)? empty,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_InvalidDomain value)? invalidDomain,
    TResult? Function(_TooLong value)? tooLong,
  }) {
    return tooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_InvalidDomain value)? invalidDomain,
    TResult Function(_TooLong value)? tooLong,
    required TResult orElse(),
  }) {
    if (tooLong != null) {
      return tooLong(this);
    }
    return orElse();
  }
}

abstract class _TooLong extends EmailValidationFailure {
  const factory _TooLong() = _$TooLongImpl;
  const _TooLong._() : super._();
}
