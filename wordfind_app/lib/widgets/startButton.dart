import 'package:flutter/material.dart';
import 'package:wordfind_app/pages/game.dart';
import 'package:wordfind_app/pages/task_page.dart';

class StartButton extends StatelessWidget {
  // final newUser;
  // const StartButton(this.newUser);
  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: EdgeInsets.only(top: 28.0),
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
              // Navigator.push(context,
              //      MaterialPageRoute(builder: (context) => GamePage(),)
              // );
              Navigator.push(context, MaterialPageRoute(builder: (context) => TaskPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            ),
            child: const Text(
              "Start",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),


    );
  }

}