// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String get id => throw _privateConstructorUsedError;
  FileAndPath get companyLogo => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  /// Serializes this Business to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {String id,
      FileAndPath companyLogo,
      String companyName,
      String address,
      String email,
      String phoneNumber,
      String colorHex,
      String? website});

  $FileAndPathCopyWith<$Res> get companyLogo;
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyLogo = null,
    Object? companyName = null,
    Object? address = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? colorHex = null,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyLogo: null == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as FileAndPath,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileAndPathCopyWith<$Res> get companyLogo {
    return $FileAndPathCopyWith<$Res>(_value.companyLogo, (value) {
      return _then(_value.copyWith(companyLogo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessImplCopyWith<$Res>
    implements $BusinessCopyWith<$Res> {
  factory _$$BusinessImplCopyWith(
          _$BusinessImpl value, $Res Function(_$BusinessImpl) then) =
      __$$BusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      FileAndPath companyLogo,
      String companyName,
      String address,
      String email,
      String phoneNumber,
      String colorHex,
      String? website});

  @override
  $FileAndPathCopyWith<$Res> get companyLogo;
}

/// @nodoc
class __$$BusinessImplCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$BusinessImpl>
    implements _$$BusinessImplCopyWith<$Res> {
  __$$BusinessImplCopyWithImpl(
      _$BusinessImpl _value, $Res Function(_$BusinessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? companyLogo = null,
    Object? companyName = null,
    Object? address = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? colorHex = null,
    Object? website = freezed,
  }) {
    return _then(_$BusinessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyLogo: null == companyLogo
          ? _value.companyLogo
          : companyLogo // ignore: cast_nullable_to_non_nullable
              as FileAndPath,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BusinessImpl extends _Business {
  const _$BusinessImpl(
      {required this.id,
      this.companyLogo = const FileAndPath(),
      this.companyName = 'Company Name',
      this.address = 'Address for testing',
      this.email = 'test@test.com',
      this.phoneNumber = '2393883322',
      this.colorHex = '#4CC8F7',
      this.website})
      : super._();

  factory _$BusinessImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final FileAndPath companyLogo;
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String colorHex;
  @override
  final String? website;

  @override
  String toString() {
    return 'Business(id: $id, companyLogo: $companyLogo, companyName: $companyName, address: $address, email: $email, phoneNumber: $phoneNumber, colorHex: $colorHex, website: $website)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyLogo, companyLogo) ||
                other.companyLogo == companyLogo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.website, website) || other.website == website));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, companyLogo, companyName,
      address, email, phoneNumber, colorHex, website);

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      __$$BusinessImplCopyWithImpl<_$BusinessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessImplToJson(
      this,
    );
  }
}

abstract class _Business extends Business {
  const factory _Business(
      {required final String id,
      final FileAndPath companyLogo,
      final String companyName,
      final String address,
      final String email,
      final String phoneNumber,
      final String colorHex,
      final String? website}) = _$BusinessImpl;
  const _Business._() : super._();

  factory _Business.fromJson(Map<String, dynamic> json) =
      _$BusinessImpl.fromJson;

  @override
  String get id;
  @override
  FileAndPath get companyLogo;
  @override
  String get companyName;
  @override
  String get address;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  String get colorHex;
  @override
  String? get website;

  /// Create a copy of Business
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessImplCopyWith<_$BusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
