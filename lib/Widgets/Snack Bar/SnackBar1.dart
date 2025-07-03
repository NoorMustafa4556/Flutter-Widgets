import 'package:flutter/material.dart';

class Snackbar1 extends StatefulWidget {
  const Snackbar1({super.key});

  @override
  State<Snackbar1> createState() => _Snackbar1State();
}

class _Snackbar1State extends State<Snackbar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Snack Bar",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Builder(
          // Builder provides a new context below the Scaffold
          builder: (context) => ElevatedButton(
            child: const Text("Click Here"),
            onPressed: () {
              // Using ScaffoldMessenger to show the SnackBar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Please Try Again'),
                  duration: const Duration(seconds: 2),
                  action: SnackBarAction(
                    label: "Retry",
                    onPressed: () {
                      // Action for the "Retry" button
                    },
                  ),
                ),
              );
            },

          ),
        ),
      ),
    );
  }
}
