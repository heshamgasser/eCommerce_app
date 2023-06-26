import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImage extends StatelessWidget {
  String imagePath;


  ProductImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 195.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Color(0xFF004182),
        ),
      ),
      child: ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(15.r),
          child: Image.network(imagePath, fit: BoxFit.fill, )),
    );
  }
}
