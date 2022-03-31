import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stopwatch_flutter/ui/stop_watch_renderer.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  Duration _elapsed = Duration.zero;
  late StreamController<Duration> _elapsedTimeStreamController;

  @override
  void initState() {
    super.initState();
    _elapsedTimeStreamController = StreamController.broadcast();
    _ticker = this.createTicker(_elapsedTimeListener);
    _ticker.start();
  }

  _elapsedTimeListener(Duration elapsedTime) {
    _elapsedTimeStreamController.sink.add(elapsedTime);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return StreamBuilder<Duration>(
          stream: _elapsedTimeStreamController.stream,
          initialData: Duration(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return StopWatchRenderer(
                elapsed: snapshot.data!,
                radius: constraints.maxWidth / 2,
              );
            }
            return IgnorePointer();
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    _elapsedTimeStreamController.sink.close();
    super.dispose();
  }
}
