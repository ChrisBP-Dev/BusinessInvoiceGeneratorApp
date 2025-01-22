import 'package:business_invoice_generator_app/src/core/utils/theme/app_theme_provider.dart';
import 'package:business_invoice_generator_app/src/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    final theme = ref.watch(appThemeProvider);

    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => 'Business Invoice Generator',
      theme: theme,
      themeMode: ThemeMode.dark,
    );
  }
}
