import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custon_theme_extension.dart';
import 'package:whatsapp/common/utils/colours.dart';
import 'package:whatsapp/main.dart';

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(
      primary: Colours.backgroundDark, // Replace with your custom primary color
    ),
    scaffoldBackgroundColor: Colours.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colours.greeDark,
        foregroundColor: Colours.greeDark,
        elevation: 1,
        shadowColor: Colors.transparent,
      ),
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
          headline6: TextStyle(
            color: Colors.white, // Text color for dark theme
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          // Define other text styles as needed
        ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colours.greybackground,
      modalBackgroundColor: Colours.greybackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
  );
}
