import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5f5790),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffe5deff),
      onPrimaryContainer: Color(0xff483f77),
      secondary: Color(0xff00677c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb0ecff),
      onSecondaryContainer: Color(0xff004e5e),
      tertiary: Color(0xff545a92),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffdfe0ff),
      onTertiaryContainer: Color(0xff3c4279),
      error: Color(0xff8f4951),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdadc),
      onErrorContainer: Color(0xff72333b),
      surface: Color(0xfffdf7ff),
      onSurface: Color(0xff1c1b20),
      onSurfaceVariant: Color(0xff48454e),
      outline: Color(0xff79757f),
      outlineVariant: Color(0xffc9c4d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f35),
      inversePrimary: Color(0xffc9beff),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1c1149),
      primaryFixedDim: Color(0xffc9beff),
      onPrimaryFixedVariant: Color(0xff483f77),
      secondaryFixed: Color(0xffb0ecff),
      onSecondaryFixed: Color(0xff001f27),
      secondaryFixedDim: Color(0xff86d1e9),
      onSecondaryFixedVariant: Color(0xff004e5e),
      tertiaryFixed: Color(0xffdfe0ff),
      onTertiaryFixed: Color(0xff0e154b),
      tertiaryFixedDim: Color(0xffbdc2ff),
      onTertiaryFixedVariant: Color(0xff3c4279),
      surfaceDim: Color(0xffddd8e0),
      surfaceBright: Color(0xfffdf7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xfff1ecf4),
      surfaceContainerHigh: Color(0xffece6ee),
      surfaceContainerHighest: Color(0xffe6e1e9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff372e65),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e65a0),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003c49),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff20778b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2b3167),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6269a2),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff5d222b),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffa05860),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf7ff),
      onSurface: Color(0xff121016),
      onSurfaceVariant: Color(0xff37353e),
      outline: Color(0xff54515a),
      outlineVariant: Color(0xff6f6b75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f35),
      inversePrimary: Color(0xffc9beff),
      primaryFixed: Color(0xff6e65a0),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff564d86),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff20778b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005d70),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6269a2),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4a5088),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcac5cd),
      surfaceBright: Color(0xfffdf7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f2fa),
      surfaceContainer: Color(0xffece6ee),
      surfaceContainerHigh: Color(0xffe0dbe3),
      surfaceContainerHighest: Color(0xffd5d0d8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2c245a),
      surfaceTint: Color(0xff5f5790),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4a4179),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00313c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff005061),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff20275c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3e457b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff511921),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff75353d),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffdf7ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2d2b33),
      outlineVariant: Color(0xff4a4851),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff312f35),
      inversePrimary: Color(0xffc9beff),
      primaryFixed: Color(0xff4a4179),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff332a61),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff005061),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003844),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3e457b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff272e63),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbcb7bf),
      surfaceBright: Color(0xfffdf7ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4eff7),
      surfaceContainer: Color(0xffe6e1e9),
      surfaceContainerHigh: Color(0xffd8d3db),
      surfaceContainerHighest: Color(0xffcac5cd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc9beff),
      surfaceTint: Color(0xffc9beff),
      onPrimary: Color(0xff31285f),
      primaryContainer: Color(0xff483f77),
      onPrimaryContainer: Color(0xffe5deff),
      secondary: Color(0xff86d1e9),
      onSecondary: Color(0xff003641),
      secondaryContainer: Color(0xff004e5e),
      onSecondaryContainer: Color(0xffb0ecff),
      tertiary: Color(0xffbdc2ff),
      onTertiary: Color(0xff252b61),
      tertiaryContainer: Color(0xff3c4279),
      onTertiaryContainer: Color(0xffdfe0ff),
      error: Color(0xffffb2b9),
      onError: Color(0xff561d25),
      errorContainer: Color(0xff72333b),
      onErrorContainer: Color(0xffffdadc),
      surface: Color(0xff141318),
      onSurface: Color(0xffe6e1e9),
      onSurfaceVariant: Color(0xffc9c4d0),
      outline: Color(0xff938f99),
      outlineVariant: Color(0xff48454e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff5f5790),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff1c1149),
      primaryFixedDim: Color(0xffc9beff),
      onPrimaryFixedVariant: Color(0xff483f77),
      secondaryFixed: Color(0xffb0ecff),
      onSecondaryFixed: Color(0xff001f27),
      secondaryFixedDim: Color(0xff86d1e9),
      onSecondaryFixedVariant: Color(0xff004e5e),
      tertiaryFixed: Color(0xffdfe0ff),
      onTertiaryFixed: Color(0xff0e154b),
      tertiaryFixedDim: Color(0xffbdc2ff),
      onTertiaryFixedVariant: Color(0xff3c4279),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff3a383e),
      surfaceContainerLowest: Color(0xff0f0d13),
      surfaceContainerLow: Color(0xff1c1b20),
      surfaceContainer: Color(0xff201f24),
      surfaceContainerHigh: Color(0xff2b292f),
      surfaceContainerHighest: Color(0xff36343a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdfd7ff),
      surfaceTint: Color(0xffc9beff),
      onPrimary: Color(0xff261d53),
      primaryContainer: Color(0xff9289c6),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xff9ce7ff),
      onSecondary: Color(0xff002a34),
      secondaryContainer: Color(0xff4d9bb1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd8daff),
      onTertiary: Color(0xff192055),
      tertiaryContainer: Color(0xff868cc8),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd1d4),
      onError: Color(0xff48121b),
      errorContainer: Color(0xffca7a82),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe0dae5),
      outline: Color(0xffb5b0bb),
      outlineVariant: Color(0xff938f99),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff494078),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff11043f),
      primaryFixedDim: Color(0xffc9beff),
      onPrimaryFixedVariant: Color(0xff372e65),
      secondaryFixed: Color(0xffb0ecff),
      onSecondaryFixed: Color(0xff00141a),
      secondaryFixedDim: Color(0xff86d1e9),
      onSecondaryFixedVariant: Color(0xff003c49),
      tertiaryFixed: Color(0xffdfe0ff),
      onTertiaryFixed: Color(0xff020841),
      tertiaryFixedDim: Color(0xffbdc2ff),
      onTertiaryFixedVariant: Color(0xff2b3167),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff46434a),
      surfaceContainerLowest: Color(0xff08070c),
      surfaceContainerLow: Color(0xff1e1d22),
      surfaceContainer: Color(0xff29272d),
      surfaceContainerHigh: Color(0xff343238),
      surfaceContainerHighest: Color(0xff3f3d43),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff3edff),
      surfaceTint: Color(0xffc9beff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc5bbfc),
      onPrimaryContainer: Color(0xff0b0036),
      secondary: Color(0xffd8f5ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff82cde5),
      onSecondaryContainer: Color(0xff000d12),
      tertiary: Color(0xfff0eeff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb8befd),
      onTertiaryContainer: Color(0xff000337),
      error: Color(0xffffebec),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffacb4),
      onErrorContainer: Color(0xff210005),
      surface: Color(0xff141318),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff4eef9),
      outlineVariant: Color(0xffc6c1cc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe6e1e9),
      inversePrimary: Color(0xff494078),
      primaryFixed: Color(0xffe5deff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc9beff),
      onPrimaryFixedVariant: Color(0xff11043f),
      secondaryFixed: Color(0xffb0ecff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff86d1e9),
      onSecondaryFixedVariant: Color(0xff00141a),
      tertiaryFixed: Color(0xffdfe0ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbdc2ff),
      onTertiaryFixedVariant: Color(0xff020841),
      surfaceDim: Color(0xff141318),
      surfaceBright: Color(0xff524f55),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff201f24),
      surfaceContainer: Color(0xff312f35),
      surfaceContainerHigh: Color(0xff3d3a41),
      surfaceContainerHighest: Color(0xff48464c),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
