import 'package:business_invoice_generator_app/firebase_options.dart';
import 'package:business_invoice_generator_app/src/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO(you): Remember to have a firebase project
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  if (kIsWeb) {
    usePathUrlStrategy();
    // MetaSEO().config();
  }
  runApp(const ProviderScope(child: App()));
}
