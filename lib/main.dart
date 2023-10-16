import 'package:cookie_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// https://www.youtube.com/watch?v=FrZEj5Izf7E

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookie Shop',
      theme: ThemeData(textTheme: GoogleFonts.lexendTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
