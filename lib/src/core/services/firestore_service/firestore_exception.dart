import 'package:cloud_firestore/cloud_firestore.dart';

/// Enum representing different types of Firestore errors
enum FirestoreErrorType {
  /// Error when reading data
  readError,

  /// Error when adding data
  addError,

  /// Error when updating data
  updateError,

  /// Error when deleting data
  deleteError,

  /// Error when data is invalid
  invalidData,

  /// Unknown error
  unknown,
}

/// Exception thrown when a Firestore operation fails
class FirestoreException implements Exception {
  /// Constructor
  FirestoreException({
    required this.message,
    required this.errorType,
    required this.stackTrace,
  });

  /// Factory constructor to create a FirestoreException from a FirebaseException
  factory FirestoreException.fromFirebaseException(
    FirebaseException exception,
    StackTrace stackTrace,
  ) {
    return FirestoreException(
      message: exception.message ?? 'Unknown error',
      errorType: _mapFirebaseErrorToFirestoreError(exception.code),
      stackTrace: stackTrace,
    );
  }

  /// Error message
  final String message;

  /// Type of error
  final FirestoreErrorType errorType;

  /// Stack trace
  final StackTrace stackTrace;

  @override
  String toString() => 'FirestoreException: $message';

  /// Maps Firebase error codes to FirestoreErrorType
  static FirestoreErrorType _mapFirebaseErrorToFirestoreError(String code) {
    switch (code) {
      case 'permission-denied':
      case 'not-found':
      case 'unavailable':
        return FirestoreErrorType.readError;
      case 'already-exists':
        return FirestoreErrorType.addError;
      case 'invalid-argument':
        return FirestoreErrorType.invalidData;
      default:
        return FirestoreErrorType.unknown;
    }
  }
}
