import 'package:business_invoice_generator_app/src/core/services/storage_service/storage_exceptions.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'storage_service.g.dart';

class StorageService {
  const StorageService(this._firebaseStorage);
  final FirebaseStorage _firebaseStorage;

  /// Method to upload a PDF to Firebase Storage
  Future<String> uploadPDF(Uint8List pdfBytes, String path) async {
    try {
      final ref = _firebaseStorage.ref().child(path);
      final uploadTask = await ref.putData(
        pdfBytes,
        SettableMetadata(contentType: 'application/pdf'),
      );
      return await uploadTask.ref.getDownloadURL();
    } on FirebaseException catch (e, st) {
      Error.throwWithStackTrace(
        StorageException('$e', StorageErrorType.uploadError),
        st,
      );
    }
  }

  /// Method to upload an image to Firebase Storage
  Future<String> uploadImage(Uint8List imageBytes, String path) async {
    try {
      final ref = _firebaseStorage.ref().child(path);
      final uploadTask = await ref.putData(
        imageBytes,
        SettableMetadata(contentType: 'image/webp'),
      );
      return await uploadTask.ref.getDownloadURL();
    } on FirebaseException catch (e, st) {
      Error.throwWithStackTrace(
        StorageException('$e', StorageErrorType.uploadError),
        st,
      );
    }
  }

  /// Method to delete an image from Firebase Storage
  Future<void> deleteImage(String path) async {
    try {
      final ref = _firebaseStorage.ref().child(path);
      await ref.delete();
    } on FirebaseException catch (e, st) {
      Error.throwWithStackTrace(
        StorageException('$e', StorageErrorType.deleteError),
        st,
      );
    }
  }

  /// Elimina un archivo de Firebase Storage
  Future<void> deleteFile(String path) async {
    final ref = _firebaseStorage.ref().child(path);
    await ref.delete();
  }
}

@riverpod
FirebaseStorage firebaseStorage(Ref ref) => FirebaseStorage.instance;

@riverpod
StorageService storageService(Ref ref) {
  return StorageService(ref.watch(firebaseStorageProvider));
}
