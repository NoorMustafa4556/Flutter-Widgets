import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Images1 extends StatefulWidget {
  const Images1({super.key});

  @override
  State<Images1> createState() => _Images1State();
}

class _Images1State extends State<Images1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Widgets",
          style: GoogleFonts.caladea(
            textStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Asset Image",
              style: GoogleFonts.caladea(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/profile.png'),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              "Network Image",
              style: GoogleFonts.caladea(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            child: Image.network(
              '2wCEAAkGBxMTEhUTExMVFRUTGBgYGBgYGBcXHRkYFhUWGBYaFRUYICggGB0lHRYXIjEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGy0mICUtLy8tLS0tLS0tLS0rLS0vLi0tLSstNy0tLS0tLTAtLS0tLS8tLS0tLS0tLS0tLS0tLf', // Direct image link
            ),
          ),
        ],
      ),
    );
  }
}
