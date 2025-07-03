import 'package:flutter/material.dart';

class Radio1 extends StatefulWidget {
  const Radio1({super.key});

  @override
  State<Radio1> createState() => _Radio1State();
}

class _Radio1State extends State<Radio1> {
  // Variable to store the selected gender
  String? gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Radio Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Please Selct Your Gender",style: TextStyle(fontSize: 25),),
          ListTile(
            title: const Text('Male'),
            leading: Radio<String>(
              value: 'Male',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Female'),
            leading: Radio<String>(
              value: 'Female',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Others'),
            leading: Radio<String>(
              value: 'Others',
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
