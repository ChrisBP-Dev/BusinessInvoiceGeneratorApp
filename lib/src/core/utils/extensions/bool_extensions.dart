import 'package:flutter/material.dart';

extension BoolX on bool {
  Color get toColor => this ? Colors.green : Colors.red;
  IconData get toIcon => this ? Icons.check : Icons.close;
  String get toText => this ? 'Yes' : 'No';
}

extension DeclarativeBool on bool {
  /// Executes the [isTrue] function if the boolean value is true,
  /// or the [isFalse] function if the boolean value is false.
  ///
  /// Returns the result of the executed function.
  ///
  /// Example:
  /// ```dart
  /// bool value = true;
  /// String result = value.when(
  ///   isTrue: () => 'It is true',
  ///   isFalse: () => 'It is false',
  /// );
  /// ```
  W when<W>({
    required W Function() isTrue,
    required W Function() isFalse,
  }) =>
      this ? isTrue() : isFalse();

  /// Executes the [isTrue] function if the boolean value is true,
  /// or the [isFalse] function if the boolean value is false.
  ///
  /// Returns the result of the executed function or `null` if [isTrue] and - or
  /// [isFalse] are not provided.
  ///
  /// Example:
  /// ```dart
  /// bool value = false;
  /// String? result = value.whenOrNull(
  ///   isTrue: () => 'It is true',
  ///   // isFalse is not provided
  /// );
  /// print(anotherResult); // Outputs: null
  /// ```
  W? whenOrNull<W>({
    W? Function()? isTrue,
    W? Function()? isFalse,
  }) =>
      this ? isTrue?.call() : isFalse?.call();
}
