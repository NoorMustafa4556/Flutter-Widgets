
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Drawer3.dart';

class Drawer2 extends StatefulWidget {
  const Drawer2({super.key});

  @override
  State<Drawer2> createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        title: const Text(
          "Transparent",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.3),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 35,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Noor Mustafa",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: const [
                      Text(
                        "noormustafa4556@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () {
                        // Add functionality for logout here
                      },
                      leading: const Icon(
                        Icons.messenger_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Log Out", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to My Files screen
                      },
                      leading: const Icon(
                        Icons.messenger_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("My Files", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Shared With Me screen
                      },
                      leading: const Icon(
                        Icons.group_add,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Shared With Me", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Starred screen
                      },
                      leading: const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Starred", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Recent screen
                      },
                      leading: const Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Recent", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Offline screen
                      },
                      leading: const Icon(
                        Icons.offline_pin,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Offline", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Uploads screen
                      },
                      leading: const Icon(
                        Icons.upload_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Uploads", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Backups screen
                      },
                      leading: const Icon(
                        Icons.backup,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Backups", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Trash screen
                      },
                      leading: const Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Trash", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )),
                    ),
                    Container(
                      width: double.infinity,
                      height: 25,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        // Navigate to Settings & account screen
                      },
                      leading: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                      title: Text("Settings & account", style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  'assets/images/background.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Drawer3()),
                      );
                    },
                    child: Container(
                      width: 200,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.5),
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
                SizedBox(height: 50,),
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
                        color: CupertinoColors.activeGreen.withOpacity(0.5), // Add opacity to see the background image
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

          ],
        ),
      ),
    );
  }
}
