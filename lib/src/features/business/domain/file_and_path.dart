import 'package:business_invoice_generator_app/src/core/utils/extensions/string_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'file_and_path.freezed.dart';
part 'file_and_path.g.dart';

@freezed
class FileAndPath with _$FileAndPath {
  const factory FileAndPath({
    String? url,
    String? localFile,
    String? refPath,
  }) = _FileAndPath;
  const FileAndPath._();

  factory FileAndPath.fromJson(Map<String, dynamic> json) =>
      _$FileAndPathFromJson(json);
}

extension ImageAndPathX on FileAndPath {
  bool get hasRefPath => refPath.isNotNullAndNotEmpty;

  bool get hasLocalFile => localFile.isNotNullAndNotEmpty;
  bool get hasUrl => url.isNotNullAndNotEmpty;
  // bool get needsToDelete => !hasLocalFile && hasRefPath;
  // bool get needsToUpdate => hasLocalFile || hasRefPath;
  bool get isEmpty => url.isNullOrEmpty && localFile.isNullOrEmpty;

  Uint8List? get localFileCharCode => hasLocalFile ? localFile!.charCode : null;
}
