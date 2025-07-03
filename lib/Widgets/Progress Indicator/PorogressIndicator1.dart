import 'dart:async';
import 'package:flutter/material.dart';

class ProgressIndicator1 extends StatefulWidget {
  const ProgressIndicator1({super.key});

  @override
  State<ProgressIndicator1> createState() => _ProgressIndicator1State();
}

class _ProgressIndicator1State extends State<ProgressIndicator1> {
  double progressValue = 0.0;
  Timer? _timer;
  bool isDownloading = false;

  void startDownload() {
    if (isDownloading) return; // Prevent multiple timers

    // Reset progress if it reached 100%
    if (progressValue >= 1.0) {
      setState(() {
        progressValue = 0.0;
      });
    }

    isDownloading = true;
    _timer = Timer.periodic(
      Duration(milliseconds: 100), // Adjust time for smoother progress
          (timer) {
        setState(() {
          progressValue += 0.01;
          if (progressValue >= 1.0) {
            _timer?.cancel(); // Stop the timer when progress completes
            isDownloading = false;
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Progress Indicator",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: startDownload,
        child: Icon(
          Icons.download,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Circular Progress Indicator",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              value: progressValue,
              color: Colors.green,
              backgroundColor: Colors.black,
            ),
            SizedBox(height: 20),
            Text(
              "${(progressValue * 100).toStringAsFixed(1)}%", // Display percentage
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            Text(
              "Linear Progress Indicator",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: progressValue,
              minHeight: 5,
              backgroundColor: Colors.black,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text(
              "${(progressValue * 100).toStringAsFixed(1)}%", // Display percentage
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
