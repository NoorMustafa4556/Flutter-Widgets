import 'package:flutter/material.dart';

class Asspectratio1 extends StatefulWidget {
  const Asspectratio1({super.key});

  @override
  State<Asspectratio1> createState() => _Asspectratio1State();
}

class _Asspectratio1State extends State<Asspectratio1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(
          'Aspect Ratio Widget',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: AspectRatio(
                aspectRatio: 2/3, // Width to height ratio
                child: Image.asset(
                  'assets/images/cover.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
