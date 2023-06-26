import 'package:ecommerce_app/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  String productName;


  ProductName({required this.productName});

  @override
  Widget build(BuildContext context) {
    return  Text(
      productName,
      style: AppTextStyle.productNameStyle,
    );
  }
}
