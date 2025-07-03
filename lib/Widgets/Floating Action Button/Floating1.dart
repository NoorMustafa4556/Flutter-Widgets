import 'package:flutter/material.dart';

class Floating1 extends StatefulWidget {
  const Floating1({super.key});

  @override
  State<Floating1> createState() => _Floating1State();
}

class _Floating1State extends State<Floating1> {
  int _counter = 0; // Counter to track button presses

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Floating Action Button",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Button pressed $_counter times',
              style: TextStyle(fontSize: 20),

            ),
            SizedBox(height: 20,),
            Text("My Picture",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Container(
                width: 150,
                height: 190,
                child: Image.asset("assets/images/profile.png",)),
            CircleAvatar(

            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Action when the button is pressed
        tooltip: 'Increment', // Tooltip text when long-pressed
        backgroundColor: Colors.blue, // Background color of the button
        child: Icon(Icons.add), // Icon displayed inside the button
      ),
    );
  }
}
