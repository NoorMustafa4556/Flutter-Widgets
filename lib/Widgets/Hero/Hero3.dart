import 'package:flutter/material.dart';

import 'MyCover.dart';


class Hero3 extends StatefulWidget {
  const Hero3({super.key});

  @override
  State<Hero3> createState() => _Hero3State();
}

class _Hero3State extends State<Hero3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cover Hero',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,

      ),
      body: Container(
        child: Center(
          child: InkWell(
            child: Hero(
              tag: "cover",

              child: Image.asset("assets/images/cover.png",
            width: 300,
                height: 200,
            ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Mycover()
              )
              );
            },
          ),
        ),
      ),
    );
  }
}
