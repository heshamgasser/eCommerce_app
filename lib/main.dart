import 'package:ecommerce_app/screen/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(const FavoritesView());
}

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return   MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          FavoritesScreen.routeName: (context) => FavoritesScreen(),
        },
        initialRoute: FavoritesScreen.routeName,
      );
    },);



  }
}



