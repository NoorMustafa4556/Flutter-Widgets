import 'package:flutter/material.dart';
import 'dart:math';

class Animated3 extends StatefulWidget {
  const Animated3({super.key});

  @override
  State<Animated3> createState() => _Animated3State();
}

class _Animated3State extends State<Animated3> {
  Color textColor = Colors.black;
  final double fixedSize = 30; // Fixed text size

  void changeColor() {
    final random = Random();
    setState(() {
      textColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated Text",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 100),
              style: TextStyle(
                fontSize: fixedSize, // Fixed size
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              child: Text("Hello there !\n I'm Noor Mustafa"),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: changeColor,
            child: Container(
              width: 80,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Center(child: Text("Click Here",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)),
            ),
          ),
        ],
      ),
    );
  }
}
