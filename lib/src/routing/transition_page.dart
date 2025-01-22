import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<void> transitionPage({
  required GoRouterState state,
  required Widget page,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: page,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}
