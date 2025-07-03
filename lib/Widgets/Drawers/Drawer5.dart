import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer5 extends StatefulWidget {
  const Drawer5({super.key});

  @override
  State<Drawer5> createState() => _Drawer5State();
}

class _Drawer5State extends State<Drawer5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Food Panda",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                    radius: 35,
                  ),
                  SizedBox(height: 10),
                  Flexible(
                    child: Text(
                      "Noor Mustafa",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 5),
                  Flexible(
                    child: Text(
                      "noormustafa4556@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text('Home', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.black),
              title: Text('Search', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.black),
              title: Text('Cart', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.black),
              title: Text('Favorites', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.black),
              title: Text('Order History', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.black),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.black),
              title: Text('Help & Support', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black),
              title: Text('Logout', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle the tap event here
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Food Panda Home Screen',
              style: TextStyle(fontSize: 24),
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
