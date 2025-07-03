import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkedbox2 extends StatefulWidget {
  const Checkedbox2({super.key});

  @override
  State<Checkedbox2> createState() => _Checkedbox2State();
}

class _Checkedbox2State extends State<Checkedbox2> {
  @override
  bool ischecked= false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checked Box",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        backgroundColor: Colors.teal,
        centerTitle: true,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Center(
            child: Row(
              children: [
                Checkbox(value: ischecked, onChanged: (val) {

                  setState(() {
                    ischecked=val!;
                  });
                },
                  checkColor: Colors.white,
                  activeColor: Colors.teal,
                ),
                Text("Agree To Terms & Conditions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
