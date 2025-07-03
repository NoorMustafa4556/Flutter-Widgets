import 'package:flutter/material.dart';

class Detector1 extends StatefulWidget {
  const Detector1({super.key});

  @override
  State<Detector1> createState() => _Detector1State();
}

class _Detector1State extends State<Detector1> {
  String displayText = "Tap the box";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Detector "),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              displayText = "Box Tapped!";
            });
          },
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.blueAccent,
            child: Text(
              displayText,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
