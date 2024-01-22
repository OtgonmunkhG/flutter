import 'package:day_17_flutter_navigation/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: MainPage(),));
}


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PageOne()));
          },
          child: Icon(Icons.arrow_forward, ),

        ),

      ),
      body: Text("Home page"),
    );
  }
}
