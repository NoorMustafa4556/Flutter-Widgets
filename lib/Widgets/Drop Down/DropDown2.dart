

import 'package:flutter/material.dart';

class Dropdown2 extends StatefulWidget {
  const Dropdown2({super.key});

  @override
  State<Dropdown2> createState() => _Dropdown2State();
}

class _Dropdown2State extends State<Dropdown2> {
  @override
  String? currency= "Pkr";
  Widget build(BuildContext context) {
    return  Scaffold(

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Please Select Your Currency",style: TextStyle(fontSize: 25),)),
          DropdownButton(
              value: currency,
              items: [
            DropdownMenuItem(
                child: Text("Pkr"),
              value: "Pkr",
            ),
                DropdownMenuItem(
                  child: Text("USD"),
                  value: "USD",
                ),
                DropdownMenuItem(
                  child: Text("Pound"),
                  value: "Pound",
                ),
          ],
            onChanged: (String?value){
                setState(() {
                  currency =value ;
                });
            },
          )
        ],
      ),
    );
  }
}
