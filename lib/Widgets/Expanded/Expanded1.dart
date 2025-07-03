

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expanded1 extends StatefulWidget {
  const Expanded1({super.key});

  @override
  State<Expanded1> createState() => _Expanded1State();
}

class _Expanded1State extends State<Expanded1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Expanded Widgets",
          style: GoogleFonts.eagleLake(
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                    onTap: (){
                      print("Light Green Button Pressed");
                    },
                    child: Container(

                      height: 100,
                      child: Center(child: Text(' Green Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),

                    )),
              ),

              Expanded(
                child: InkWell(
                    onTap: (){
                      print("Light Green Button Pressed");
                    },
                    child: Container(

                      height: 100,

                      child: Center(child: Text('Pink Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),

                    )),

              ),
              Expanded(
                child: InkWell(
                    onTap: (){
                      print("Light Green Button Pressed");
                    },
                    child: Container(
                      height: 100,
                      child: Center(child: Text('Purple Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),

                    )),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
          ),
          Expanded(
            child: InkWell(
                onTap: (){
                  print("Light Green Button Pressed");
                },
                child: Container(


                  child: Center(child: Text('Pink Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                )),
          ),
          Divider(),
          Expanded(
            child: InkWell(
                onTap: (){
                  print("Light Green Button Pressed");
                },
                child: Container(


                  child: Center(child: Text('Purple Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                )),
          ),
          Divider(),
          Expanded(
            child: InkWell(
                onTap: (){
                  print("Light Green Button Pressed");
                },
                child: Container(


                  child: Center(child: Text('Light Green Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                )),
          ),
          Divider(),
        ],
      ),
    );
  }
}
