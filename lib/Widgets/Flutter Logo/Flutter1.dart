import 'package:flutter/material.dart';

class Flutter1 extends StatefulWidget {
  const Flutter1({super.key});

  @override
  State<Flutter1> createState() => _Flutter1State();
}

class _Flutter1State extends State<Flutter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Icon",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(

mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
              style: FlutterLogoStyle.stacked,
            )
          ],
        ),
      ),
    );
  }
}
