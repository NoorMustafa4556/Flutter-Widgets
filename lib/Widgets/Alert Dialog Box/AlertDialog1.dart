import 'package:flutter/material.dart';

class Alertdialog1 extends StatefulWidget {
  const Alertdialog1({super.key});

  @override
  State<Alertdialog1> createState() => _Alertdialog1State();
}

class _Alertdialog1State extends State<Alertdialog1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Box",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(" Button",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Exit',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                content: Text("Are You Sure To Exit ?",style: TextStyle(fontSize: 18),),
                actions: [
                  TextButton(
                    onPressed: ()=>Navigator.pop(
                       context, "Cancel"),

                      child: Text("Cancel"),
        ),
          TextButton(
            onPressed: ()=>Navigator.pop(
              context, "Ok"),

            child: Text("Ok"),
                  ),

                ],

              ),
          ),
        ),
      ),
    );
  }
}
