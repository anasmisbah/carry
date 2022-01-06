import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Text(
            "Categories",
            style: TextStyle(color: Color(0xFF202020)),
          ),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Image.asset("assets/icons/left.png"),
          ),
          backgroundColor: Color(0xFFF6F6F6),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {}, icon: Image.asset("assets/icons/cart.png"))
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Search unique furniture ..."),
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            RowCategory(
              titleFirst: "Living Room",
              imageFirst: "assets/icons/livingroom.png",
              titleSecond: "Bath Room",
              imageSecond: "assets/icons/bathroom.png",
            ),
            SizedBox(height: 20,),
            RowCategory(
              titleFirst: "Hole",
              imageFirst: "assets/icons/hole.png",
              titleSecond: "Bath Room",
              imageSecond: "assets/icons/livingroom.png",
            ),
            SizedBox(height: 20,),
            RowCategory(
              titleFirst: "Workspace",
              imageFirst: "assets/icons/workspace.png",
              titleSecond: "Bed Room",
              imageSecond: "assets/icons/bedroom.png",
            ),
          ],
        ));
  }
}

class RowCategory extends StatelessWidget {
  const RowCategory({
    Key? key, required this.imageFirst,required this.imageSecond,required this.titleFirst,required this.titleSecond,
  }) : super(key: key);

  final String imageFirst;
  final String imageSecond;
  final String titleFirst;
  final String titleSecond;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  child: Image.asset(
                    imageFirst,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(titleFirst),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  child: Image.asset(
                    imageSecond,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(titleSecond),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
