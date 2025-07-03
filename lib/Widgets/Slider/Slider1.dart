import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  // Initialize value for the slider
  double value = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Slider Widget",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.volume_up, size: 40),
              Slider(
                value: value,
                min: 1,
                max: 20,
                divisions: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.blueAccent,
                label: "$value", // Display current value
                onChanged: (newValue) {
                  setState(() {
                    value = newValue; // Update slider value
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
