import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText({required String text, required double size}) {

  }
  final String text = "";
  final double size = 12.3;
  @override
  Widget build(BuildContext context) {
    return Text("data", style: TextStyle(fontSize: 24, foreground: Paint()..shader));
  }

}