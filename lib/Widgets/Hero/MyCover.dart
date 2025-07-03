import 'package:flutter/material.dart';

class Mycover extends StatefulWidget {
  const Mycover({super.key});

  @override
  State<Mycover> createState() => _MycoverState();
}

class _MycoverState extends State<Mycover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cover Photo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Image.asset("assets/images/cover.png"),
        ),
      ),
    );
  }
}
