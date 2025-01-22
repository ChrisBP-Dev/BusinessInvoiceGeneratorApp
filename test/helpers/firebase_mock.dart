import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void setupFirebaseAuthMocks() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Mock para el canal binario de Pigeon
  const standardMethod = StandardMethodCodec();

  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMessageHandler(
    'dev.flutter.pigeon.FirebaseCoreHostApi.MethodChannelFirebaseCore',
    (ByteData? message) async {
      if (message == null) return null;

      final decoded = standardMethod.decodeMethodCall(message);
      final method = decoded.method;

      if (method == 'FirebaseCoreHostApi.initializeCore') {
        final response = <String, dynamic>{
          'result': [
            {
              'name': '[DEFAULT]',
              'options': {
                'apiKey': '123',
                'appId': '123',
                'messagingSenderId': '123',
                'projectId': '123',
              },
              'pluginConstants': {},
            }
          ],
        };
        return standardMethod.encodeSuccessEnvelope(response);
      }

      if (method == 'FirebaseCoreHostApi.initializeApp') {
        final response = <String, dynamic>{
          'result': {
            'name': '[DEFAULT]',
            'options': {
              'apiKey': '123',
              'appId': '123',
              'messagingSenderId': '123',
              'projectId': '123',
            },
            'pluginConstants': {},
          },
        };
        return standardMethod.encodeSuccessEnvelope(response);
      }

      return null;
    },
  );

  // Mock para el canal legacy
  TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
      .setMockMethodCallHandler(
    const MethodChannel('plugins.flutter.io/firebase_core'),
    (call) async {
      if (call.method == 'Firebase#initializeCore') {
        return [
          {
            'name': '[DEFAULT]',
            'options': {
              'apiKey': '123',
              'appId': '123',
              'messagingSenderId': '123',
              'projectId': '123',
            },
            'pluginConstants': {},
          }
        ];
      }
      return null;
    },
  );
}

Future<T> neverEndingFuture<T>() async {
  await Future<T>.delayed(const Duration(days: 1));
  throw StateError('Este futuro no debería completarse');
}
