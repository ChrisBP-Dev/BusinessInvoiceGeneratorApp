// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_item_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceItemFormState {
  ServiceModel? get service => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get sqFeet => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceItemFormStateCopyWith<InvoiceItemFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemFormStateCopyWith<$Res> {
  factory $InvoiceItemFormStateCopyWith(InvoiceItemFormState value,
          $Res Function(InvoiceItemFormState) then) =
      _$InvoiceItemFormStateCopyWithImpl<$Res, InvoiceItemFormState>;
  @useResult
  $Res call(
      {ServiceModel? service,
      String? id,
      String description,
      int sqFeet,
      double price});

  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class _$InvoiceItemFormStateCopyWithImpl<$Res,
        $Val extends InvoiceItemFormState>
    implements $InvoiceItemFormStateCopyWith<$Res> {
  _$InvoiceItemFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = freezed,
    Object? id = freezed,
    Object? description = null,
    Object? sqFeet = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sqFeet: null == sqFeet
          ? _value.sqFeet
          : sqFeet // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res>? get service {
    if (_value.service == null) {
      return null;
    }

    return $ServiceModelCopyWith<$Res>(_value.service!, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceItemFormStateImplCopyWith<$Res>
    implements $InvoiceItemFormStateCopyWith<$Res> {
  factory _$$InvoiceItemFormStateImplCopyWith(_$InvoiceItemFormStateImpl value,
          $Res Function(_$InvoiceItemFormStateImpl) then) =
      __$$InvoiceItemFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ServiceModel? service,
      String? id,
      String description,
      int sqFeet,
      double price});

  @override
  $ServiceModelCopyWith<$Res>? get service;
}

/// @nodoc
class __$$InvoiceItemFormStateImplCopyWithImpl<$Res>
    extends _$InvoiceItemFormStateCopyWithImpl<$Res, _$InvoiceItemFormStateImpl>
    implements _$$InvoiceItemFormStateImplCopyWith<$Res> {
  __$$InvoiceItemFormStateImplCopyWithImpl(_$InvoiceItemFormStateImpl _value,
      $Res Function(_$InvoiceItemFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = freezed,
    Object? id = freezed,
    Object? description = null,
    Object? sqFeet = null,
    Object? price = null,
  }) {
    return _then(_$InvoiceItemFormStateImpl(
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sqFeet: null == sqFeet
          ? _value.sqFeet
          : sqFeet // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$InvoiceItemFormStateImpl extends _InvoiceItemFormState {
  const _$InvoiceItemFormStateImpl(
      {this.service,
      this.id,
      this.description = '',
      this.sqFeet = 0,
      this.price = 0})
      : super._();

  @override
  final ServiceModel? service;
  @override
  final String? id;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int sqFeet;
  @override
  @JsonKey()
  final double price;

  @override
  String toString() {
    return 'InvoiceItemFormState(service: $service, id: $id, description: $description, sqFeet: $sqFeet, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemFormStateImpl &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.sqFeet, sqFeet) || other.sqFeet == sqFeet) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, service, id, description, sqFeet, price);

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemFormStateImplCopyWith<_$InvoiceItemFormStateImpl>
      get copyWith =>
          __$$InvoiceItemFormStateImplCopyWithImpl<_$InvoiceItemFormStateImpl>(
              this, _$identity);
}

abstract class _InvoiceItemFormState extends InvoiceItemFormState {
  const factory _InvoiceItemFormState(
      {final ServiceModel? service,
      final String? id,
      final String description,
      final int sqFeet,
      final double price}) = _$InvoiceItemFormStateImpl;
  const _InvoiceItemFormState._() : super._();

  @override
  ServiceModel? get service;
  @override
  String? get id;
  @override
  String get description;
  @override
  int get sqFeet;
  @override
  double get price;

  /// Create a copy of InvoiceItemFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceItemFormStateImplCopyWith<_$InvoiceItemFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
