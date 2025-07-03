

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switch2 extends StatefulWidget {
  const Switch2({super.key});

  @override
  State<Switch2> createState() => _Switch2State();
}

class _Switch2State extends State<Switch2> {
  @override
  bool nofitications= true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Widget",style: TextStyle(
          color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25
        ),),
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Notifications",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Switch(
                    activeColor: Colors.green,
                    value: nofitications, onChanged: (val){

                  setState(() {
                    nofitications=val;
                  });
                }

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
