import 'package:flutter/material.dart';

class ForecastCard extends StatelessWidget {
  ForecastCard(
      {super.key,
      required this.description,
      required this.descriptionImg,
      required this.averageTemp,
      required this.hour});
  String hour;
  String description;
  String descriptionImg;
  double averageTemp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(18, 255, 255, 255)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hour,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: 70,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$averageTemp",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(139, 255, 255, 255),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
