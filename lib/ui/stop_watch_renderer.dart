import 'package:flutter/material.dart';
import 'package:stopwatch_flutter/ui/elapsed_time_text.dart';

class StopWatchRenderer extends StatelessWidget {
  final Duration elapsed;
  const StopWatchRenderer({
    Key? key,
    required this.elapsed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amberAccent),
            shape: BoxShape.circle
          ),
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
