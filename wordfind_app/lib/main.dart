import 'package:flutter/material.dart';
import 'package:wordfind_app/pages/welcome_page.dart';
import 'package:wordfind_app/pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Ribeye"),
      home: Scaffold(
        body: Center(
          child: WelcomePage(),
          // child: IntroductionPage(),
        ),
        // appBar: AppBar(
        //   title: Text(
        //     "Word Find Game",
        //     style: TextStyle(fontFamily: "Ribeye"),
        //   ),
        // ),
      ),
    );
  }
}
