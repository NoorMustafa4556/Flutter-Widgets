import 'package:flutter/material.dart';

import '../Tab Baar/TabBar1.dart';


void main() {
  runApp(MaterialApp(
    home: Hero1(),
  ));
}

class Hero1 extends StatefulWidget {
  const Hero1({super.key});

  @override
  State<Hero1> createState() => _Hero1State();
}

class _Hero1State extends State<Hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hero Widget',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Navigate to the second screen when the image is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tabbar1(),
              ),
            );
          },
          child: Hero(
            tag: 'Hero Widget',
            child: ClipRRect(

              borderRadius: BorderRadius.circular(30.0),
              child: Image.asset(
                'assets/images/profile.png',
                width: 300,
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hero Detail Page',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          tag: 'hero-image',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://via.placeholder.com/400',
              width: 400,
              height: 400,
            ),
          ),
        ),
      ),
    );
  }
}
