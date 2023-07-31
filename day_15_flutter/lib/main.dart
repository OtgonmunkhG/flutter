import 'package:day_15_flutter/flex_screen.dart';
import 'package:flutter/material.dart';
import 'package:day_15_flutter/stop_watch.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(body: StopWatchApp()),
  ));
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StopWatch();
  }
}
