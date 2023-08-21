import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/services/weather_service.dart';

class Header extends StatefulWidget {
  Header(
      {super.key,
      required this.backgroundColor,
      required this.city_name,
      required this.description,
      required this.descriptionImg,
      required this.state_name,
      required this.temp});
  String city_name;
  String state_name;
  double temp;
  String descriptionImg;
  String description;
  Color backgroundColor;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  WeatherService weatheService = WeatherService();
  IconData clearIcon = Icons.clear;
  var _textFieldController = TextEditingController();
  bool _isLoading = false;
  bool notFound = false;

  loadingFunction() async {
    await weatheService.getWeatherData();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height / 3,
      title: Padding(padding: EdgeInsets.only(top: 25), child: Column(children: [
        _isLoading
      ],),),

    );
  }
}
