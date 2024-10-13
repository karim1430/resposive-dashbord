import 'package:flutter/material.dart';

abstract class AppStyle {
  static const TextStyle styleRegular16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle styleMediam16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      color: Color(0xff064061));

  static const TextStyle styleSemiBold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    color: Color(0xff064061),
  );

  static const TextStyle styleSemiBold20 = TextStyle(
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Color(0xff064061));

  static const TextStyle styleRegular12 = TextStyle(
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular14 = TextStyle(
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Color(0xffAAAAAA));
  static const TextStyle styleSemiBold18 = TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleBold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  static const TextStyle styleMediam20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}
