import 'package:ecommerce_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTextFormField extends StatelessWidget {
  String hintText;
  TextEditingController controller;

  DefaultTextFormField({required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 25.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(color: Color(0xFF004182),),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(color: Color(0xFF004182),),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide(color: Color(0xFF004182),),
        ),

        hintText: hintText,
        hintStyle: AppTextStyle.hintStyle,
        prefixIcon: Icon(Icons.search, size: 30, color: Color(0xFF004182),),
      ),
    );
  }
}
