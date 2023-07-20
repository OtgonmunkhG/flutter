import 'package:flutter/material.dart';

void main() {
  const Text myText = Text(
    "Hello storm",
    style: TextStyle(
      color: Colors.lightBlueAccent,
    ),
  );
  const Center myCenterText = Center(
    child: myText,
  );
  const Scaffold myScaffold = Scaffold(
    body: myText,
  );
  const MaterialApp myApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myCenterText,
  );

  const MyCrazyApp crazeApp = MyCrazyApp();
  runApp(crazeApp);
}

class MyCrazyApp extends StatelessWidget {
  const MyCrazyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Text(
            "Hello storm",
            style: TextStyle(color: Color(0xB58AFFFF), fontSize: 24, fontFamily: "assets/fonts/Ribeye-Regular.ttf"),
          ),
        ),
        appBar: AppBar(
          title: Text("Hello Stormers"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: printHello,
          child: Image.asset("assets/thumb.png",
            width: 90,
          ),

        ),
      ),
    );
  }
}


void printHello() {
  print("Hello storm");
}