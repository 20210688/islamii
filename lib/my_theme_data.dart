import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 Color primaryColor=Color(0xffB7935F);
 Color primaryDarkColor=Color(0xff141A2E);
 Color blackColor=Color(0xff242424);
 Color yellowColor=Color(0xffFACC1D);
class MyThemeData {

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
      dividerColor:primaryColor,
      bottomNavigationBarTheme:BottomNavigationBarThemeData(
        type:BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ) ,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          size: 30,
          color: Color(0xff242424),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
       // titleTextStyle: ,
      ),
       textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, color: blackColor, fontWeight: FontWeight.w700
      ),
      bodyMedium:GoogleFonts.elMessiri(
          fontSize: 25, color: blackColor, fontWeight: FontWeight.w700
      ),
      bodySmall:GoogleFonts.elMessiri(
          fontSize: 20, color: blackColor, fontWeight: FontWeight.w700
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    dividerColor:yellowColor,
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      type:BottomNavigationBarType.fixed,
      backgroundColor: primaryDarkColor,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ) ,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 30,
        color: Colors.white,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      // titleTextStyle: ,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30, color: yellowColor, fontWeight: FontWeight.w700
      ),
      bodyMedium:GoogleFonts.elMessiri(
          fontSize: 25, color: yellowColor, fontWeight: FontWeight.w700
      ),
      bodySmall:GoogleFonts.elMessiri(
          fontSize: 20, color: yellowColor, fontWeight: FontWeight.w700
      ),
    ),
  );
}
