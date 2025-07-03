import 'package:flutter/material.dart';

class Dropdown1 extends StatefulWidget {
  const Dropdown1({super.key});

  @override
  State<Dropdown1> createState() => _Dropdown1State();
}

class _Dropdown1State extends State<Dropdown1> {
  String? selectedValue = "Male"; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drop Down Button",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(

            child: Column(

              children: [
                Text("Please Select Your Gender",style: TextStyle(fontSize: 25,),),
                DropdownButton(
                  value: selectedValue, // Make sure the value is a String
                  items: const [
                    DropdownMenuItem(
                      child: Text('Others'),
                      value: "Others",
                    ),
                    DropdownMenuItem(
                      child: Text('Male'),
                      value: "Male",
                    ),
                    DropdownMenuItem(
                      child: Text('Female'),
                      value: "Female",
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value; // Update the selected value
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
