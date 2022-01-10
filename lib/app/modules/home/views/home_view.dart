import 'package:carry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 60,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Furniture Shop",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF202020),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Get unique furniture from home",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFB2B2B2),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/cart.png"))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
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
            SizedBox(
              height: 35,
            ),
            TitleSection(
              title: "Furniture Shop",
              onTap: () {
                Get.toNamed(Routes.CATEGORY);
              },
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CategoryItem(
                      title: "Living Room",
                      icon: "assets/icons/livingroom.png",
                    ),
                    CategoryItem(
                      title: "Bath Room",
                      icon: "assets/icons/bathroom.png",
                    ),
                    CategoryItem(
                      title: "Hole",
                      icon: "assets/icons/hole.png",
                    ),
                    CategoryItem(
                      title: "Kitchen",
                      icon: "assets/icons/kitchen.png",
                    ),
                    CategoryItem(
                      title: "Workspace",
                      icon: "assets/icons/workspace.png",
                    ),
                    CategoryItem(
                      title: "Bed Room",
                      icon: "assets/icons/bedroom.png",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleSection(
              title: "Today's Promo",
              onTap: () {
                Get.toNamed(Routes.FURNITURE);
              },
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    PromoItem(
                      discount: "50%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-1.png",
                    ),
                    PromoItem(
                      discount: "60%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-2.png",
                    ),
                    PromoItem(
                      discount: "55%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-3.png",
                    ),
                    PromoItem(
                      discount: "40%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property4.png",
                    ),
                    PromoItem(
                      discount: "35%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-5.png",
                    ),
                    PromoItem(
                      discount: "60%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-6.png",
                    ),
                    PromoItem(
                      discount: "50%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-7.png",
                    ),
                    PromoItem(
                      discount: "20%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-8.png",
                    ),
                    PromoItem(
                      discount: "10%OFF",
                      date: "30 September 2019",
                      image: "assets/images/property-9.png",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleSection(
              title: "Trending Furniture",
              onTap: () {
                print("clicked");
              },
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleSection(
              title: "New Arrival Furniture",
              onTap: () {
                print("clicked");
              },
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-1.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 210,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/trending-2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class PromoItem extends StatelessWidget {
  const PromoItem({
    Key? key,
    required this.discount,
    required this.date,
    required this.image,
  }) : super(key: key);

  final String discount;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(8),
      width: 240,
      height: 130,
      color: Colors.white,
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "All Item Furniture Discount Up to",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF202020),
                  ),
                ),
                Text(
                  discount,
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF464646),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Color(0xFFBFBFBF),
                      borderRadius: BorderRadius.circular(2)),
                  child: Text(
                    date,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Container(
              width: 110,
              child: Image.asset(image),
            ),
          )
        ],
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(
                0xFF202020,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "View all",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFFE9C8F),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: onTap,
                child: Container(
                  height: 20,
                  child: Image.asset(
                    "assets/icons/arrow-left.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  CategoryItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      height: 150,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 75,
            child: Image.asset(
              icon,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title),
        ],
      ),
    );
  }
}
