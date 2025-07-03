import 'package:flutter/material.dart';

class Form2 extends StatefulWidget {
  const Form2({super.key});

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Form Widget",style: TextStyle(
          fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.teal,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          Center(
            child:Container(
              width: 300,
              child: TextFormField(

                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
            ) ,

          ),
          SizedBox(height: 20,),
          Container(
            width: 300,
            child: TextFormField(

              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(

                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
          ) ,
          SizedBox(height: 20,),
          Container(
            width: 300,
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
          ) ,
        ],
      ),
    );
  }
}
