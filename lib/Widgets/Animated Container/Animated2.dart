import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Animated2 extends StatefulWidget {
  const Animated2({super.key});

  @override
  State<Animated2> createState() => _Animated2State();
}

class _Animated2State extends State<Animated2> {
  @override
  double Width= 100;
  double Height= 100;
  Color color= Colors.green;
  BorderRadiusGeometry radiusGeometry= BorderRadius.circular(10);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated Container",
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
            child: AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              height: Height,
              width: Width,
              decoration: BoxDecoration(
                borderRadius: radiusGeometry,
                color: color,
              ),
              duration: Duration(milliseconds: 600),

            ),
          ),
          SizedBox(height: 20,),
          InkWell(

            onTap: (){
            final  random =Random();
            Height=random.nextInt(400).toDouble();
            Width=random.nextInt(400).toDouble();
            color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                  1,

            );
            radiusGeometry= BorderRadius.circular(random.nextInt(100).toDouble());
            setState(() {

            });

            },
            child: Icon(Icons.refresh,size: 40,
            ),
          ),

        ],

      ),
    );
  }
}
