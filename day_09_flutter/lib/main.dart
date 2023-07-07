import 'package:flutter/material.dart';

void main() {
  print("Hello Flutter");
  runApp(
   const  MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Center(
         child: Text("data"),
       ),
     ),

   ));
}

