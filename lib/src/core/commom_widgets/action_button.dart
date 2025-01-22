import 'package:business_invoice_generator_app/src/core/consts/app_sizes.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/app_color_extension.dart';
import 'package:business_invoice_generator_app/src/core/utils/theme/theme_extension.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  const ActionButton({
    required this.text,
    required this.onTap,
    this.color,
    this.secondaryColor,
    this.isLoading = false,
    super.key,
  });
  final String text;
  final VoidCallback? onTap;
  final Color? color;
  final Color? secondaryColor;
  final bool isLoading;

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scale = Tween<double>(
      begin: 1,
      end: 0.95,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius(),
      onTap: () {
        _controller.forward().then((_) => _controller.reverse());
        widget.onTap?.call();
      },
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _borderRadius(),
            border: Border.all(
              width: 0.5,
              color: widget.secondaryColor ?? Colors.black,
            ),
            gradient: widget.secondaryColor == null
                ? widget.color.getLinearGradient
                : null,
            boxShadow: [
              if (widget.secondaryColor == null)
                BoxShadow(
                  color: context.theme.colorScheme.shadow.withValues(alpha: .3),
                  blurRadius: Sizes.p8,
                  offset: const Offset(0, 5),
                ),
            ],
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p8,
            vertical: Sizes.p8,
          ),
          child: Center(
            child: widget.isLoading
                ? const CircularProgressIndicator.adaptive()
                : Text(
                    widget.text,
                    style: context.bodySmall?.copyWith(
                      color: widget.secondaryColor ?? Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  BorderRadius _borderRadius() =>
      const BorderRadius.all(Radius.circular(Sizes.p8));
}
