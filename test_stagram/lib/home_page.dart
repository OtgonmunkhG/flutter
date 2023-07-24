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
              Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: SvgPicture.asset(
                  "assets/ic_stagram.svg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
