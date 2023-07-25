import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  final countOfLike;
  final userName;
  final annotation;
  HomePage(this.countOfLike, this.userName, this.annotation, {super.key});

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
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.only(left: 16),
                    child: CircleAvatar(
                      radius: 48,
                      backgroundColor: Color(0xFFFA9541),
                      child: Padding(
                        padding: EdgeInsets.all(2),
                        child: ClipOval(
                          child: Image.asset("assets/profile_img.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    child: Text(
                      "Төгөлдөр",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),

              Container(
                height: 375,
                margin: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/photo2.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_outline),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                    Text(
                      "${countOfLike}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 5),
                child: Row(
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      annotation,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
