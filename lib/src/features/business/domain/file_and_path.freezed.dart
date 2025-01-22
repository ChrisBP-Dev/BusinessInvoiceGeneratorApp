// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_and_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileAndPath _$FileAndPathFromJson(Map<String, dynamic> json) {
  return _FileAndPath.fromJson(json);
}

/// @nodoc
mixin _$FileAndPath {
  String? get url => throw _privateConstructorUsedError;
  String? get localFile => throw _privateConstructorUsedError;
  String? get refPath => throw _privateConstructorUsedError;

  /// Serializes this FileAndPath to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileAndPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileAndPathCopyWith<FileAndPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileAndPathCopyWith<$Res> {
  factory $FileAndPathCopyWith(
          FileAndPath value, $Res Function(FileAndPath) then) =
      _$FileAndPathCopyWithImpl<$Res, FileAndPath>;
  @useResult
  $Res call({String? url, String? localFile, String? refPath});
}

/// @nodoc
class _$FileAndPathCopyWithImpl<$Res, $Val extends FileAndPath>
    implements $FileAndPathCopyWith<$Res> {
  _$FileAndPathCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileAndPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? localFile = freezed,
    Object? refPath = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      localFile: freezed == localFile
          ? _value.localFile
          : localFile // ignore: cast_nullable_to_non_nullable
              as String?,
      refPath: freezed == refPath
          ? _value.refPath
          : refPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileAndPathImplCopyWith<$Res>
    implements $FileAndPathCopyWith<$Res> {
  factory _$$FileAndPathImplCopyWith(
          _$FileAndPathImpl value, $Res Function(_$FileAndPathImpl) then) =
      __$$FileAndPathImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? localFile, String? refPath});
}

/// @nodoc
class __$$FileAndPathImplCopyWithImpl<$Res>
    extends _$FileAndPathCopyWithImpl<$Res, _$FileAndPathImpl>
    implements _$$FileAndPathImplCopyWith<$Res> {
  __$$FileAndPathImplCopyWithImpl(
      _$FileAndPathImpl _value, $Res Function(_$FileAndPathImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileAndPath
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? localFile = freezed,
    Object? refPath = freezed,
  }) {
    return _then(_$FileAndPathImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      localFile: freezed == localFile
          ? _value.localFile
          : localFile // ignore: cast_nullable_to_non_nullable
              as String?,
      refPath: freezed == refPath
          ? _value.refPath
          : refPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileAndPathImpl extends _FileAndPath with DiagnosticableTreeMixin {
  const _$FileAndPathImpl({this.url, this.localFile, this.refPath}) : super._();

  factory _$FileAndPathImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileAndPathImplFromJson(json);

  @override
  final String? url;
  @override
  final String? localFile;
  @override
  final String? refPath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileAndPath(url: $url, localFile: $localFile, refPath: $refPath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileAndPath'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('localFile', localFile))
      ..add(DiagnosticsProperty('refPath', refPath));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileAndPathImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.localFile, localFile) ||
                other.localFile == localFile) &&
            (identical(other.refPath, refPath) || other.refPath == refPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, localFile, refPath);

  /// Create a copy of FileAndPath
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileAndPathImplCopyWith<_$FileAndPathImpl> get copyWith =>
      __$$FileAndPathImplCopyWithImpl<_$FileAndPathImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileAndPathImplToJson(
      this,
    );
  }
}

abstract class _FileAndPath extends FileAndPath {
  const factory _FileAndPath(
      {final String? url,
      final String? localFile,
      final String? refPath}) = _$FileAndPathImpl;
  const _FileAndPath._() : super._();

  factory _FileAndPath.fromJson(Map<String, dynamic> json) =
      _$FileAndPathImpl.fromJson;

  @override
  String? get url;
  @override
  String? get localFile;
  @override
  String? get refPath;

  /// Create a copy of FileAndPath
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileAndPathImplCopyWith<_$FileAndPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
