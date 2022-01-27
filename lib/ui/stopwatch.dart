import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text_basic.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  late DateTime _initialTime;
  Duration elapsed = Duration.zero;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _initialTime = DateTime.now();
    _timer = Timer.periodic(
      Duration(milliseconds: 50),
      (timer) {
        final now = DateTime.now();
        setState(() {
          elapsed = now.difference(_initialTime);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeTextBasic(
      elapsed: elapsed,
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
