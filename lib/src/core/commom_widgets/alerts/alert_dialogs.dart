import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

const kDialogDefaultKey = Key('dialog-default-key');

/// Muestra un diálogo de alerta genérico
Future<bool?> showAlertDialog({
  required BuildContext context,
  required String title,
  String? content,
  String? cancelActionText,
  String defaultActionText = 'OK',
}) async {
  return showDialog(
    context: context,
    // * Only make the dialog dismissible if there is a cancel button
    barrierDismissible: cancelActionText != null,
    // * AlertDialog.adaptive was added in Flutter 3.13
    builder: (context) => AlertDialog.adaptive(
      title: Text(title),
      content: content != null ? SelectableText(content) : null,
      // * Use [TextButton] or [CupertinoDialogAction] depending on the platform
      actions: kIsWeb || !Platform.isIOS
          ? <Widget>[
              if (cancelActionText != null)
                TextButton(
                  child: Text(cancelActionText),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              TextButton(
                key: kDialogDefaultKey,
                child: Text(defaultActionText),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ]
          : <Widget>[
              if (cancelActionText != null)
                CupertinoDialogAction(
                  child: Text(cancelActionText),
                  onPressed: () => Navigator.of(context).pop(false),
                ),
              CupertinoDialogAction(
                key: kDialogDefaultKey,
                child: Text(defaultActionText),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ],
    ),
  );
}

/// Muestra un diálogo de alerta para excepciones
Future<void> showExceptionAlertDialog({
  required BuildContext context,
  required String title,
  required dynamic exception,
}) {
  return showAlertDialog(
    context: context,
    title: title,
    content: exception.toString(),
  );
}

/// Muestra un diálogo de alerta para funcionalidades no implementadas
Future<void> showNotImplementedAlertDialog({required BuildContext context}) {
  return showExceptionAlertDialog(
    context: context,
    title: 'Not implemented',
    exception: 'Esta función aún no está implementada',
  );
}
