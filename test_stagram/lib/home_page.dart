import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16),
                  child: SvgPicture.asset(
                    "assets/ic_stagram.svg",
                    width: 107,
                    height: 32,
                    // alignment: Alignment.topRight,
                  ),
                ),
              ),
              // Padding(padding: EdgeInsets.all(3)),
              Row(
                children: [
                 Container(
                   width: 75,
                   height: 75,
                   // child:  IconButton(
                   //   onPressed: () {},
                   //   icon: Image.asset("assets/addstory.png"),
                   // ),
                   child: Text("Story section"),
                 ),
                ],
              ),
              Padding(padding: EdgeInsets.all(26.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Image(image: AssetImage("assets/profile_pic.png")),
                    Padding(padding: EdgeInsets.only(left:10 )),
                    Text("Төгөлдөр"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
