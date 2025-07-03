import 'package:flutter/material.dart';

class Transform1 extends StatefulWidget {
  const Transform1({super.key});

  @override
  State<Transform1> createState() => _Transform1State();
}

class _Transform1State extends State<Transform1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Transform Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Transform.rotate(
          angle: 1.0, // Angle in radians
          child: Container(
            width: 100,
            height: 100,
            color: Colors.deepPurpleAccent,
            child: Center(
              child: Text(
                'Rotated',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
