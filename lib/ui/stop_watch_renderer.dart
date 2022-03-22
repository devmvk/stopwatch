import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/clock_hand.dart';
import 'package:stopwatch_flutter/ui/clock_seconds_tick.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text.dart';

class StopWatchRenderer extends StatelessWidget {
  final Duration elapsed;
  final double radius;
  const StopWatchRenderer({
    Key? key,
    required this.elapsed,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...List<Widget>.generate(
          60,
          (index) => Positioned(
            left: radius,
            top: radius,
            child: ClockSecondsTicker(
              height: 15,
              width: 1,
              seconds: index,
            ),
          ),
        ),
        Positioned(
          top: radius,
          right: radius,
          child: ClockHand(
            height: radius,
            angleRadians: pi + ((elapsed.inMilliseconds) * (pi / 30000)),
            width: 1,
            color: Colors.amberAccent,
          ),
        ),
        Positioned(
          left: radius * 0.75,
          top: radius * 1.4,
          child: ElapsedTimeText(
            elapsed: elapsed,
          ),
        )
      ],
    );
  }
}
