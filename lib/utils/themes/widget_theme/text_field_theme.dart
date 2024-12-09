import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/size.dart';

class CATextFormFieldTheme {
  CATextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CAColors.dark,
    suffixIconColor: CAColors.darkGrey,
    filled: true,
    fillColor: CAColors.white,
    // constraints: const BoxConstraints.expand(height: ),
    labelStyle: const TextStyle()
        .copyWith(fontSize: CASizes.fontSizeMd, color: CAColors.darkGrey),
    hintStyle: const TextStyle()
        .copyWith(fontSize: CASizes.fontSizeSm, color: CAColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: CAColors.black.withOpacity(0.78)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 0.78, color: CAColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 0.78, color: CAColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 0.78, color: CAColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 0.78, color: CAColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 0.78, color: CAColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: CAColors.darkGrey,
    suffixIconColor: CAColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: CASizes.fontSizeMd, color: CAColors.darkGrey),
    hintStyle: const TextStyle()
        .copyWith(fontSize: CASizes.fontSizeSm, color: CAColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: CAColors.white.withOpacity(0.78)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CAColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CAColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CAColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CAColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(CASizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: CAColors.warning),
    ),
  );
}
