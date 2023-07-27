import 'package:flutter/material.dart';
import 'package:test_stagram/wigets/home_page_scroll.dart';


class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:  Container(
          child: HomePageScrollWidget(),
        ),

    ),
    );
  }
}
