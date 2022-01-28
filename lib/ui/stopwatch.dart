import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch>
    with SingleTickerProviderStateMixin {
  
  late final Ticker _ticker;
  Duration elapsed = Duration.zero;

  @override
  void initState() {
    super.initState();
    _ticker = this.createTicker((elapsed) {
      setState(() {
        elapsed = elapsed;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeText(
      elapsed: elapsed,
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
