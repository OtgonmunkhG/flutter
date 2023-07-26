import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Stagram home page",
        theme: ThemeData(),
        home: HomePage(23, "joshua_l", "Hava a nice day"),
      );
  }

}