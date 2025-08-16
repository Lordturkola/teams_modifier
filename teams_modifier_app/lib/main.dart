import 'package:flutter/material.dart';
import 'package:teams_modifier_app/home_page.dart';
import 'package:teams_modifier_app/teams_theme';

void main() {
  runApp(const TeamsGifChanger());
}

class TeamsGifChanger extends StatelessWidget {
  const TeamsGifChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teams background changer',
      theme: TeamsTheme().toThemeData(),
      home: HomePage(title: 'Teams background changer', key: super.key),
    );
  }
}
