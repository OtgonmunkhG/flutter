import 'package:flutter/material.dart';
import 'package:test_stagram/wigets/home_page_contents.dart';

class HomePageScrollWidget extends StatelessWidget {
  const HomePageScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: Colors.black,
            expandedHeight: 40,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 10),
              title: Text(
                "iCodegram",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    fontFamily: "Lobster"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  padding: EdgeInsets.all(12),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return buildPost();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPost() => Container(
        child: HomePageContents(23, "Othoo", "Hello world"),
      );
}
