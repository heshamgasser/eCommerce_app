import 'package:ecommerce_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultElevatedButton extends StatelessWidget {
  String buttonText;
  Function onPressed;


  DefaultElevatedButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
        backgroundColor: Color(0xFF004182),
        fixedSize: Size(120.w, 5.h),
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        buttonText,
        style: AppTextStyle.elevatedButtonText
      ),
    );
  }
}
