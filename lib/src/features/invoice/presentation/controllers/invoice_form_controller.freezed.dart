// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceFormState {
  DateTime get invoiceDate => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  String get jobName => throw _privateConstructorUsedError;
  double? get advancePayment => throw _privateConstructorUsedError;
  int get invoiceNumber => throw _privateConstructorUsedError;
  bool get hasInvoiceNumberError => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceFormStateCopyWith<InvoiceFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceFormStateCopyWith<$Res> {
  factory $InvoiceFormStateCopyWith(
          InvoiceFormState value, $Res Function(InvoiceFormState) then) =
      _$InvoiceFormStateCopyWithImpl<$Res, InvoiceFormState>;
  @useResult
  $Res call(
      {DateTime invoiceDate,
      Customer? customer,
      List<InvoiceItem> items,
      String notes,
      String jobName,
      double? advancePayment,
      int invoiceNumber,
      bool hasInvoiceNumberError});

  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class _$InvoiceFormStateCopyWithImpl<$Res, $Val extends InvoiceFormState>
    implements $InvoiceFormStateCopyWith<$Res> {
  _$InvoiceFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceDate = null,
    Object? customer = freezed,
    Object? items = null,
    Object? notes = null,
    Object? jobName = null,
    Object? advancePayment = freezed,
    Object? invoiceNumber = null,
    Object? hasInvoiceNumberError = null,
  }) {
    return _then(_value.copyWith(
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      advancePayment: freezed == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasInvoiceNumberError: null == hasInvoiceNumberError
          ? _value.hasInvoiceNumberError
          : hasInvoiceNumberError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res>? get customer {
    if (_value.customer == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.customer!, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceFormStateImplCopyWith<$Res>
    implements $InvoiceFormStateCopyWith<$Res> {
  factory _$$InvoiceFormStateImplCopyWith(_$InvoiceFormStateImpl value,
          $Res Function(_$InvoiceFormStateImpl) then) =
      __$$InvoiceFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime invoiceDate,
      Customer? customer,
      List<InvoiceItem> items,
      String notes,
      String jobName,
      double? advancePayment,
      int invoiceNumber,
      bool hasInvoiceNumberError});

  @override
  $CustomerCopyWith<$Res>? get customer;
}

/// @nodoc
class __$$InvoiceFormStateImplCopyWithImpl<$Res>
    extends _$InvoiceFormStateCopyWithImpl<$Res, _$InvoiceFormStateImpl>
    implements _$$InvoiceFormStateImplCopyWith<$Res> {
  __$$InvoiceFormStateImplCopyWithImpl(_$InvoiceFormStateImpl _value,
      $Res Function(_$InvoiceFormStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceDate = null,
    Object? customer = freezed,
    Object? items = null,
    Object? notes = null,
    Object? jobName = null,
    Object? advancePayment = freezed,
    Object? invoiceNumber = null,
    Object? hasInvoiceNumberError = null,
  }) {
    return _then(_$InvoiceFormStateImpl(
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: null == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String,
      advancePayment: freezed == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as double?,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hasInvoiceNumberError: null == hasInvoiceNumberError
          ? _value.hasInvoiceNumberError
          : hasInvoiceNumberError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InvoiceFormStateImpl extends _InvoiceFormState {
  const _$InvoiceFormStateImpl(
      {required this.invoiceDate,
      this.customer,
      final List<InvoiceItem> items = const [],
      this.notes = '',
      this.jobName = '',
      this.advancePayment,
      this.invoiceNumber = 0,
      this.hasInvoiceNumberError = false})
      : _items = items,
        super._();

  @override
  final DateTime invoiceDate;
  @override
  final Customer? customer;
  final List<InvoiceItem> _items;
  @override
  @JsonKey()
  List<InvoiceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final String notes;
  @override
  @JsonKey()
  final String jobName;
  @override
  final double? advancePayment;
  @override
  @JsonKey()
  final int invoiceNumber;
  @override
  @JsonKey()
  final bool hasInvoiceNumberError;

  @override
  String toString() {
    return 'InvoiceFormState(invoiceDate: $invoiceDate, customer: $customer, items: $items, notes: $notes, jobName: $jobName, advancePayment: $advancePayment, invoiceNumber: $invoiceNumber, hasInvoiceNumberError: $hasInvoiceNumberError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceFormStateImpl &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.advancePayment, advancePayment) ||
                other.advancePayment == advancePayment) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.hasInvoiceNumberError, hasInvoiceNumberError) ||
                other.hasInvoiceNumberError == hasInvoiceNumberError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      invoiceDate,
      customer,
      const DeepCollectionEquality().hash(_items),
      notes,
      jobName,
      advancePayment,
      invoiceNumber,
      hasInvoiceNumberError);

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceFormStateImplCopyWith<_$InvoiceFormStateImpl> get copyWith =>
      __$$InvoiceFormStateImplCopyWithImpl<_$InvoiceFormStateImpl>(
          this, _$identity);
}

abstract class _InvoiceFormState extends InvoiceFormState {
  const factory _InvoiceFormState(
      {required final DateTime invoiceDate,
      final Customer? customer,
      final List<InvoiceItem> items,
      final String notes,
      final String jobName,
      final double? advancePayment,
      final int invoiceNumber,
      final bool hasInvoiceNumberError}) = _$InvoiceFormStateImpl;
  const _InvoiceFormState._() : super._();

  @override
  DateTime get invoiceDate;
  @override
  Customer? get customer;
  @override
  List<InvoiceItem> get items;
  @override
  String get notes;
  @override
  String get jobName;
  @override
  double? get advancePayment;
  @override
  int get invoiceNumber;
  @override
  bool get hasInvoiceNumberError;

  /// Create a copy of InvoiceFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceFormStateImplCopyWith<_$InvoiceFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
