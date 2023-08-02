import 'package:flutter/material.dart';

<<<<<<< HEAD
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: Container(
              child: Center(
                child: Column(
                  children: [

                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }


}


=======
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
        home: HomePage(),
      );
  }

}
>>>>>>> f58ac413544ce8edb6e410de1fd90749c88a6771
