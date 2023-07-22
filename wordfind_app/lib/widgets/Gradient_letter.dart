import 'package:flutter/material.dart';

class GradientLetter extends StatelessWidget {
  final String letter;
  final double sizeOfHeight;
  final double sizeOfWidth;
  final double fontSize;
  final double fontHeight;
  final double raduisOfBorder;
  const GradientLetter(
      this.letter,
      this.sizeOfHeight,
      this.sizeOfWidth,
      this.fontSize,
      this.fontHeight,
      this.raduisOfBorder,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeOfWidth,
      height: sizeOfHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(raduisOfBorder),
          color: const Color(0xFFFF9002)),
      child: Container(
        child: FractionallySizedBox(
          widthFactor: 2 / 3,
          heightFactor: 2 / 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [-0.025, 1.6875],
                transform: GradientRotation(180),
              ),
            ),
            child: Center(
              child: Text(
                letter,
                style: TextStyle(
                    fontSize: fontSize,
                    height: 50 / fontHeight,
                    color: Colors.white,
                    fontFamily: "Ribeye"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
