import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        floatingActionButton: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin:
            )
          ),
        ),
        body: Center(
          child: Text("Hello world"),
        ),
        appBar: AppBar(
          title: Text("Word Find Game", style: TextStyle(fontFamily: "Ribeye"),),
        ),
      ),
    );
  }
}
