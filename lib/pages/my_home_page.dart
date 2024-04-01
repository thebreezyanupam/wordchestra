import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 070),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isPlaying ? Colors.green : Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isPlaying = !isPlaying;
              if (isPlaying) {
                _controller.forward();
                // Navigate to game page
                Navigator.pushNamed(context, '/gamepage');
              } else {
                _controller.reverse();
              }
            });
          },
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Icon(
                isPlaying ? Icons.pause_circle : Icons.play_circle,
                size: 60,
                color: ColorTween(
                  begin: Colors.black,
                  end: Colors.white,
                ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)).value,
              );
            },
          ),
        ),
      ),
    );
  }
}
