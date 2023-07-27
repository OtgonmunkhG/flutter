import 'package:flutter/material.dart';

class HomePageContents extends StatelessWidget {
  final countOfLike;
  final userName;
  final annotation;
  const HomePageContents(this.countOfLike, this.userName, this.annotation,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Padding(padding: EdgeInsets.all(26.0)),
            Container(
              width: 40,
              height: 40,
              // margin: EdgeInsets.only(left: 16),
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
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),

        Container(
          height: 375,
          width: double.infinity,
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: const AssetImage("assets/photo2.png"),
                fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          // margin: EdgeInsets.only(left: 16),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.favorite_outline),
                onPressed: () {},
                color: Colors.white,
              ),
              Text(
                "${countOfLike}",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, bottom: 5),
          child: Row(
            children: [
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                annotation,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
