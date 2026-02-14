import 'package:app2_ice_cream/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ice Cream App",
      theme: ThemeData(
        fontFamily: GoogleFonts.dmSans().fontFamily
      ),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}