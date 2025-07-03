import 'package:flutter/material.dart';

class Myprofile extends StatefulWidget {
  const Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child:  Hero(
          tag: "Profile",
          child: Image.asset("assets/images/profile.png",


          ),
        ),
        ),
      ),
    );
  }
}
