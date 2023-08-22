import 'package:flutter/material.dart';
import '../screens/add_post.dart';
import '../screens/add_story.dart';
import '../screens/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: navigationTapped,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: "",
              icon: Icon(
            Icons.home,
            color: _page == 0 ? Colors.blue : Colors.black,
          )),

          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.add_box_outlined,
                color: _page == 1 ? Colors.blue : Colors.black,
              )),

          BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.account_circle,
                color: _page == 2 ? Colors.blue : Colors.black,
              )),
        ],
      ),
      body: SafeArea(
        child: PageView(
          onPageChanged: onPageChange,
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }
}
