import 'package:flutter/material.dart';

class Radio2 extends StatefulWidget {
  const Radio2({super.key});

  @override
  State<Radio2> createState() => _Radio2State();
}

class _Radio2State extends State<Radio2> {
  String? gender; // This will store the selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: const Text(
          'Radio Button',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("Please Selct Your Gender",style: TextStyle(fontSize: 25),),
          ),
          Center(
            child: Radio<String>(
              activeColor: Colors.green,
              value: "Male",
              groupValue: gender, // Bind groupValue to the selected value
              onChanged: (String? value) {
                setState(() {
                  gender = value; // Update the gender state with the selected value
                });
              },
            ),
          ),
          const Text('Male'),

          Radio<String>(
            activeColor: Colors.pinkAccent,
            value: "Female",
            groupValue: gender, // Same groupValue for all radio buttons
            onChanged: (String? value) {
              setState(() {
                gender = value;
              });
            },
          ),
          const Text('Female'),

          Radio<String>(
            value: "Other",
            groupValue: gender, // Same groupValue
            onChanged: (String? value) {
              setState(() {
                gender = value;
              });
            },
          ),
          const Text('Other'),
        ],
      ),
    );
  }
}
