import 'package:flutter/material.dart';
import 'package:wordfind_app/widgets/gradient_text.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
                        GradientText(text: "Name", size: 24),
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
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/orange.png"),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/orange.png"),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/orange.png"),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/orange.png"),
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/orange.png"),
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(31)),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

}
