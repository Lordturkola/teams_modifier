import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teams_modifier_app/home_page.dart';

void main() {
  runApp(const TeamsGifChanger());
}

class TeamsGifChanger extends StatelessWidget {
  const TeamsGifChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teams background changer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(61, 47, 129, 1.0),
          brightness: Brightness.dark,
        ),

        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.roboto(
            fontSize: 30,
            fontStyle: FontStyle.normal,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),

        useMaterial3: true,
      ),
      home: HomePage(title: 'Teams background changer', key: super.key),
    );
  }
}
