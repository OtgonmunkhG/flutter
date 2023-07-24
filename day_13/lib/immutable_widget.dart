import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 450,
          color: Colors.green,
          child: Center(
            child: Transform.rotate(
              angle:  3.14 /4.0,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.withAlpha(120),
                          spreadRadius: 4,
                          blurRadius: 15,
                          offset: Offset.fromDirection(1.0, 30)),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(50),
                  child: _buildShinyCircle() ,
                ),
              ),
            ),
          ),
          // child: Container(
          //   padding: EdgeInsets.all(20),
          //   child: Container(
          //     color: Colors.purple,
          //
          //     child: Padding(
          //       padding: EdgeInsets.all(10),
          //       child: Container(
          //         color: Colors.lightBlueAccent,
          //         // decoration: BoxDecoration(
          //         //   shape: BoxShape.circle,
          //         //   gradient: RadialGradient(
          //         //     colors: [Colors.lightBlueAccent, Colors.lightBlueAccent],
          //         //   ),
          //         // ),
          //       ),
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent],
            center: Alignment(-0.3, -0.5)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
          ),
        ],
      ),
    );
  }
}
