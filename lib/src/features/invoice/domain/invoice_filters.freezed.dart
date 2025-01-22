// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceFilters {
  InvoiceSortType get sortType => throw _privateConstructorUsedError;
  bool get sortAscending => throw _privateConstructorUsedError;
  InvoiceTimeFilter get timeFilter => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get isPaid => throw _privateConstructorUsedError;
  bool? get isSent => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceFiltersCopyWith<InvoiceFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceFiltersCopyWith<$Res> {
  factory $InvoiceFiltersCopyWith(
          InvoiceFilters value, $Res Function(InvoiceFilters) then) =
      _$InvoiceFiltersCopyWithImpl<$Res, InvoiceFilters>;
  @useResult
  $Res call(
      {InvoiceSortType sortType,
      bool sortAscending,
      InvoiceTimeFilter timeFilter,
      DateTime? startDate,
      DateTime? endDate,
      bool? isPaid,
      bool? isSent});
}

/// @nodoc
class _$InvoiceFiltersCopyWithImpl<$Res, $Val extends InvoiceFilters>
    implements $InvoiceFiltersCopyWith<$Res> {
  _$InvoiceFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
    Object? sortAscending = null,
    Object? timeFilter = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isPaid = freezed,
    Object? isSent = freezed,
  }) {
    return _then(_value.copyWith(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as InvoiceSortType,
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFilter: null == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as InvoiceTimeFilter,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSent: freezed == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceFiltersImplCopyWith<$Res>
    implements $InvoiceFiltersCopyWith<$Res> {
  factory _$$InvoiceFiltersImplCopyWith(_$InvoiceFiltersImpl value,
          $Res Function(_$InvoiceFiltersImpl) then) =
      __$$InvoiceFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InvoiceSortType sortType,
      bool sortAscending,
      InvoiceTimeFilter timeFilter,
      DateTime? startDate,
      DateTime? endDate,
      bool? isPaid,
      bool? isSent});
}

/// @nodoc
class __$$InvoiceFiltersImplCopyWithImpl<$Res>
    extends _$InvoiceFiltersCopyWithImpl<$Res, _$InvoiceFiltersImpl>
    implements _$$InvoiceFiltersImplCopyWith<$Res> {
  __$$InvoiceFiltersImplCopyWithImpl(
      _$InvoiceFiltersImpl _value, $Res Function(_$InvoiceFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
    Object? sortAscending = null,
    Object? timeFilter = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isPaid = freezed,
    Object? isSent = freezed,
  }) {
    return _then(_$InvoiceFiltersImpl(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as InvoiceSortType,
      sortAscending: null == sortAscending
          ? _value.sortAscending
          : sortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFilter: null == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as InvoiceTimeFilter,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSent: freezed == isSent
          ? _value.isSent
          : isSent // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$InvoiceFiltersImpl implements _InvoiceFilters {
  const _$InvoiceFiltersImpl(
      {this.sortType = InvoiceSortType.createdAt,
      this.sortAscending = false,
      this.timeFilter = InvoiceTimeFilter.allTime,
      this.startDate,
      this.endDate,
      this.isPaid,
      this.isSent});

  @override
  @JsonKey()
  final InvoiceSortType sortType;
  @override
  @JsonKey()
  final bool sortAscending;
  @override
  @JsonKey()
  final InvoiceTimeFilter timeFilter;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool? isPaid;
  @override
  final bool? isSent;

  @override
  String toString() {
    return 'InvoiceFilters(sortType: $sortType, sortAscending: $sortAscending, timeFilter: $timeFilter, startDate: $startDate, endDate: $endDate, isPaid: $isPaid, isSent: $isSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceFiltersImpl &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.sortAscending, sortAscending) ||
                other.sortAscending == sortAscending) &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.isSent, isSent) || other.isSent == isSent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType, sortAscending,
      timeFilter, startDate, endDate, isPaid, isSent);

  /// Create a copy of InvoiceFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceFiltersImplCopyWith<_$InvoiceFiltersImpl> get copyWith =>
      __$$InvoiceFiltersImplCopyWithImpl<_$InvoiceFiltersImpl>(
          this, _$identity);
}

abstract class _InvoiceFilters implements InvoiceFilters {
  const factory _InvoiceFilters(
      {final InvoiceSortType sortType,
      final bool sortAscending,
      final InvoiceTimeFilter timeFilter,
      final DateTime? startDate,
      final DateTime? endDate,
      final bool? isPaid,
      final bool? isSent}) = _$InvoiceFiltersImpl;

  @override
  InvoiceSortType get sortType;
  @override
  bool get sortAscending;
  @override
  InvoiceTimeFilter get timeFilter;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  bool? get isPaid;
  @override
  bool? get isSent;

  /// Create a copy of InvoiceFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceFiltersImplCopyWith<_$InvoiceFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
