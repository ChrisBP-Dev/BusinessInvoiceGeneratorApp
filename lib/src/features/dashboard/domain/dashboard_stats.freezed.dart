// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardStats {
  int get totalCustomers => throw _privateConstructorUsedError;
  int get totalServices => throw _privateConstructorUsedError;
  int get totalInvoices => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStatsCopyWith<DashboardStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsCopyWith<$Res> {
  factory $DashboardStatsCopyWith(
          DashboardStats value, $Res Function(DashboardStats) then) =
      _$DashboardStatsCopyWithImpl<$Res, DashboardStats>;
  @useResult
  $Res call(
      {int totalCustomers,
      int totalServices,
      int totalInvoices,
      double totalAmount});
}

/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res, $Val extends DashboardStats>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCustomers = null,
    Object? totalServices = null,
    Object? totalInvoices = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      totalCustomers: null == totalCustomers
          ? _value.totalCustomers
          : totalCustomers // ignore: cast_nullable_to_non_nullable
              as int,
      totalServices: null == totalServices
          ? _value.totalServices
          : totalServices // ignore: cast_nullable_to_non_nullable
              as int,
      totalInvoices: null == totalInvoices
          ? _value.totalInvoices
          : totalInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStatsImplCopyWith<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  factory _$$DashboardStatsImplCopyWith(_$DashboardStatsImpl value,
          $Res Function(_$DashboardStatsImpl) then) =
      __$$DashboardStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalCustomers,
      int totalServices,
      int totalInvoices,
      double totalAmount});
}

/// @nodoc
class __$$DashboardStatsImplCopyWithImpl<$Res>
    extends _$DashboardStatsCopyWithImpl<$Res, _$DashboardStatsImpl>
    implements _$$DashboardStatsImplCopyWith<$Res> {
  __$$DashboardStatsImplCopyWithImpl(
      _$DashboardStatsImpl _value, $Res Function(_$DashboardStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCustomers = null,
    Object? totalServices = null,
    Object? totalInvoices = null,
    Object? totalAmount = null,
  }) {
    return _then(_$DashboardStatsImpl(
      totalCustomers: null == totalCustomers
          ? _value.totalCustomers
          : totalCustomers // ignore: cast_nullable_to_non_nullable
              as int,
      totalServices: null == totalServices
          ? _value.totalServices
          : totalServices // ignore: cast_nullable_to_non_nullable
              as int,
      totalInvoices: null == totalInvoices
          ? _value.totalInvoices
          : totalInvoices // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$DashboardStatsImpl implements _DashboardStats {
  const _$DashboardStatsImpl(
      {this.totalCustomers = 0,
      this.totalServices = 0,
      this.totalInvoices = 0,
      this.totalAmount = 0.0});

  @override
  @JsonKey()
  final int totalCustomers;
  @override
  @JsonKey()
  final int totalServices;
  @override
  @JsonKey()
  final int totalInvoices;
  @override
  @JsonKey()
  final double totalAmount;

  @override
  String toString() {
    return 'DashboardStats(totalCustomers: $totalCustomers, totalServices: $totalServices, totalInvoices: $totalInvoices, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsImpl &&
            (identical(other.totalCustomers, totalCustomers) ||
                other.totalCustomers == totalCustomers) &&
            (identical(other.totalServices, totalServices) ||
                other.totalServices == totalServices) &&
            (identical(other.totalInvoices, totalInvoices) ||
                other.totalInvoices == totalInvoices) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalCustomers, totalServices, totalInvoices, totalAmount);

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      __$$DashboardStatsImplCopyWithImpl<_$DashboardStatsImpl>(
          this, _$identity);
}

abstract class _DashboardStats implements DashboardStats {
  const factory _DashboardStats(
      {final int totalCustomers,
      final int totalServices,
      final int totalInvoices,
      final double totalAmount}) = _$DashboardStatsImpl;

  @override
  int get totalCustomers;
  @override
  int get totalServices;
  @override
  int get totalInvoices;
  @override
  double get totalAmount;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
