import "package:flutter/material.dart";

class MaterialTheme {

  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {

    return const MaterialScheme(

      brightness: Brightness.light,
      primary: Color(0xff006a60),
      surfaceTint: Color(0xff006a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff9ef2e4),
      onPrimaryContainer: Color(0xff00201c),
      secondary: Color(0xff4a635f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffcce8e2),
      onSecondaryContainer: Color(0xff05201c),
      tertiary: Color(0xff456179),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcce5ff),
      onTertiaryContainer: Color(0xff001e31),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff4fbf8),
      onBackground: Color(0xff161d1c),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff161d1c),
      surfaceVariant: Color(0xffdae5e1),
      onSurfaceVariant: Color(0xff3f4947),
      outline: Color(0xff6f7977),
      outlineVariant: Color(0xffbec9c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inverseOnSurface: Color(0xffecf2ef),
      inversePrimary: Color(0xff82d5c8),
      primaryFixed: Color(0xff9ef2e4),
      onPrimaryFixed: Color(0xff00201c),
      primaryFixedDim: Color(0xff82d5c8),
      onPrimaryFixedVariant: Color(0xff005048),
      secondaryFixed: Color(0xffcce8e2),
      onSecondaryFixed: Color(0xff05201c),
      secondaryFixedDim: Color(0xffb1ccc6),
      onSecondaryFixedVariant: Color(0xff334b47),
      tertiaryFixed: Color(0xffcce5ff),
      onTertiaryFixed: Color(0xff001e31),
      tertiaryFixedDim: Color(0xffadcae6),
      onTertiaryFixedVariant: Color(0xff2d4961),
      surfaceDim: Color(0xffd5dbd9),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffe9efed),
      surfaceContainerHigh: Color(0xffe3eae7),
      surfaceContainerHighest: Color(0xffdde4e1),
    );
  }

  ThemeData light() {

    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {

    return const MaterialScheme(

      brightness: Brightness.light,
      primary: Color(0xff004c44),
      surfaceTint: Color(0xff006a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff288176),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2f4743),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff607a75),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff29455c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5c7791),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fbf8),
      onBackground: Color(0xff161d1c),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff161d1c),
      surfaceVariant: Color(0xffdae5e1),
      onSurfaceVariant: Color(0xff3b4543),
      outline: Color(0xff57615f),
      outlineVariant: Color(0xff737d7a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inverseOnSurface: Color(0xffecf2ef),
      inversePrimary: Color(0xff82d5c8),
      primaryFixed: Color(0xff288176),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00685e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff607a75),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff48615c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5c7791),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff435f77),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbd9),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffe9efed),
      surfaceContainerHigh: Color(0xffe3eae7),
      surfaceContainerHighest: Color(0xffdde4e1),
    );
  }

  ThemeData lightMediumContrast() {

    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {

    return const MaterialScheme(

      brightness: Brightness.light,
      primary: Color(0xff002823),
      surfaceTint: Color(0xff006a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004c44),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff0d2623),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff2f4743),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff03243a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff29455c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff4fbf8),
      onBackground: Color(0xff161d1c),
      surface: Color(0xfff4fbf8),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdae5e1),
      onSurfaceVariant: Color(0xff1c2624),
      outline: Color(0xff3b4543),
      outlineVariant: Color(0xff3b4543),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2b3230),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffa8fcee),
      primaryFixed: Color(0xff004c44),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00332e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff2f4743),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff18312d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff29455c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff102f45),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd5dbd9),
      surfaceBright: Color(0xfff4fbf8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffe9efed),
      surfaceContainerHigh: Color(0xffe3eae7),
      surfaceContainerHighest: Color(0xffdde4e1),
    );
  }

  ThemeData lightHighContrast() {

    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {

    return const MaterialScheme(

      brightness: Brightness.dark,
      primary: Color(0xff82d5c8),
      surfaceTint: Color(0xff82d5c8),
      onPrimary: Color(0xff003731),
      primaryContainer: Color(0xff005048),
      onPrimaryContainer: Color(0xff9ef2e4),
      secondary: Color(0xffb1ccc6),
      onSecondary: Color(0xff1c3531),
      secondaryContainer: Color(0xff334b47),
      onSecondaryContainer: Color(0xffcce8e2),
      tertiary: Color(0xffadcae6),
      onTertiary: Color(0xff153349),
      tertiaryContainer: Color(0xff2d4961),
      onTertiaryContainer: Color(0xffcce5ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff0e1513),
      onBackground: Color(0xffdde4e1),
      surface: Color(0xff0e1513),
      onSurface: Color(0xffdde4e1),
      surfaceVariant: Color(0xff3f4947),
      onSurfaceVariant: Color(0xffbec9c6),
      outline: Color(0xff899390),
      outlineVariant: Color(0xff3f4947),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e1),
      inverseOnSurface: Color(0xff2b3230),
      inversePrimary: Color(0xff006a60),
      primaryFixed: Color(0xff9ef2e4),
      onPrimaryFixed: Color(0xff00201c),
      primaryFixedDim: Color(0xff82d5c8),
      onPrimaryFixedVariant: Color(0xff005048),
      secondaryFixed: Color(0xffcce8e2),
      onSecondaryFixed: Color(0xff05201c),
      secondaryFixedDim: Color(0xffb1ccc6),
      onSecondaryFixedVariant: Color(0xff334b47),
      tertiaryFixed: Color(0xffcce5ff),
      onTertiaryFixed: Color(0xff001e31),
      tertiaryFixedDim: Color(0xffadcae6),
      onTertiaryFixedVariant: Color(0xff2d4961),
      surfaceDim: Color(0xff0e1513),
      surfaceBright: Color(0xff343b39),
      surfaceContainerLowest: Color(0xff090f0e),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff1a211f),
      surfaceContainerHigh: Color(0xff252b2a),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData dark() {

    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {

    return const MaterialScheme(

      brightness: Brightness.dark,
      primary: Color(0xff86dacc),
      surfaceTint: Color(0xff82d5c8),
      onPrimary: Color(0xff001a17),
      primaryContainer: Color(0xff4a9e92),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb5d0ca),
      onSecondary: Color(0xff011a17),
      secondaryContainer: Color(0xff7c9691),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb1ceea),
      onTertiary: Color(0xff001829),
      tertiaryContainer: Color(0xff7894ae),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e1513),
      onBackground: Color(0xffdde4e1),
      surface: Color(0xff0e1513),
      onSurface: Color(0xfff6fcf9),
      surfaceVariant: Color(0xff3f4947),
      onSurfaceVariant: Color(0xffc3cdca),
      outline: Color(0xff9ba5a2),
      outlineVariant: Color(0xff7b8583),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e1),
      inverseOnSurface: Color(0xff252b2a),
      inversePrimary: Color(0xff005249),
      primaryFixed: Color(0xff9ef2e4),
      onPrimaryFixed: Color(0xff001512),
      primaryFixedDim: Color(0xff82d5c8),
      onPrimaryFixedVariant: Color(0xff003e37),
      secondaryFixed: Color(0xffcce8e2),
      onSecondaryFixed: Color(0xff001512),
      secondaryFixedDim: Color(0xffb1ccc6),
      onSecondaryFixedVariant: Color(0xff223b37),
      tertiaryFixed: Color(0xffcce5ff),
      onTertiaryFixed: Color(0xff001321),
      tertiaryFixedDim: Color(0xffadcae6),
      onTertiaryFixedVariant: Color(0xff1b394f),
      surfaceDim: Color(0xff0e1513),
      surfaceBright: Color(0xff343b39),
      surfaceContainerLowest: Color(0xff090f0e),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff1a211f),
      surfaceContainerHigh: Color(0xff252b2a),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData darkMediumContrast() {

    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {

    return const MaterialScheme(

      brightness: Brightness.dark,
      primary: Color(0xffebfffa),
      surfaceTint: Color(0xff82d5c8),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff86dacc),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebfffa),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb5d0ca),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff9fbff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb1ceea),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff0e1513),
      onBackground: Color(0xffdde4e1),
      surface: Color(0xff0e1513),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff3f4947),
      onSurfaceVariant: Color(0xfff3fdfa),
      outline: Color(0xffc3cdca),
      outlineVariant: Color(0xffc3cdca),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdde4e1),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff00302b),
      primaryFixed: Color(0xffa2f6e8),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff86dacc),
      onPrimaryFixedVariant: Color(0xff001a17),
      secondaryFixed: Color(0xffd1ede6),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb5d0ca),
      onSecondaryFixedVariant: Color(0xff011a17),
      tertiaryFixed: Color(0xffd4e9ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb1ceea),
      onTertiaryFixedVariant: Color(0xff001829),
      surfaceDim: Color(0xff0e1513),
      surfaceBright: Color(0xff343b39),
      surfaceContainerLowest: Color(0xff090f0e),
      surfaceContainerLow: Color(0xff161d1c),
      surfaceContainer: Color(0xff1a211f),
      surfaceContainerHigh: Color(0xff252b2a),
      surfaceContainerHighest: Color(0xff303635),
    );
  }

  ThemeData darkHighContrast() {

    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(

    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {

  const MaterialScheme({

    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {

  ColorScheme toColorScheme() {

    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
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