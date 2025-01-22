// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  int get invoiceNumber => throw _privateConstructorUsedError;
  DateTime get invoiceDate => throw _privateConstructorUsedError;
  Customer get customer => throw _privateConstructorUsedError;
  List<InvoiceItem> get items => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  String? get jobName => throw _privateConstructorUsedError;
  double? get advancePayment => throw _privateConstructorUsedError;
  InvoiceSentStatus get sentStatus => throw _privateConstructorUsedError;
  InvoiceStatus get status => throw _privateConstructorUsedError;
  FileAndPath get pdfLink => throw _privateConstructorUsedError;

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      int invoiceNumber,
      DateTime invoiceDate,
      Customer customer,
      List<InvoiceItem> items,
      DateTime createdAt,
      String notes,
      String? jobName,
      double? advancePayment,
      InvoiceSentStatus sentStatus,
      InvoiceStatus status,
      FileAndPath pdfLink});

  $CustomerCopyWith<$Res> get customer;
  $FileAndPathCopyWith<$Res> get pdfLink;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceNumber = null,
    Object? invoiceDate = null,
    Object? customer = null,
    Object? items = null,
    Object? createdAt = null,
    Object? notes = null,
    Object? jobName = freezed,
    Object? advancePayment = freezed,
    Object? sentStatus = null,
    Object? status = null,
    Object? pdfLink = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String?,
      advancePayment: freezed == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as double?,
      sentStatus: null == sentStatus
          ? _value.sentStatus
          : sentStatus // ignore: cast_nullable_to_non_nullable
              as InvoiceSentStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      pdfLink: null == pdfLink
          ? _value.pdfLink
          : pdfLink // ignore: cast_nullable_to_non_nullable
              as FileAndPath,
    ) as $Val);
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileAndPathCopyWith<$Res> get pdfLink {
    return $FileAndPathCopyWith<$Res>(_value.pdfLink, (value) {
      return _then(_value.copyWith(pdfLink: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int invoiceNumber,
      DateTime invoiceDate,
      Customer customer,
      List<InvoiceItem> items,
      DateTime createdAt,
      String notes,
      String? jobName,
      double? advancePayment,
      InvoiceSentStatus sentStatus,
      InvoiceStatus status,
      FileAndPath pdfLink});

  @override
  $CustomerCopyWith<$Res> get customer;
  @override
  $FileAndPathCopyWith<$Res> get pdfLink;
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceNumber = null,
    Object? invoiceDate = null,
    Object? customer = null,
    Object? items = null,
    Object? createdAt = null,
    Object? notes = null,
    Object? jobName = freezed,
    Object? advancePayment = freezed,
    Object? sentStatus = null,
    Object? status = null,
    Object? pdfLink = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceNumber: null == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as int,
      invoiceDate: null == invoiceDate
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<InvoiceItem>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      jobName: freezed == jobName
          ? _value.jobName
          : jobName // ignore: cast_nullable_to_non_nullable
              as String?,
      advancePayment: freezed == advancePayment
          ? _value.advancePayment
          : advancePayment // ignore: cast_nullable_to_non_nullable
              as double?,
      sentStatus: null == sentStatus
          ? _value.sentStatus
          : sentStatus // ignore: cast_nullable_to_non_nullable
              as InvoiceSentStatus,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InvoiceStatus,
      pdfLink: null == pdfLink
          ? _value.pdfLink
          : pdfLink // ignore: cast_nullable_to_non_nullable
              as FileAndPath,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$InvoiceImpl extends _Invoice {
  _$InvoiceImpl(
      {required this.id,
      required this.invoiceNumber,
      required this.invoiceDate,
      required this.customer,
      required final List<InvoiceItem> items,
      required this.createdAt,
      this.notes = '',
      this.jobName,
      this.advancePayment,
      this.sentStatus = InvoiceSentStatus.draft,
      this.status = InvoiceStatus.pendingPayment,
      this.pdfLink = const FileAndPath()})
      : _items = items,
        super._();

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final int invoiceNumber;
  @override
  final DateTime invoiceDate;
  @override
  final Customer customer;
  final List<InvoiceItem> _items;
  @override
  List<InvoiceItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final String notes;
  @override
  final String? jobName;
  @override
  final double? advancePayment;
  @override
  @JsonKey()
  final InvoiceSentStatus sentStatus;
  @override
  @JsonKey()
  final InvoiceStatus status;
  @override
  @JsonKey()
  final FileAndPath pdfLink;

  @override
  String toString() {
    return 'Invoice(id: $id, invoiceNumber: $invoiceNumber, invoiceDate: $invoiceDate, customer: $customer, items: $items, createdAt: $createdAt, notes: $notes, jobName: $jobName, advancePayment: $advancePayment, sentStatus: $sentStatus, status: $status, pdfLink: $pdfLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.invoiceDate, invoiceDate) ||
                other.invoiceDate == invoiceDate) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.jobName, jobName) || other.jobName == jobName) &&
            (identical(other.advancePayment, advancePayment) ||
                other.advancePayment == advancePayment) &&
            (identical(other.sentStatus, sentStatus) ||
                other.sentStatus == sentStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pdfLink, pdfLink) || other.pdfLink == pdfLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      invoiceNumber,
      invoiceDate,
      customer,
      const DeepCollectionEquality().hash(_items),
      createdAt,
      notes,
      jobName,
      advancePayment,
      sentStatus,
      status,
      pdfLink);

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice extends Invoice {
  factory _Invoice(
      {required final String id,
      required final int invoiceNumber,
      required final DateTime invoiceDate,
      required final Customer customer,
      required final List<InvoiceItem> items,
      required final DateTime createdAt,
      final String notes,
      final String? jobName,
      final double? advancePayment,
      final InvoiceSentStatus sentStatus,
      final InvoiceStatus status,
      final FileAndPath pdfLink}) = _$InvoiceImpl;
  _Invoice._() : super._();

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  int get invoiceNumber;
  @override
  DateTime get invoiceDate;
  @override
  Customer get customer;
  @override
  List<InvoiceItem> get items;
  @override
  DateTime get createdAt;
  @override
  String get notes;
  @override
  String? get jobName;
  @override
  double? get advancePayment;
  @override
  InvoiceSentStatus get sentStatus;
  @override
  InvoiceStatus get status;
  @override
  FileAndPath get pdfLink;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
