/// Types of errors that can occur in the storage service.
enum StorageErrorType {
  uploadError,
  deleteError,
}

/// Exception thrown by the storage service.
class StorageException implements Exception {
  const StorageException(this.message, this.errorType);

  final String message;
  final StorageErrorType errorType;

  @override
  String toString() => 'StorageException [$errorType]:/\n$message';
}
