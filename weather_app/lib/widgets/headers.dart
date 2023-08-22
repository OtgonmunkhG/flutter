import 'package:flutter/material.dart';
import 'package:weather_app/icons/icons.dart';
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
      title: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          children: [
            _isLoading
                ? Image.network(
                    overcastDayIcon,
                    height: 50,
                  )
                : Container(
                    height: 50,
                    width: 700,
                    child: TextField(
                      controller: _textFieldController,
                      onSubmitted: (value) {
                        setState(() {
                          _isLoading = true;
                          city = value;
                          Future.delayed(Duration(seconds: 2), () {
                            loadingFunction();
                            _textFieldController.clear();
                          });
                        });
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search for cities",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(133, 255, 255, 255)),
                        filled: true,
                        fillColor: Color.fromARGB(18, 255, 255, 255),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _textFieldController.clear();
                            FocusScope.of(context).unfocus();
                          },
                          icon: Icon(clearIcon),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      ),
                    ),
                  ),
            // Text(widget.city_name, style: TextStyle(color: Colors.black, fontSize: 30),),
            SizedBox(
              height: 25,
            ),
            notFound
                ? Text("not Found")
                : Row(
                    children: [
                      Column(
                        children: [
                          Text(widget.city_name, style: TextStyle(color: Colors.red),),
                          SizedBox(
                            width: 200,
                            child: Text(
                              widget.temp.toString() + "℃",
                              style: const TextStyle(
                                  fontSize: 60, fontWeight: FontWeight.w200),
                            ),
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              widget.city_name,
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              widget.state_name,
                              style: TextStyle(fontWeight: FontWeight.w200),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: 120,
                          height: 150,
                          child: Column(
                            children: [
                              Image.network(
                                widget.descriptionImg.toString(),
                                fit: BoxFit.cover,
                              ),
                              Text(
                                widget.description,
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
