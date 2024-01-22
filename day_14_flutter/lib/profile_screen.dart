import 'package:day_14_flutter/star.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.network('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?q=80&w=2073&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            Transform.translate(offset: const Offset(0, 100),
              child: Column(
                children: [
                  _buildProfileImage(context),
                  _buildProfileDetails(context),
                  _buildActions(context),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          "assets/dog.jpg",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wolfram Barkovich",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          _buildDetailsRow("Age", "4"),
          StarRanking(value: 5),
          SizedBox(
            width: 135,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Star(color: Colors.deepPurple, size: 25),
                Star(color: Colors.deepPurpleAccent, size: 25),
                Star(color: Colors.deepOrangeAccent, size: 25),
                Star(color: Colors.deepOrangeAccent, size: 25),
                Star(color: Colors.blueAccent, size: 25),
              ],
            ),
          ),

          _buildDetailsRow("Status", "GoodBoy"),
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: [
        Text(
          "$heading",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "$value",
        )
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(Icons.restaurant, "Feed"),
        _buildIcon(Icons.favorite, "Pet"),
        _buildIcon(Icons.directions_walk, "Walk"),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          Text(text),
        ],
      ),
    );
  }
}
