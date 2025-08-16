import 'package:flutter/material.dart';
import 'package:giphy_get/l10n.dart';
import 'package:teams_modifier_app/home_page.dart';
import 'package:teams_modifier_app/teams_text_theme.dart';
import 'package:teams_modifier_app/teams_theme.dart';

void main() {
  runApp(const TeamsGifChanger());
}

class TeamsGifChanger extends StatelessWidget {
  const TeamsGifChanger({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme teamsTheme = MaterialTheme(textTheme);

    return MaterialApp(
      localizationsDelegates: [
        // Default Delegates
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GiphyGetUILocalizations.delegate,
      ],
      supportedLocales: [
        // Your supported languages
        Locale('en', ''),
      ],
      title: 'Teams background changer',

      theme: brightness == Brightness.light
          ? teamsTheme.lightMediumContrast()
          : teamsTheme.darkMediumContrast(),
      home: HomePage(title: 'Teams background changer', key: super.key),
    );
  }
}
