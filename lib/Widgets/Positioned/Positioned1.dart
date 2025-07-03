import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Positioned1 extends StatefulWidget {
  const Positioned1({super.key});

  @override
  State<Positioned1> createState() => _Positioned1State();
}

class _Positioned1State extends State<Positioned1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Positioned Widgets",
          style: GoogleFonts.zcoolKuaiLe(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Top-Left',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Bottom-Right',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
