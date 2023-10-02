import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';
import 'package:whatsapp/common/utils/colours.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(
      primary: Colours.backgroundLight,
    ),
    scaffoldBackgroundColor: Colours.backgroundLight,
    extensions: [
      CustomThemeExtension.lightmode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greeLight,
        foregroundColor: Colours.greeLight,
        elevation: 1,
        shadowColor: Colors.transparent,
      ),
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
          headlineLarge: TextStyle(
            color: Colors.black, // Text color for light theme
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          // Define other text styles as needed
        ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colours.backgroundLight,
      modalBackgroundColor: Colours.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
  );
}
