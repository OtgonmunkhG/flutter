import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double size;
  GradientText({Key? key, required this.text, required this.size}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
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
