import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listview1 extends StatefulWidget {
  const Listview1({super.key});

  @override
  State<Listview1> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          'List Views',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 25),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person, color: Colors.white, size: 25),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(

          children: [
            SizedBox(height: 20),
            Text(
              "Name",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Noor Mustafa (Sial)",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 190, // Set width here
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'About...',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
            Text(" Name: Noor Mustafa "
                "\nFather's Name: Muhammad Rafique "
                "\nAge: 19 years old "
                "\nEducation: BS Computer Science at Islamia University of Bahawalpur\n Location: Liaquat Pur"
                "\n Favorite Subject: Coding \nCurrent"
                " Activity: Working on Flutter development",
                style: GoogleFonts.damion(
                  textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
                )),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 220, // Set width here
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Other Information',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(" "
                "Current Address : Bwp\n"
                "Permanent Address : LQP\n"
                "College : Aspire Group Of Colleges Liaquat Pur\n"
                "School : GBHS Model Liaquat Pur\n"
                "Street Address : Basti Wahid Baksh Sial ,\n "
                "Post Office Allah Abad ,\n"
                " Tehsil Liaquat Pur ,\n"
                "Distirct Rahim Yar Khan\n"
                'Relationship Status : Single\n'
                'Date of Birth : 25 Dec 2005'
                "\n "
                "\n"
                "      Current Enrollments"
                ,
                style: GoogleFonts.daiBannaSil(
                  textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Icon(Icons.arrow_downward_sharp,size: 40,)),
                Center(child: Icon(Icons.arrow_downward_sharp,size: 40,)),
                Center(child: Icon(Icons.arrow_downward_sharp,size: 40,)),
                Center(child: Icon(Icons.arrow_downward_sharp,size: 40,)),
              ],
            ),
            Text('1)  Studying In IUB\n  Department Of Comuter Science\n  Bs CS M3 5th Semester\n2) Left Arm Fast Bowler In Bahawalpur Jaguars ',
                style: GoogleFonts.daiBannaSil(
                  textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
                )),
            Text("Professional Info Will Be Uploaded Soon",
              style: GoogleFonts.daiBannaSil(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
              )),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Teal Button  Pressed");
                  },
                  child: Container(
                    width: 250,
                    height: 60,
                    child: Center(child: Text('More Info Coming Soon',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Teal Button  Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Teal Color',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Teal Color
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Blue  Button Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Blue Color',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Blue Color
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Green Button Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Green Color',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Green Color
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Light Green Button Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Light Green Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Light Green Color
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Purple Button Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Purple Color',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Purple Color
            SizedBox(height: 10,),
            Center(
              child: InkWell(
                  onTap: (){
                    print("Orange Pressed");
                  },
                  child: Container(
                    width: 350,
                    height: 120,
                    child: Center(child: Text('Orange Color',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),

                  )),
            ),
            // 6th Orange Color
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}