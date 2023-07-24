import 'package:flutter/material.dart';
import 'package:wordfind_app/widgets/Gradient_letter.dart';
import 'package:flutter/src/rendering/box.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFFA9541),
        ),
        child: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0x4cfbb478),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/back2.png"),
            )),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter("W", 22, 22, 14.4, 45, 6),
                    Padding(padding: EdgeInsets.all(3.8)),
                    GradientLetter("O", 22, 22, 14.4, 45, 6),
                    Padding(padding: EdgeInsets.all(3.8)),
                    GradientLetter("R", 22, 22, 14.4, 45, 6),
                    Padding(padding: EdgeInsets.all(3.8)),
                    GradientLetter("D", 22, 22, 14.4, 45, 6),
                    Padding(padding: EdgeInsets.all(3.8)),
                  ],
                ),
                const Text(
                  "GAME",
                  style: TextStyle(
                      fontFamily: "Ribeye",
                      fontSize: 14.4,
                      color: Color(0xFFE48000)),
                ),
                Image(image: AssetImage("assets/head.png")),
                Padding(padding: EdgeInsets.all(29.0)),
                const Text(
                  "Player name",
                  style: TextStyle(color: Color(0xFFFA9541), fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                ColoredBox(
                  color: Colors.white,
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
                          ),
                        ),
                        labelText: "Type here",
                        labelStyle: const TextStyle(
                          fontFamily: "Nunito",
                          color: Color(0xFFFA9541),
                          fontSize: 18,
                        ),
                        icon: const Icon(
                          Icons.clear,
                          color: Color(0xFFFA9541),
                          size: 24,
                        ),
                      ),
                    ),
                  ),
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
