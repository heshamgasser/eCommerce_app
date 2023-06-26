import 'package:ecommerce_app/model/favorites_item_model.dart';
import 'package:ecommerce_app/widget/default_textFormField.dart';
import 'package:ecommerce_app/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritesScreen extends StatelessWidget {
  static const String routeName = 'Favorites Screen';
List<FavoritesItemModel> items = FavoritesItemModel.getFavoritesItem();
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: AlignmentDirectional.topStart,
              height: 22.h,
              width: 66.w,
              child: Image.asset('assets/images/route_logo.png'),
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                Expanded(
                  child:
                      DefaultTextFormField(hintText: 'what do you Search for?', controller: searchController),
                ),
                SizedBox(width: 15.w),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Color(0xFF004182),
                    size: 35.w,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.h),

            Expanded(
              child: ListView.separated(itemBuilder: (context, index) {
                return ItemWidget(items[index]);
              }, separatorBuilder: (context, index) {
                return SizedBox(height: 37.h);
              }, itemCount: items.length),
            )


          ],
        ),
      ),
    );
  }
}
