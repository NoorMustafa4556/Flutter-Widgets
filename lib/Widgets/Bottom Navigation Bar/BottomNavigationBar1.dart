import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavigationbar1 extends StatefulWidget {
  const Bottomnavigationbar1({super.key});

  @override
  State<Bottomnavigationbar1> createState() => _Bottomnavigationbar1State();
}

class _Bottomnavigationbar1State extends State<Bottomnavigationbar1> {
  @override
  int myIndex=0;
  List WidgetList=[
    Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
    Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: CupertinoColors.activeGreen,

      ),
body: Center(
  child: WidgetList[myIndex],
),
bottomNavigationBar: BottomNavigationBar(
  onTap: (index){

    setState(() {
      myIndex=index;
    });
  },
  currentIndex: myIndex,
  
  items: [

    BottomNavigationBarItem(
        icon: Icon(
            Icons.person),
      label: "Profile",
      backgroundColor: Colors.tealAccent,

    ),
    BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"
    ),
    BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: "Settings"
    ),



],

),
    );
  }
}
