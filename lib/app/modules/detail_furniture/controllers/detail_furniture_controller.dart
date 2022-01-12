import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailFurnitureController extends GetxController {
  var current = 0.obs;
  final CarouselController controller = CarouselController();

  final List<String> imgList = [
    'assets/images/detail-furniture.png',
    'assets/images/detail-furniture.png',
    'assets/images/detail-furniture.png',
  ];
  List<Widget> get imageSliders => imgList
      .map(
        (item) => Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset(item, fit: BoxFit.contain, width: 1000.0),
        ),
      )
      .toList();
  @override
  void onInit() {
    // TODO: implement onInit
    print(Get.width);
    super.onInit();
  }
}
