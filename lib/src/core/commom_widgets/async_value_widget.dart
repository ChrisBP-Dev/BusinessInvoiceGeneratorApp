import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({required this.value, required this.data, super.key});
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: value.when(
        data: data,
        error: (e, st) {
          return Center(child: SelectableText(e.toString()));
        },
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({
    required this.value,
    required this.data,
    super.key,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      loading: () => const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator.adaptive()),
      ),
      error: (e, st) {
        return SliverToBoxAdapter(
          child: Center(child: Text(e.toString())),
        );
      },
    );
  }
}
