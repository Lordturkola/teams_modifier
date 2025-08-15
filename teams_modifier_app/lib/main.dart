import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(title: 'Flutter Demo Home Page', key: super.key),
    );
  }
}
