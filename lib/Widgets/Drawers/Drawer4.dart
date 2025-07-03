
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Drawer5.dart';

class Drawer4 extends StatefulWidget {
  const Drawer4({super.key});

  @override
  State<Drawer4> createState() => _Drawer4State();
}

class _Drawer4State extends State<Drawer4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "ChatGPT",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 30,),
              ListTile(
                title: Text('ChatGPT', style: TextStyle(fontSize: 30),),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('New Chat', style: TextStyle(fontSize: 20),),
                trailing: Icon(Icons.add),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('History', style: TextStyle(fontSize: 20),),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Saved Replies', style: TextStyle(fontSize: 20),),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings', style: TextStyle(fontSize: 20),),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Help & Feedback', style: TextStyle(fontSize: 20),),
                onTap: () {
                  // Handle the tap event here without closing the drawer
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'ChatGPT Home Screen',
              style: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Drawer5()),
                );
              },
              child: Container(
                width: 200,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
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
