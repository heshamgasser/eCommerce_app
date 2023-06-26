import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle hintStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w300,
    fontSize: 14.sp,
    color: Color(0xFF06004F).withOpacity(.6),
  );

  static TextStyle elevatedButtonText = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );

  static TextStyle productNameStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500, fontSize: 18.sp, color: Color(0xFF06004F));

  static TextStyle productColorStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: Color(0xFF06004F),
  );

  static TextStyle productSalePriceStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 13.sp,
    color: Color(0xFF06004F),
  );

  static TextStyle productOriginalPriceStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: Color(0xFF06004F),
    decoration: TextDecoration.lineThrough,
    decorationColor: Color(0xFF004182).withOpacity(.6),
  );
}
