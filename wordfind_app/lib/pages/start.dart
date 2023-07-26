import 'package:flutter/material.dart';
import 'package:wordfind_app/widgets/Gradient_letter.dart';
import 'package:hive/hive.dart';
import '../widgets/startButton.dart';

class IntroductionPage extends StatefulWidget {
  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override

  final _myBox = Hive.box("box");
  String name = "";
  final _textController = TextEditingController();
  bool isReady = false;


  void writeName() {
    _myBox.put("Name", name);
  }

  void start() {
    setState(() {
      isReady = true;
    });
  }

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
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0x4cfbb478),
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
                Padding(padding: EdgeInsets.all(50)),
                Image(image: AssetImage("assets/head.png")),
                Padding(padding: EdgeInsets.all(29.0)),
                const Text(
                  "Player name",
                  style: TextStyle(color: Color(0xFFFA9541), fontSize: 20),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                Container(
                  width: 310,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    color: Colors.white,
                  ),
                  child: TextField(
                    controller: _textController,
                    onChanged: (text) {
                      setState(() {
                        name = text;
                        writeName();
                      });
                    },
                    onSubmitted: (_) =>  start(),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: EdgeInsets.only(left: 25, right: 25),
                      border: InputBorder.none,
                      labelText: "Type here",
                      labelStyle: const TextStyle(
                        fontFamily: "Nunito",
                        color: Color(0xFFFA9541),
                        fontSize: 18,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear, color: Color(0xFFFA9541),),
                        onPressed: () {
                          _textController.clear();
                        },
                        // Icons.clear,
                        // color: Color(0xFFFA9541),
                        // size: 24,
                      ),
                    ),
                  ),
                ),
                if(isReady)
                  StartButton(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

