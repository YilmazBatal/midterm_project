import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:midterm_project/Screens/core/routes.dart';

Color lightOrange = const Color(0xffff8c2e); // Orange 1
Color darkOrange = const Color(0xFFff5417); // Orange 2
Color lightGreen = const Color.fromARGB(255, 29, 192, 62); // Green 1
Color darkGreen = const Color.fromARGB(255, 12, 126, 23); // Green 2
Color navyBlue = const Color(0xFF122663); // Navy 1
Color ownedColor = navyBlue;

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
    return MaterialApp.router(
      routerConfig: router,
      // Debug
      debugShowCheckedModeBanner: false,
      // Theme
      theme: ThemeData(
        // Tema config
        // colorScheme:
        // Font config
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
