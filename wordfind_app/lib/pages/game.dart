import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 5),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFFA9541),
        ),
        child: IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x4cfbb478),
              image: DecorationImage(
                image: AssetImage("assets/back2.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFFA9541)
                      ),
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_outlined),color: Colors.white, disabledColor: Colors.grey,),
                    ),
                    Image(
                      image: AssetImage("assets/IMG.png"),
                      width: 265,
                      height: 265,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
