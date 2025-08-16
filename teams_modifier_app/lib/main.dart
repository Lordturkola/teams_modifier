import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teams_modifier_app/home_page.dart';

void main() {
  runApp(const TeamsGifChanger());
}

@immutable
class TeamsTheme {
  const TeamsTheme({
    this.primarycolor = const Color(0xFF3d2f81),
    this.secondaryColor = const Color(0xFF7382ff),
    this.tertriaryColor = const Color(0xFF25c3e6),
    this.accentColor = const Color(0XFFb182ff),
    this.neutralColor = const Color(0Xffd18088),
  });

  final Color primarycolor;
  final Color secondaryColor;
  final Color tertriaryColor;
  final Color accentColor;
  final Color neutralColor;
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
        scaffoldBackgroundColor: const Color.fromRGBO(115, 130, 255, 1.0),
        buttonTheme: ButtonThemeData(
          minWidth: 200,
          height: 50,
          padding: EdgeInsets.all(10),
        ),
        useMaterial3: false,
      ),
      home: HomePage(title: 'Teams background changer', key: super.key),
    );
  }
}
