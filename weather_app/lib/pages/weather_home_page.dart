import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/loading/loading_page.dart';
import 'package:weather_app/models/weather_api.dart';
import 'package:weather_app/services/weather_service.dart';

import '../colors/colors.dart';
import '../icons/icons.dart';



class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  bool _isLoading = false;
  WeatherService weatherService = WeatherService();
  Weather weather = Weather();
  String image = "";
  Color defaultColor = Colors.black;
  int hour = 0;
  bool isDay = false;
  bool isNight = false;
  String icon = "";

  Future getWeather() async {
    weather = await weatherService.getWeatherData();
    setState(() {

      getWeather();
      _isLoading = false;
    });
  }

  void setday() async {
    List datetime = weather.date.split(" ");
    var hours = datetime[1].split(":");
    var turnInt = int.parse(hours[0]);
    if(turnInt >= 19 || turnInt <= 5) {
      print("turnInt");
      setState(() {
        isNight = true;
        defaultColor = nightappbarcolor;
      });
    }
    if(turnInt > 5 && turnInt < 19) {
      setState(() {
        isNight = false;
        isDay = true;
        defaultColor = dayappbarcolor;
      });
    }

    void day() async {
      setState(() {
        defaultColor = dayappbarcolor;
      });
      if(weather.text == "Sunny") {
        setState(() {
          loadingIcon = sunnyIcon;
        });
      }
      if(weather.text == "Partly cloud") {
        setState(() {
          loadingIcon = partlyCloudIcon;
        });
        if(weather.text == "Overcast") {
          setState(() {
            loadingIcon = overcastDayIcon;
          });
        }
      }
    }

    void night() async{
      setState(() {
        defaultColor = nightappbarcolor;
      });
      if(weather.text == "Partly Cloud") {
        setState(() {
          loadingIcon = partlyCloudNightIcon;
        });
      }
      if(weather.text == "Clear") {
        setState(() {
          loadingIcon = sunnyIcon;
        });
      }

    }

    void getHours() {
      List datetime = weather.date.split(" ");
      var hours = datetime[1].split(":");
      var turnInt = int.parse(hours[0]);
      setState(() {
        hours = turnInt;
      });
    }

    @override
    void initState() {
      getWeather();
      Timer.periodic(Duration (seconds: 2), (timer) { setday();});
      Timer.periodic(Duration(seconds: 2), (timer) { isDay ? day() : night();});
      Timer.periodic(Duration(seconds: 3), (timer) {getHours(); });
      Future.delayed(Duration(seconds: 2), ()async {
        await weatherService.getWeatherData;
        setState(() {
          _isLoading = false;
        });
      } );
      super.initState();
    }

  }




  @override
  Widget build(BuildContext context) {
    return _isLoading ? LoadingPage() : Scaffold(

    );
  }
}
