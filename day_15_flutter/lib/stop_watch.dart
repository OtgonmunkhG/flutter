import 'package:flutter/material.dart';
import 'dart:async';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int secons = 0;
  late Timer timer;
  bool _isTicking = true;
  // @override
  // void initState() {
  //   timer = Timer.periodic(Duration(seconds: 1), _onTick);
  //   super.initState();
  // }

  void _onTick(Timer timer) {
    setState(() {
      secons++;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stopwatch"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$secons seconds",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: _isTicking ? _startTimer : null,
                child: const Text(
                  "Start",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all((Colors.white))),
                  onPressed: _isTicking ? null  :  _stopTimer,
                  child: const Text(
                    "Stop",
                    style: const TextStyle(color: Colors.white),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
