import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: _buildShinyCircle(),
    );
  }

  Widget _buildShinyCircle() {
    return  Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
            center: Alignment(-0.3, -0.5)
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}
