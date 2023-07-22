import 'package:flutter/material.dart';
import 'package:wordfind_app/Gradient_letter.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/back1.png"),
          fit: BoxFit.contain,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(12.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter("W"),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("O"),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("R"),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("D"),
                ],
              ),
            ),
            Text(
              "GAME",
              style: TextStyle(
                fontFamily: "Ribeye",
                fontWeight: FontWeight.w200,
                fontSize: 25,
                color: Color(0xFFE48000),
              ),
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Image.asset("assets/icodeGuy.png"),
            Padding(padding: EdgeInsets.all(20.0)),
            Container(
              child: Text(
                "READY?",
                style: TextStyle(
                    color: Color(0xFFE48000),
                    fontFamily: "Ribeye",
                    fontSize: 25,
                    fontWeight: FontWeight.w200),
              ),
            )
          ],
        ),
      ),
    );
  }
}
