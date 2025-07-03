

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Textfield1 extends StatefulWidget {
  const Textfield1({super.key});

  @override
  State<Textfield1> createState() => _Textfield1State();
}

class _Textfield1State extends State<Textfield1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.menu,color: Colors.white,size: 30,),
          onTap: (){
          },
        ),
        title: Text('Text Field',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: [
          InkWell(
              onTap: (){},
              child:const Icon(Icons.favorite,color: Colors.white,)


          ),
          SizedBox(width: 10,),

          InkWell(
              onTap: (){},
              child: Icon(Icons.search,color: Colors.white,)
          )
        ],
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  TextField(

                    decoration: InputDecoration(
                      hintText: "Enter Mail abc@gmail.com",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.redAccent,


                            width: 3,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.green,

                            width: 3,
                          )
                      ),
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,

                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(

                      hintText: "Enter Password",

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                            color: Colors.redAccent,

                            width: 3,
                          )
                      ),
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue,

                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      child: ElevatedButton(onPressed: (){},

                          child: Text('Login',style: GoogleFonts.aBeeZee(
                              textStyle: TextStyle(
                                  color: CupertinoColors.black
                              )
                          ),
                          )
                      )
                  )
                ],
              )
          ),
      ),
    );
  }
}
