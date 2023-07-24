import 'package:day_13/basic_screen.dart';
import 'package:day_13/exercise.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicScreen(),
      // home: Exercise(),
    );
  }

}
