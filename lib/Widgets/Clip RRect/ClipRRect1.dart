import 'package:flutter/material.dart';

class Cliprrect1 extends StatefulWidget {
  const Cliprrect1({super.key});

  @override
  State<Cliprrect1> createState() => _Cliprrect1State();
}

class _Cliprrect1State extends State<Cliprrect1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Clip R-Rect Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            'assets/images/cover.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
