import 'package:flutter/material.dart';

class InformationsCard extends StatelessWidget {
  InformationsCard(
      {super.key,
      required this.wind,
      required this.uvIndex,
      required this.humidity});
  int humidity;
  double wind;
  double uvIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 100,
          height: 150,
          color: Color.fromARGB(18, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(
                  color: Color.fromARGB(30, 255, 255, 255),
                ))),
                width: 110,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.pexels.com/photo/top-view-of-a-woman-playing-the-piano-17480199",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Humidity",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$humidity",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(139, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            color: Color.fromARGB(30, 255, 255, 255)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.pexels.com/photo/digital-camera-mounted-in-a-tripod-14111067",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "UV",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(139, 255, 255, 255)),
                    )
                  ],
                ),
              ),
              Container(
                width: 110,
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.pexels.com/photo/sea-black-and-white-dawn-landscape-17118488",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Wind",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "$wind km / h",
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(139, 255, 255, 255)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
