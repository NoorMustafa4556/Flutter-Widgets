import 'package:flutter/material.dart';

class Snackbar2 extends StatefulWidget {
  const Snackbar2({super.key});

  @override
  State<Snackbar2> createState() => _Snackbar2State();
}

class _Snackbar2State extends State<Snackbar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Snack Bar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Builder(
          builder: (context)=>ElevatedButton(

              child: Text('Click On Button'),
            onPressed: (){

                ScaffoldMessenger.of(context).showSnackBar(

                  SnackBar(content: Text('please try again'),
                      duration: Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "retry",
                      onPressed: (){

                      },
                    ),
                  )
                );
            },
          )
        ),
      ),
    );
  }
}
