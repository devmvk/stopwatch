import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/clock_hand.dart';
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
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amberAccent),
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        ClockHand(
          height: radius,
          angleRadians: 0,
          width: 1,
          color: Colors.amberAccent,
        )
        // Transform(
        //   transform: Matrix4.skewX(2),
        //   child: Container(
        //     color: Colors.amberAccent,
        //   ),
        // ),
        // ElapsedTimeText(
        //   elapsed: elapsed,
        // ),
      ],
    );
  }
}
