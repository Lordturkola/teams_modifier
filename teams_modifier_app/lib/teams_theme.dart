import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

@immutable
class TeamsTheme extends ThemeExtension<TeamsTheme> {
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

  ThemeData toThemeData() {
    return ThemeData(useMaterial3: true);
  }

  @override
  ThemeExtension<TeamsTheme> copyWith({
    final Color? primarycolor,
    final Color? secondaryColor,
    final Color? tertriaryColor,
    final Color? accentColor,
    final Color? neutralColor,
  }) {
    return TeamsTheme(
      primarycolor: primarycolor ?? this.primarycolor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      tertriaryColor: tertriaryColor ?? this.tertriaryColor,
      accentColor: accentColor ?? this.accentColor,
      neutralColor: neutralColor ?? this.neutralColor,
    );
  }

  @override
  ThemeExtension<TeamsTheme> lerp(
    covariant ThemeExtension<TeamsTheme>? other,
    double t,
  ) {
    // TODO: implement lerp
    if (other is! TeamsTheme) {
      return this;
    }
    return TeamsTheme(
      primarycolor: Color.lerp(primarycolor, other.primarycolor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
      tertriaryColor: Color.lerp(tertriaryColor, other.tertriaryColor, t)!,
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      neutralColor: Color.lerp(neutralColor, other.neutralColor, t)!,
    );
  }
}
