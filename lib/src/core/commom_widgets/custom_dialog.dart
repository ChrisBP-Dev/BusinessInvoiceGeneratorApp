import 'package:flutter/material.dart';

/// A custom dialog widget that can be used to display messages to the user
class CustomDialog extends StatelessWidget {
  const CustomDialog._({
    required this.title,
    required this.message,
    required this.onPressed,
    required this.buttonText,
    required this.icon,
    required this.color,
  });

  /// Creates an error dialog
  factory CustomDialog.error({
    required String title,
    required String message,
    required VoidCallback onPressed,
    String buttonText = 'OK',
  }) {
    return CustomDialog._(
      title: title,
      message: message,
      onPressed: onPressed,
      buttonText: buttonText,
      icon: Icons.error_outline,
      color: Colors.red,
    );
  }

  /// Creates a success dialog
  factory CustomDialog.success({
    required String title,
    required String message,
    required VoidCallback onPressed,
    String buttonText = 'OK',
  }) {
    return CustomDialog._(
      title: title,
      message: message,
      onPressed: onPressed,
      buttonText: buttonText,
      icon: Icons.check_circle_outline,
      color: Colors.green,
    );
  }

  /// Creates a warning dialog
  factory CustomDialog.warning({
    required String title,
    required String message,
    required VoidCallback onPressed,
    String buttonText = 'OK',
  }) {
    return CustomDialog._(
      title: title,
      message: message,
      onPressed: onPressed,
      buttonText: buttonText,
      icon: Icons.warning_amber_outlined,
      color: Colors.orange,
    );
  }

  /// The title of the dialog
  final String title;

  /// The message to display
  final String message;

  /// Callback when the button is pressed
  final VoidCallback onPressed;

  /// The text to display on the button
  final String buttonText;

  /// The icon to display
  final IconData icon;

  /// The color of the icon and button
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 8),
          Text(title),
        ],
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(foregroundColor: color),
          child: Text(buttonText),
        ),
      ],
    );
  }
}
