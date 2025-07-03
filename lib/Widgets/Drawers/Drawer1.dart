import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Drawer2.dart';

class Drawers1 extends StatefulWidget {
  const Drawers1({super.key});

  @override
  State<Drawers1> createState() => _Drawers1State();
}

class _Drawers1State extends State<Drawers1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        title: const Text(
          "Drawers Headers",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                    ]),
              ),
              child: Container(
                width: double.infinity,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      radius: 35,
                    ),
                    SizedBox(height: 5,),
                    Text("Noor Mustafa", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("noormustafa4556@gmail.com", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_drop_down, color: Colors.white,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.messenger_sharp,
                        color: Colors.deepPurpleAccent,
                        size: 30,),
                      title: Text(" My Files", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )),
                      onTap: () {
                        // Add functionality for My Files
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.group_add,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Shared With Me", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      )),
                      onTap: () {
                        // Add functionality for Shared With Me
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.star,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Starred", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Starred
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.watch_later_outlined,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Recent", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Recent
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.offline_pin,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Offline", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Offline
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.upload_sharp,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Uploads", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Uploads
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.backup,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Backups", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Backups
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.delete,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Trash", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                      onTap: () {
                        // Add functionality for Trash
                      },
                    ),
                    Container(
                      width: double.infinity,
                      height: 25,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              )
                          )
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings,
                        color: Colors.black,
                        size: 30,),
                      title: Text(" Settings & account", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                      onTap: () {
                        // Add functionality for Settings & account
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Drawer2()),
                );
              },
              child: Container(
                width: 200,
                height: 70,
                alignment: Alignment.center, // Centers the text inside the container
                decoration: BoxDecoration(
                  color: Colors.pinkAccent, // Add opacity to see the background image
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Next Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 30,),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(
                  context,

                );
              },
              child: Container(
                width: 200,
                height: 70,
                alignment: Alignment.center, // Centers the text inside the container
                decoration: BoxDecoration(
                  color: CupertinoColors.activeGreen, // Add opacity to see the background image
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Previous Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
