import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:wordfind_app/pages/welcome_page.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox("box");

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
