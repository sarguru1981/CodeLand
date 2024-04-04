import 'package:flutter/material.dart';

class AppTextStyles {
  // Define font families
  static const String poppinsBold = 'Poppins-bold';
  static const String poppinsMedium = 'Poppins-medium';
  static const String poppinsRegular = 'Poppins-regular';
  static const String poppinsLight = 'Poppins-light';

  // Base text style with common properties
  static TextStyle baseTextStyle = const TextStyle(
    color: Color(0xFF000000),
    fontFamily: poppinsRegular, // Default to regular font
    letterSpacing: 0.2,
    height: 1.0,
  );


  static TextStyle biomedicalKiosk = baseTextStyle.copyWith(
    fontFamily: poppinsBold,
    color: const Color(0xFF201F1F),
    fontSize: 20,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static TextStyle forHCEText = baseTextStyle.copyWith(
    fontFamily: poppinsBold,
    color: const Color(0xFFFF7709),
    fontSize: 10,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleText = baseTextStyle.copyWith(
    fontFamily: poppinsBold,
    color: const Color(0xFF635C5C),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );

  static TextStyle loginText = baseTextStyle.copyWith(
    fontFamily: poppinsBold,
    color: const Color(0xFFFFFFFF),
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bottomText = baseTextStyle.copyWith(
    fontFamily: poppinsRegular,
    color: const Color(0xFF000000),
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static TextStyle imageButtonText = baseTextStyle.copyWith(
    fontFamily: poppinsRegular,
    color: const Color(0xFF000000),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

}
