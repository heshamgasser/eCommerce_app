import 'package:flutter/material.dart';

class FavoritesItemModel {
  String imagePath;
  String productName;
  String productColor;
  Color color;
  String salePrice;
  String originalPrice;

  FavoritesItemModel(
      {required this.imagePath,
      required this.productName,
      required this.productColor,
      required this.color,
      required this.salePrice,
      required this.originalPrice});

  static List<FavoritesItemModel> getFavoritesItem() {
    return [
      FavoritesItemModel(
          imagePath: 'https://cdn.pixabay.com/photo/2015/04/19/08/32/rose-729509_1280.jpg',
          productName: 'Nike Air Jordon',
          productColor: 'Black Color',
          color: Colors.black,
          salePrice: 'EGP 1,200',
          originalPrice: 'EGP 1,500'),
      FavoritesItemModel(
          imagePath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuEf0Ri9LgxfWiEtmmPp0RfMB3J9WXVCJVNzHLYZFfN1BM9UmSpor4fkTlLk481plV4UI&usqp=CAU',
          productName: 'Nike',
          productColor: 'Orange Color',
          color: Colors.orange,
          salePrice: 'EGP 1,000',
          originalPrice: 'EGP 1,300'),
      FavoritesItemModel(
          imagePath: 'https://cdn.pixabay.com/photo/2018/02/24/20/39/clock-3179167_640.jpg',
          productName: 'Watch',
          productColor: 'Silver Color',
          color: Colors.grey,
          salePrice: 'EGP 750',
          originalPrice: 'EGP 1,000'),
      FavoritesItemModel(
          imagePath: 'https://cdn.pixabay.com/photo/2016/03/27/19/43/samsung-1283938_1280.jpg',
          productName: 'Mobile',
          productColor: 'Green Color',
          color: Colors.green,
          salePrice: 'EGP 6,000',
          originalPrice: 'EGP 7,00'),
    ];
  }
}
