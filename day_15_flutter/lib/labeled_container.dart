import 'package:flutter/material.dart';

class LabeledContainer extends StatelessWidget {
  double? width;
  double? height;
  final String text;
  final Color color;
  Color? textColor;
  LabeledContainer(
      {Key? key,
      this.height = double.infinity,
       this.width,
      required this.color,
      this.textColor,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(text, style: TextStyle(
          color: textColor,
          fontSize: 20
        ),),
      ),


    );
  }
}
