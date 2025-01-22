import 'package:business_invoice_generator_app/src/routing/transition_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Helper class for common route operations
class RouteHelper {
  /// Creates a standard [GoRoute] with transition page
  static GoRoute createRoute({
    required String path,
    required String name,
    required Widget page,
    List<GoRoute> routes = const [],
  }) {
    return GoRoute(
      path: path,
      name: name,
      routes: routes,
      pageBuilder: (context, state) => transitionPage(
        state: state,
        page: page,
      ),
    );
  }

  /// Creates a shell route with custom container
  static ShellRoute createShellRoute({
    required GlobalKey<NavigatorState> navigatorKey,
    required Widget Function(Widget) pageBuilder,
    required List<GoRoute> routes,
  }) {
    return ShellRoute(
      navigatorKey: navigatorKey,
      pageBuilder: (context, state, child) => transitionPage(
        state: state,
        page: pageBuilder(child),
      ),
      routes: routes,
    );
  }
}
