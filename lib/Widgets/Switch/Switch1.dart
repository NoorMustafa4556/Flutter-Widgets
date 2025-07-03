import 'package:flutter/material.dart';

class Switch1 extends StatefulWidget {
  const Switch1({super.key});

  @override
  State<Switch1> createState() => _Switch1State();
}

class _Switch1State extends State<Switch1> {
  bool notifications = true; // Correct placement of the bool variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Widget'),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Switch(
          activeColor: Colors.blueAccent,
          value: notifications,
          onChanged: (value) {
            setState(() {
              notifications = value;
            });
          },
        ),
      ),
    );
  }
}
