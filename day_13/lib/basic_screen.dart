import 'package:day_13/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),

      ),

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(Icons.edit),
          ),
        ],
        title: Text("My flutter app"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlueAccent,
        child: Center(
          child: Text("I'm a drawer"),
        ),
      ),
    );
  }
}
