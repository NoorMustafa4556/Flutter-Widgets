import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Animated1 extends StatefulWidget {
  const Animated1({super.key});

  @override
  State<Animated1> createState() => _Animated1State();
}

class _Animated1State extends State<Animated1> {
  var width = 200.0;
  var height = 200.0;
  var duration = const Duration(seconds: 7); // Fast animation

  void animateContainer() {
    setState(() {
      width = width == 200.0 ? 300.0 : 100.0;
      height = height == 200.0 ? 300.0 : 100.0;
    });

    Future.delayed(duration, () {
      setState(() {
        width = 200.0;
        height = 200.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Animated Container',
          style: GoogleFonts.damion(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: CupertinoColors.systemPink
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '"My Friend Said I Loves Cricket \n But I Was A Programmer\n 😉  😘 🤩 🤭 🙈 🙈 😎 "',
                    style: GoogleFonts.damion(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                        color: CupertinoColors.activeGreen,
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/Babr.jpg"), // Image added
                      fit: BoxFit.cover, // Ensures the image fits well
                    ),
                  ),
                  duration: duration,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
          onTap: animateContainer,
            child:  Container(
              width: 120,
              height: 45,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: CupertinoColors.systemGreen,
             ),
              child: Center(
                child: Text(
                  'Check Here',
                  style: GoogleFonts.damion(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )),

          
        ],
      ),
    );
  }
}
