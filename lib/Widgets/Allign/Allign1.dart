import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Allign1 extends StatefulWidget {
  const Allign1({super.key});

  @override
  State<Allign1> createState() => _AlignExampleState();
}

class _AlignExampleState extends State<Allign1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Align Widgets",
          style: GoogleFonts.k2d(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Center widget
              Center(
                child: Container(
                  color: Colors.blue,
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      'Centered',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
          
              // Align widget with bottom right alignment
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  color: Colors.green,
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      'Bottom Right',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
          
              // Align widget with top left alignment
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  color: Colors.orange,
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      'Top Left',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
          
              // Padding widget
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.red,
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      'Padded',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

