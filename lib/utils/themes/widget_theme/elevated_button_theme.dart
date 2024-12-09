import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/size.dart';


/* -- Light & Dark Elevated Button Themes -- */
class CAElevatedButtonTheme {
  CAElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CAColors.light,
      backgroundColor: CAColors.primary,
      disabledForegroundColor: CAColors.darkGrey,
      disabledBackgroundColor: CAColors.buttonDisabled,
      side: const BorderSide(color: CAColors.primary),
      padding: const EdgeInsets.symmetric(vertical: CASizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: CAColors.textWhite,
          fontWeight: FontWeight.w600,
          fontFamily: 'Satoshi'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CASizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CAColors.light,
      backgroundColor: CAColors.primary,
      disabledForegroundColor: CAColors.darkGrey,
      disabledBackgroundColor: CAColors.darkerGrey,
      side: const BorderSide(color: CAColors.primary),
      padding: const EdgeInsets.symmetric(
        vertical: CASizes.buttonHeight,
      ),
      textStyle: const TextStyle(
          fontSize: 16,
          color: CAColors.textWhite,
          fontWeight: FontWeight.w600,
          fontFamily: 'Satoshi'),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(CASizes.buttonRadius)),
    ),
  );
}