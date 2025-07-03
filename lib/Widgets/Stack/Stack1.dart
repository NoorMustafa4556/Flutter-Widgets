

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stack1 extends StatefulWidget {
  const Stack1({super.key});

  @override
  State<Stack1> createState() => _Stack1State();
}

class _Stack1State extends State<Stack1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "Stack Widgets",
          style: GoogleFonts.damion(
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 380,
                    height: 380,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  width: 340,
                  height: 340,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    width: 260,
                    height: 260,
                    color: Colors.redAccent,
                  ),
                ),
                Positioned(
                  left: 35,
                  top:  30,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),

        ],
      )
    );
  }
}
