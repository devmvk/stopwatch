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
    return ElapsedTimeText(
      elapsed: elapsed,
    );
  }
}
