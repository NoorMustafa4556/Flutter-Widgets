import 'package:flutter/material.dart';

class Checkedbox1 extends StatefulWidget {
  const Checkedbox1({super.key});

  @override
  State<Checkedbox1> createState() => _Checkedbox1State();
}

class _Checkedbox1State extends State<Checkedbox1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox Example",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
            ),
            const Text(
              "Agree to Terms and Conditions",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
