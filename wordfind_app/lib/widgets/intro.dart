import 'package:flutter/material.dart';
import 'package:wordfind_app/widgets/Gradient_letter.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),

        ),
      ),
      backgroundColor: Color(0x4cfbb478),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/back2.png"),
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
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
              Text(
                "GAME",
                style: TextStyle(
                    fontFamily: "Ribeye",
                    fontSize: 14.4,
                    color: Color(0xFFE48000)),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
