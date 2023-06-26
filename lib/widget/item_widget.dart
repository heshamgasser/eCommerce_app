import 'package:ecommerce_app/model/favorites_item_model.dart';
import 'package:ecommerce_app/styles/app_text_style.dart';
import 'package:ecommerce_app/widget/elevated_button.dart';
import 'package:ecommerce_app/widget/product_image.dart';
import 'package:ecommerce_app/widget/product_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  FavoritesItemModel favoritesItemModel;


  ItemWidget(this.favoritesItemModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.h,
      width: 398.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: Color(0xFF004182).withOpacity(.3),
        ),
      ),
      child: Row(
        children: [
          ProductImage(
              imagePath:
                  favoritesItemModel.imagePath),
          SizedBox(width: 8.w),
          Container(
            width: 265.w,
            height: 195.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductName(productName: favoritesItemModel.productName),
                      Spacer(),
                      Container(
                        width: 37.w,
                        height: 37.h,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(blurRadius: 2)],
                            color: Colors.white,
                            shape: BoxShape.circle),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Color(0xFF004182),
                            size: 20.r,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.r,
                        backgroundColor: favoritesItemModel.color,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        favoritesItemModel.productColor,
                        style: AppTextStyle.productColorStyle,
                      ),
                    ],
                  ),
                  SizedBox(height: 14.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          favoritesItemModel.salePrice,
                          style: AppTextStyle.productSalePriceStyle,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Expanded(
                        child: Text(favoritesItemModel.originalPrice,
                            style: AppTextStyle.productOriginalPriceStyle),
                      ),
                      DefaultElevatedButton(
                          buttonText: 'Add to Cart', onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
