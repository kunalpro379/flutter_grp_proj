import 'package:flutter/material.dart';
import 'package:whatsapp/common/utils/colours.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static const lightmode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: Colours.greyLight,
    blueColor: Colours.blueLight,
    languageButtonBgColor: Color(0xFFF7F8FA),
    languageButtonHighLightColor: Color(0xFFE8E8ED),
    authAppbartextColor: Colours.greeLight,
    photoIconBgColor: Color(0xFFF0F2F3),
    photoIconColor: Color(0xFF9DAAB3),
  );
  static const darkMode = CustomThemeExtension(
    circleImageColor: Colours.greeDark,
    greyColor: Colours.greeDark,
    blueColor: Colours.blueDark,
    languageButtonBgColor: Color(0xFF182229),
    languageButtonHighLightColor: Color(0xFF09141A),
    authAppbartextColor: Color(0xFFE9EDEF),
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? languageButtonBgColor;
  final Color? languageButtonHighLightColor;
  final Color? authAppbartextColor;

  final Color? photoIconBgColor;
  final Color? photoIconColor;

  const CustomThemeExtension({
    this.photoIconBgColor,
    this.photoIconColor,
    this.blueColor,
    this.circleImageColor,
    this.greyColor,
    this.languageButtonBgColor,
    this.languageButtonHighLightColor,
    this.authAppbartextColor,
  });
  ThemeExtension<CustomThemeExtension> copyWith(
      {Color? circleImageColor,
      Color? greyColor,
      Color? blueColor,
      Color? languageButtonBgColor,
      Color? languageButtonHighLightColor,
      Color? photoIconBgColor,
      Color? photoIconColor,
      final Color? authAppbartextColor}) {
    return CustomThemeExtension(
      blueColor: blueColor ?? this.blueColor,
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      languageButtonHighLightColor:
          languageButtonHighLightColor ?? this.languageButtonHighLightColor,
      languageButtonBgColor:
          languageButtonBgColor ?? this.languageButtonBgColor,
      authAppbartextColor: authAppbartextColor ?? this.authAppbartextColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      languageButtonBgColor:
          Color.lerp(languageButtonBgColor, other.languageButtonBgColor, t),
      authAppbartextColor:
          Color.lerp(authAppbartextColor, other.authAppbartextColor, t),
      languageButtonHighLightColor: Color.lerp(
          languageButtonHighLightColor, other.languageButtonHighLightColor, t),
      // Provide a default color here if it can be null,

      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
    );
  }
}
