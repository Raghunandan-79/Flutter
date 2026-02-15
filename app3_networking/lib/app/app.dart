import 'package:app3_networking/themes.dart';
import 'package:app3_networking/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Memer App",
      
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: MyThemes.lightScheme(),
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: MyThemes.darkScheme(),
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),

      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system,
      
      home: HomeView(),
    );
  }
}
