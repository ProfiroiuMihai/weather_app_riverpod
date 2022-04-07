import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app_test/src/widgets/text_widget.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key, required this.dateTime}) : super(key: key);
  final DateTime dateTime;

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

Timer? _timer;
late Duration _duration;

class _TimerWidgetState extends State<TimerWidget> {
  @override
  void initState() {
    super.initState();
    _duration = getDurationInSeconds();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    _duration = getDurationInSeconds();
    return AppTextWidget(formatDuration(_duration));
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (mounted) {
        setState(() {
          // _duration = getDurationInSeconds();
        });
      }
    });
  }

  Duration getDurationInSeconds() {
    return (DateTime.now().difference(widget.dateTime));
  }

  String formatDuration(Duration duration) {
    return "${_duration.inHours}:${_duration.inMinutes.remainder(60)}:${(_duration.inSeconds.remainder(60))}";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
