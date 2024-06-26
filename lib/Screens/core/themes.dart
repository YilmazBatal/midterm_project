import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';

final lightTheme = FlexThemeData.light(
  colors: const FlexSchemeColor(
    // Light theme color scheme
    primary: Color(0xff1695d8),
    primaryContainer: Color(0xffd0e4ff),
    secondary: Color(0xffac3306),
    secondaryContainer: Color(0xffffdbcf),
    tertiary: Color(0xff006875),
    tertiaryContainer: Color(0xff95f0ff),
    appBarColor: Color(0xffffdbcf),
    error: Color(0xffb00020),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    // Light theme sub-theme data
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    textButtonRadius: 4.0,
    textButtonSchemeColor: SchemeColor.onBackground,
    filledButtonRadius: 4.0,
    elevatedButtonRadius: 4.0,
    elevatedButtonSchemeColor: SchemeColor.onBackground,
    elevatedButtonSecondarySchemeColor: SchemeColor.background,
    outlinedButtonRadius: 4.0,
    outlinedButtonSchemeColor: SchemeColor.onBackground,
    outlinedButtonOutlineSchemeColor: SchemeColor.outlineVariant,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    drawerRadius: 0.0,
    drawerElevation: 0.0,
    drawerBackgroundSchemeColor: SchemeColor.background,
    bottomSheetRadius: 0.0,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: "Poppins",
);

final darkTheme = FlexThemeData.dark(
  colors: const FlexSchemeColor(
    // Dark theme color scheme
    primary: Color(0xff9fc9ff),
    primaryContainer: Color(0xff00325b),
    secondary: Color(0xffffb59d),
    secondaryContainer: Color(0xff872100),
    tertiary: Color(0xff86d2e1),
    tertiaryContainer: Color(0xff004e59),
    appBarColor: Color(0xff872100),
    error: Color(0xffcf6679),
  ),
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    // Dark theme sub-theme data
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    textButtonRadius: 4.0,
    textButtonSchemeColor: SchemeColor.onBackground,
    filledButtonRadius: 4.0,
    elevatedButtonRadius: 4.0,
    elevatedButtonSchemeColor: SchemeColor.onBackground,
    elevatedButtonSecondarySchemeColor: SchemeColor.background,
    outlinedButtonRadius: 4.0,
    outlinedButtonSchemeColor: SchemeColor.onBackground,
    outlinedButtonOutlineSchemeColor: SchemeColor.outlineVariant,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
    drawerRadius: 0.0,
    drawerElevation: 0.0,
    drawerBackgroundSchemeColor: SchemeColor.background,
    bottomSheetRadius: 0.0,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  fontFamily: "Poppins",
);
