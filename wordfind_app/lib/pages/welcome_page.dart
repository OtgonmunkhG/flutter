import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:wordfind_app/pages/start.dart';
import 'package:wordfind_app/widgets/Gradient_letter.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 40.0),
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  IntroductionPage(),)
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: const Text(
            "PLAY",
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      // backgroundColor: Color(0x4cfbb478),
      body: Container(

        decoration: const BoxDecoration(
            color: Color(0x4cfbb478),
            image: DecorationImage(
          image: AssetImage("assets/back1.png"),
          fit: BoxFit.contain,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(12.0),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GradientLetter("W", 60, 60, 38, 38, 16),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("O", 60, 60, 38, 38, 16),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("R", 60, 60, 38, 38, 16),
                  Padding(padding: EdgeInsets.all(10.0)),
                  GradientLetter("D", 60, 60, 38, 38, 16),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


