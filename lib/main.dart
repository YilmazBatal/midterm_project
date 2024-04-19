import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/Screens/product/home.dart';
import './Screens/product/home.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Debug
      debugShowCheckedModeBanner: false,

      // Theme
      theme: ThemeData(
        // Tema config
        // colorScheme: ,

        // Font config
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      
      // Home
      home: const Scaffold(
        body: HomePage()
      ),
    );
  }
}
