import 'package:flutter/material.dart';
import 'Drawer1.dart';

class Mydrawers extends StatefulWidget {
  const Mydrawers({super.key});

  @override
  State<Mydrawers> createState() => _MydrawersState();
}

class _MydrawersState extends State<Mydrawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: Text(
          "Drawers Widgets",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xffff00ff).withOpacity(0.4),
                        const Color(0xffff00bf),
                      ],
                    )),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/profile.png'),
                        radius: 35,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Noor Mustafa",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "noormustafa4556@gmail.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text("Notifications"),
                      onTap: () {
                        // Add functionality for Notifications
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      title: Text("Reviews"),
                      onTap: () {
                        // Add functionality for Reviews
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text("Payment"),
                      onTap: () {
                        // Add functionality for Payment
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      onTap: () {
                        // Add functionality for Settings
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text("Light/ Dark Mode"),
                      onTap: () {
                        // Add functionality for Light/Dark Mode
                      },
                    ),
                  ],
                ),
              ),
            ),
            Text("Developed By\n Noor Mustafa"),
            SizedBox(height: 20,)
          ],
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Drawers1()),
            );
          },
          child: Container(
            width: 200,
            height: 70,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
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
    );
  }
}
