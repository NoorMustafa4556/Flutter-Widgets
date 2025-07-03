import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Drawer4.dart';

class Drawer3 extends StatefulWidget {
  const Drawer3({super.key});

  @override
  State<Drawer3> createState() => _Drawer3State();
}

class _Drawer3State extends State<Drawer3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "Gmail",
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
            const SizedBox(height: 30),
            ListTile(
              title: const Text('Gmail', style: TextStyle(fontSize: 30)),
              onTap: () {
                // Handle the tap event here without closing the drawer
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inbox),
              title: const Text('All inboxes', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here without closing the drawer
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.mail),
              title: const Text('Primary', style: TextStyle(fontSize: 20)),
              trailing: const Text('15', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_offer),
              title: const Text('Promotions', style: TextStyle(fontSize: 20)),
              trailing: Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('9 new', style: TextStyle(fontSize: 12)),
                ),
              ),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Social', style: TextStyle(fontSize: 20)),
              trailing: Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('4 new', style: TextStyle(fontSize: 12)),
                ),
              ),
              onTap: () {
                // Handle the tap event here
              },
            ),

            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text('All labels', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Starred', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.schedule),
              title: const Text('Snoozed', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.label_important),
              title: const Text('Important', style: TextStyle(fontSize: 20)),
              trailing: const Text('28', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.send),
              title: const Text('Sent', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.schedule_send),
              title: const Text('Scheduled', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.outbox),
              title: const Text('Outbox', style: TextStyle(fontSize: 20)),
              trailing: const Text('4', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.drafts),
              title: const Text('Drafts', style: TextStyle(fontSize: 20)),
              trailing: const Text('4', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.mail_outline_sharp),
              title: const Text('All Mail', style: TextStyle(fontSize: 20)),
              trailing: const Text('28', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Spam', style: TextStyle(fontSize: 20)),
              trailing: const Text('7', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Bin', style: TextStyle(fontSize: 20)),
              trailing: const Text('1', style: TextStyle(fontSize: 15)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text('Google apps', style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text('Calendar', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: const Text('Contacts', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
            ListTile(
              leading: const Icon(Icons.help_outline),
              title: const Text('Help & Feedback', style: TextStyle(fontSize: 20)),
              onTap: () {
                // Handle the tap event here
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Gmail Home Screen',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Drawer4()),
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
