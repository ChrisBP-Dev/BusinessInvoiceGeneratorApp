import 'package:flutter/material.dart';

class ShaderTextEffect extends StatelessWidget {
  const ShaderTextEffect({
    required this.text,
    required this.gradient,
    super.key,
    this.style,
  });
  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style?.copyWith(
          color: Colors.white,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}

class ShaderTextSpan extends TextSpan {
  ShaderTextSpan({required this.shaderTextEffect})
      : super(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: shaderTextEffect,
            ),
          ],
        );
  final ShaderTextEffect shaderTextEffect;
}
