 import 'package:flutter/material.dart';
import 'package:widgets/Widgets/Containers/Container1.dart';
import 'package:widgets/Widgets/Drawers/myDrawers.dart';

 void main() {
   runApp(const MyApp()); // Starting the app with MyApp
 }

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       // The home screen is set to Buttons
       home:Mydrawers(), // The home screen is set to Buttons
     );
   }
 }
