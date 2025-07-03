import 'package:flutter/material.dart';

class Slider2 extends StatefulWidget {
  const Slider2({super.key});

  @override
  State<Slider2> createState() => _Slider2State();
}

class _Slider2State extends State<Slider2> {
  @override
  var val= 6.0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider 2',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        backgroundColor: Colors.deepPurpleAccent,
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
                Icon(Icons.volume_up),
                SizedBox(width: 10,),
                Slider(
                  value: val,
                  min: 1.0,
                  max: 10.0,
                  divisions: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.deepPurpleAccent,
                  label: "Sets Volume Up",

                  onChanged: (var nvalue) {

                    setState(() {
                      val=nvalue;
                    });
                  },),
              ],
            ),
          )
        ],
      ),
    );
  }
}
