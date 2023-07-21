import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText({required String text, required double size}) {}
  final String text = "";
  final double size = 12.3;
  @override
  Widget build(BuildContext context) {
    return Text(
      "data",
      style: TextStyle(
        fontSize: 24,
        foreground: Paint()
          ..shader = LinearGradient(
                  colors: const [Color(0xFFE86B02), Color(0xFFFA9541)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0661, 0.761],
                  transform: const GradientRotation(88.82))
              .createShader(
            const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
          ),
      ),
    );
  }
}
