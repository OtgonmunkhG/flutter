
import 'package:flutter/material.dart';
import 'package:test_stagram/wigets/home_page_contents.dart';
import 'package:test_stagram/wigets/home_page_scroll.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body:
          CustomScrollView(
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
              SliverPersistentHeader(
                  pinned: false, delegate: SliverHeaderDelegateComponent(80)),
              SliverList(
                  delegate: SliverChildListDelegate([
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
              ]))
            ],
          ),
        ),

    );
  }

  Widget buildPost() => Container(
        child: HomePageContents(23, "Othoo", "Hello world"),
      );
}

class SliverHeaderDelegateComponent extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const SliverHeaderDelegateComponent(this.expandedHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 100.0,
      color: Colors.amber,
      child: Text("Hello"),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}

// SliverToBoxAdapter(
//   child: Column(
//     children: [
//       ListView.separated(
//         scrollDirection: Axis.vertical,
//         shrinkWrap: true,
//         physics: ScrollPhysics(),
//         padding: EdgeInsets.all(12),
//         itemCount: 10,
//         separatorBuilder: (context, index) {
//           return const SizedBox(
//             height: 2,
//           );
//         },
//         itemBuilder: (context, index) {
//           return buildPost();
//         },
//       ),
//     ],
//   ),
// ),
