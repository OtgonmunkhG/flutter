import 'dart:convert';
import 'package:weather_app/models/weather_api.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<Weather> getWeatherData() async {
    final uri = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=6ef53a8fe53b423eaa075458231408&q=$city&aqi=no');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed");
    }
  }
}

String city = "Mongolia";
