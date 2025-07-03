
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Text(
          "Container Widgets",
          style: GoogleFonts.caladea(
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Center(
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.pinkAccent,
                        child: Center(
                          child: Text(
                            " My Name Is Noor Mustafa  ",
                            style: GoogleFonts.damion(
                              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Center(
                      child: Container(
                        width: 150,
                        height: 150,
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(20)
                       ),
                        child: Center(
                          child: Text(
                            " Son Of \nMuhammad Rafique  ",
                            style: GoogleFonts.caladea(
                              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],

                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Center(
                      child: Container(
                        width: 190,
                        height: 190,
                        decoration: BoxDecoration(
                            color: CupertinoColors.activeGreen,
                            shape: BoxShape.circle

                        ),
                        child: Center(
                          child: Text(
                            "   From  Liaquat \n    Pur  ",
                            style: GoogleFonts.eagleLake(
                              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Center(
                      child: Container(
                        width: 190,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle

                        ),
                        child: Center(
                          child: Text(
                            "   Studiying In IUB ",
                            style: GoogleFonts.nabla(
                              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(150),bottomLeft:Radius.circular(150))

                    ),
                    child: Center(
                      child: Text(
                        "  Dept Of\n  Computer\n Science ",
                        style: GoogleFonts.sacramento(
                          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
