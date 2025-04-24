import 'dart:async';
import 'package:flutter/material.dart';

class TicketTimer extends StatefulWidget {
  const TicketTimer({super.key});

  @override
  State<TicketTimer> createState() => _TicketTimerState();
}

class _TicketTimerState extends State<TicketTimer> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  int _second = 0;
  Timer? _timer;
  bool _isRunning = false;

  String formatTime(int seconds){
    int hours = seconds ~/3600;
    int minutes =(seconds % 3600) ~/60;
    int secs = seconds % 60;
    return '${hours.toString().padLeft(2,'0')}:${minutes.toString().padLeft(2,'0')}:${secs.toString().padLeft(2,'0')}';
  }


  void _startTimer(){
    if(_timer != null) _timer!.cancel();
    setState(() {
      _second = 7200;
      _isRunning = true;
    });
    _timer = Timer.periodic(const Duration(seconds: 1),(_timer){
      if(_second > 0){
        setState(() => _second--);
      } else {
        setState(() => _isRunning = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(formatTime(_second),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}
