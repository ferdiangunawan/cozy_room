import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

Color purpleColor = Color(0xff5843BE);
Color orangeColor = Color(0xffFF9376);
Color blackColor = Color(0xff000000);
Color whiteColor = Color(0xffFFFFFF);
Color greyColor = Color(0xff82868E);

TextStyle blackTextStyle = GoogleFonts.poppins()
    .copyWith(fontWeight: FontWeight.w500, color: blackColor);
TextStyle whitetextStyle = GoogleFonts.poppins()
    .copyWith(fontWeight: FontWeight.w500, color: whiteColor);
TextStyle greyTextStyle = GoogleFonts.poppins()
    .copyWith(fontWeight: FontWeight.w300, color: greyColor);
TextStyle purpleTextStyle = GoogleFonts.poppins()
    .copyWith(fontWeight: FontWeight.w500, color: purpleColor);
TextStyle regularTextStyle = GoogleFonts.poppins()
    .copyWith(fontWeight: FontWeight.w400, color: blackColor);
const double defaultMargin = 24;