import 'package:flutter/material.dart';

import '../common.dart';

// ignore: avoid_classes_with_only_static_members
class LightTheme {
  static ThemeData data = ThemeData.light().copyWith(
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    scaffoldBackgroundColor: Colors.white,
    disabledColor: AppColors.disabledLightColor,
    textTheme: text,
    cardTheme: card,
    appBarTheme: appBar,
    buttonTheme: button,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(Dimens.dp20),
        ),
      ),
    ),
  );

  static ButtonThemeData button = ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.disabledLightColor,
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.dp12,
        horizontal: Dimens.dp24,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(Dimens.roundedButton),
      ));

  static CardTheme card = CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.dp8),
        side: BorderSide.none,
      ));

  static AppBarTheme appBar = const AppBarTheme(
    elevation: 1,
  );

  static TextTheme text = const TextTheme(
    // Use for body text
    bodyText1: TextStyle(
      color: AppColors.regularLightTextColor,
      fontSize: Dimens.dp12,
    ),
    bodyText2: TextStyle(
      color: AppColors.regularLightTextColor,
      fontSize: Dimens.dp12,
    ),
    // Use for heading text
    headline5: TextStyle(
      color: AppColors.strongLightTextColor,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.dp20,
    ),
    // Use for title text, Appbar
    headline6: TextStyle(
      color: AppColors.strongLightTextColor,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.dp16,
    ),
    // Use for sub title text
    subtitle1: TextStyle(
      color: AppColors.strongLightTextColor,
      fontWeight: FontWeight.w600,
      fontSize: Dimens.dp14,
    ),
    button: TextStyle(
      fontSize: Dimens.dp14,
      fontWeight: FontWeight.w600,
    ),
  );
}
