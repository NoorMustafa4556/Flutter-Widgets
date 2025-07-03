import 'package:flutter/material.dart';

import 'MyProfile.dart';


class Hero2 extends StatefulWidget {
  const Hero2({super.key});

  @override
  State<Hero2> createState() => _Hero2State();
}

class _Hero2State extends State<Hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Hero Widget',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>Myprofile()
                  )
              );
            },
            child: Hero(
              tag: "Profile",
              child: Image.asset(
                  'assets/images/profile.png',
                width: 200,
                height: 200,

              ),
            ),


          ),

        ),
      ),
    );
  }
}
