import 'package:flutter/material.dart';

abstract class Styles {
  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff296a48),
      surfaceTint: Color(0xff296a48),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaef2c6),
      onPrimaryContainer: Color(0xff085231),
      secondary: Color(0xff4e6355),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd1e8d6),
      onSecondaryContainer: Color(0xff374b3e),
      tertiary: Color(0xff8a4a64),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e4),
      onTertiaryContainer: Color(0xff6e334d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff6fbf4),
      onSurface: Color(0xff171d19),
      onSurfaceVariant: Color(0xff404942),
      outline: Color(0xff717972),
      outlineVariant: Color(0xffc0c9c0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inversePrimary: Color(0xff92d5ab),
      primaryFixed: Color(0xffaef2c6),
      onPrimaryFixed: Color(0xff002111),
      primaryFixedDim: Color(0xff92d5ab),
      onPrimaryFixedVariant: Color(0xff085231),
      secondaryFixed: Color(0xffd1e8d6),
      onSecondaryFixed: Color(0xff0c1f14),
      secondaryFixedDim: Color(0xffb5ccba),
      onSecondaryFixedVariant: Color(0xff374b3e),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff390720),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff6fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ee),
      surfaceContainer: Color(0xffeaefe8),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdfe4dd),
    );
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff92d5ab),
      surfaceTint: Color(0xff92d5ab),
      onPrimary: Color(0xff003920),
      primaryContainer: Color(0xff085231),
      onPrimaryContainer: Color(0xffaef2c6),
      secondary: Color(0xffb5ccba),
      onSecondary: Color(0xff213528),
      secondaryContainer: Color(0xff374b3e),
      onSecondaryContainer: Color(0xffd1e8d6),
      tertiary: Color(0xffffb0cd),
      onTertiary: Color(0xff531d36),
      tertiaryContainer: Color(0xff6e334d),
      onTertiaryContainer: Color(0xffffd9e4),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdfe4dd),
      onSurfaceVariant: Color(0xffc0c9c0),
      outline: Color(0xff8a938b),
      outlineVariant: Color(0xff404942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dd),
      inversePrimary: Color(0xff296a48),
      primaryFixed: Color(0xffaef2c6),
      onPrimaryFixed: Color(0xff002111),
      primaryFixedDim: Color(0xff92d5ab),
      onPrimaryFixedVariant: Color(0xff085231),
      secondaryFixed: Color(0xffd1e8d6),
      onSecondaryFixed: Color(0xff0c1f14),
      secondaryFixedDim: Color(0xffb5ccba),
      onSecondaryFixedVariant: Color(0xff374b3e),
      tertiaryFixed: Color(0xffffd9e4),
      onTertiaryFixed: Color(0xff390720),
      tertiaryFixedDim: Color(0xffffb0cd),
      onTertiaryFixedVariant: Color(0xff6e334d),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff171d19),
      surfaceContainer: Color(0xff1b211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff313632),
    );
  }

  static const TextStyle productRowItemName = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle productRowTotal = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 0.8),
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productRowItemPrice = TextStyle(
    color: Color(0xFF8E8E93),
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle searchText = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle deliveryTime = TextStyle(
    color: Colors.grey,
  );
}
