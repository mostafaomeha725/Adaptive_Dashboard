import 'package:flutter/material.dart';

abstract class Appstyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleRegular16white(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xffffffff),
    );
  }

  static TextStyle styleRegular16gray(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
      color: const Color(0xff208CC8),
    );
  }

  static TextStyle styleMedium16gray(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleMedium16blue(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold20green(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff7DD97B),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemiBold24white(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemiBold18white(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1700;
  }
}
