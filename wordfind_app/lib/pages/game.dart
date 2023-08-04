import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:wordfind_app/widgets/Gradient_letter.dart';
import 'package:wordfind_app/widgets/gradient_text.dart';
import 'package:wordfind_app/widgets/question.dart';
import 'package:wordfind_app/widgets/task_widget.dart';
import 'package:wordfind_app/widgets/task_widget.dart';

import '../models/task_model.dart';
import '../models/user_model.dart';

class GamePage extends StatefulWidget {

  const GamePage( {super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();
  late List<TaskModel> listQuestion;
  late User user;
  @override
  void initState() {
    listQuestion = question;
    // user = widget.user;
    super.initState();
  }

  final myBox = Hive.box("box");
  late String name = myBox.get("Name", defaultValue: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0x4cfbb478),
              image: DecorationImage(
                image: AssetImage("assets/back2.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.zero,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFFA9541),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            // color: Colors.white,
                          ),
                        ),
                        GradientText(text: "$name", size: 24),
                        Container(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset("assets/trophy.png"),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              GradientText(text: "0", size: 24)
                            ],
                          ),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        margin: EdgeInsets.all(3),
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/orange.png"),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 5),
                  child: GradientText(text: "1/10", size: 20),
                ),
                // Padding(padding: EdgeInsets.all(31)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFA9541)),
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_outlined),
                        color: Colors.white,
                        disabledColor: Colors.grey,
                      ),
                    ),
                    const Image(
                      image: AssetImage("assets/IMG.png"),
                      width: 265,
                      height: 265,
                    ),
                    Container(
                      margin: EdgeInsets.all(0),
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFFA9541)),
                      child: IconButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_outlined),
                        color: Colors.white,
                        disabledColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < 6; i++)
                          GradientLetter("", 43, 43, 20, 20, 11)
                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/hint.png"),
                          width: 16,
                          height: 16,
                        ),
                        Text(
                          "Hint",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: "Nunito",
                              color: Color(0xFFFA9541),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    )),
                Expanded(child: LayoutBuilder(
                  builder: (context , constraints)=> TaskWidget(constraints.biggest, listQuestion.map((question) => question.clone()).toList(), Key: globalKey),
                )),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: double.maxFinite,
                    height: 97,
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
