import 'package:calclulator/utils/themes/widget_theme/elevated_button_theme.dart';
import 'package:calclulator/utils/themes/widget_theme/text_field_theme.dart';
import 'package:calclulator/utils/themes/widget_theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CAAppTheme{
  CAAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Satoshi',
    disabledColor: CAColors.grey,
    brightness: Brightness.light,
    primaryColor: CAColors.primary,
    textTheme: CATextTheme.lightTextTheme,
    scaffoldBackgroundColor: CAColors.white,
    elevatedButtonTheme: CAElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: CATextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Satoshi',
    disabledColor: CAColors.grey,
    brightness: Brightness.dark,
    primaryColor: CAColors.primary,
    textTheme: CATextTheme.darkTextTheme,
    scaffoldBackgroundColor: CAColors.black,
    elevatedButtonTheme: CAElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: CATextFormFieldTheme.darkInputDecorationTheme,

  );
}