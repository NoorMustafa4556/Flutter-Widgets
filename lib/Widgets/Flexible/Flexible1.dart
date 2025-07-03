import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Flexible1 extends StatefulWidget {
  const Flexible1({super.key});

  @override
  State<Flexible1> createState() => _FlexibleExampleState();
}

class _FlexibleExampleState extends State<Flexible1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Flexible Widgets",
          style: GoogleFonts.eagleLake(
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: [
          // First Row
          Row(
            children: [
              Flexible(
                flex: 1, // 1/3 of available space
                child: Container(
                  color: Colors.red,
                  height: 100,
                  child: Center(
                    child: Text('1/3'),
                  ),
                ),
              ),
              Flexible(
                flex: 2, // 2/3 of available space
                child: Container(
                  color: Colors.blue,
                  height: 100,
                  child: Center(
                    child: Text('2/3'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Second Row
          Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  height: 100,
                  child: Center(
                    child: Text('2/5'),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.orange,
                  height: 100,
                  child: Center(
                    child: Text('3/5'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Column with Flexible Widgets
          Expanded(
            child: Column(
              children: [
                Flexible(
                  flex: 3, // 3/5 of available height
                  child: Container(
                    color: Colors.purple,
                    child: Center(
                      child: Text('3/5'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2, // 2/5 of available height
                  child: Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('2/5'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

