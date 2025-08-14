import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  // TextStyle HeadingStyle() {
  //   return Theme.of(Get.context!).textTheme.displayLarge!;
  // }
  //
  // TextStyle NoteStyle() {
  //   return Theme.of(
  //     Get.context!,
  //   ).textTheme.labelSmall!.copyWith(color: Colors.black);
  // }
  //
  // TextStyle TabBarTitle() {
  //   return Theme.of(
  //     Get.context!,
  //   ).textTheme.displayMedium!.copyWith(color: PodGreenParse);
  // }

  ThemeData myThemeData() {
    return ThemeData(
      brightness:  Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      textTheme: _TextTheme(),
      useMaterial3: false,
    );
  }

  ThemeData myThemeDataDark() {
    return ThemeData(
      brightness:  Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      textTheme: _TextTheme(),
      useMaterial3: false,
    );
  }

  TextTheme _TextTheme() {
    return TextTheme(
      titleLarge: GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),

      displayLarge: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),

      bodyLarge: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),

      labelLarge: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.1,
      ),
    );
  }


}
