import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Text1 extends StatefulWidget {
  const Text1({super.key});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text Widgets",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello there",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Divider(),
          Center(
            child: Text(
              " My Name Is Noor Mustafa  ",
              style: GoogleFonts.damion(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.green),
              ),
            ),
          ),
          Divider(),
          Center(
            child: Text(
              " Son Of Muhammad Rafique   ",
              style: GoogleFonts.eagleLake(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.blueAccent),
              ),
            ),
          ),
          Divider(),
          Center(
            child: Text(
              " Studiying In The Islamia University Of Bahawal Pur  ",
              style: GoogleFonts.caladea(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
          Divider(),
          Center(
            child: Text(
              "Department Of Computer Science",
              style:  GoogleFonts.italiana(
    textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    ),
            ),
          ),
          Divider(),
          Center(
            child: Text(
              "Session 2022 To 2026",
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
