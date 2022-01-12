import 'package:carry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/furniture_controller.dart';

class FurnitureView extends GetView<FurnitureController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        title: Text(
          "Living Room",
          style:
              TextStyle(color: Color(0xFF202020), fontWeight: FontWeight.bold),
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
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(color: Colors.white),
                          child: ListView(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.close),
                                  Text(
                                    "Filter",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(
                                        color: Color(0xFFFE9C8F),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Price Range",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        label: Text("Minimum"),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFB2B2B2),
                                          ),
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 1,
                                    width: 15,
                                    color: Colors.black,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        label: Text("Maximum"),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFB2B2B2),
                                          ),
                                        ),
                                        fillColor: Colors.white,
                                        filled: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Item Filter",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FilterItem(
                                icon: "assets/icons/discount.png",
                                selected: true,
                                title: "Discount",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FilterItem(
                                icon: "assets/icons/shipping.png",
                                selected: false,
                                title: "Free Shipping",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FilterItem(
                                icon: "assets/icons/installment_plan.png",
                                selected: false,
                                title: "Installment Plan",
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Item Color",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFEB2A8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFEC8C1),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFAD9C1),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF9CAA7),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(30),
                                        boxShadow: [BoxShadow()]),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("APPLY FILTER"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFE9C8F),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20,
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
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 15,
                            child: Image.asset(
                              "assets/icons/filter_primary.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFE9C8F),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          child: Image.asset(
                            "assets/icons/controls.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sort",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF202020),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                          child: Image.asset(
                            "assets/icons/controls.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "List",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF202020),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 0.7,
              children: <Widget>[
                FurniturItem(
                  image: "assets/images/furniture-1.png",
                ),
                FurniturItem(
                  image: "assets/images/furniture-2.png",
                ),
                FurniturItem(
                  image: "assets/images/furniture-3.png",
                ),
                FurniturItem(
                  image: "assets/images/furniture-4.png",
                ),
                FurniturItem(
                  image: "assets/images/furniture-5.png",
                ),
                FurniturItem(
                  image: "assets/images/furniture-6.png",
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  const FilterItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.selected,
  }) : super(key: key);

  final String icon;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF363636).withOpacity(0.4),
            width: 0.4,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30,
                child: Image.asset(
                  icon,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          selected ? Image.asset("assets/icons/check.png") : SizedBox(),
        ],
      ),
    );
  }
}

class FurniturItem extends StatelessWidget {
  const FurniturItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DETAIL_FURNITURE);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 143,
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF000000),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Text(
                      "30%",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Chair Dacey li - Black",
              style: TextStyle(
                color: Color(0xFF202020),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "\$50.00",
                  style: TextStyle(
                    color: Color(0xFFFE9C8F),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "\$80.00",
                  style: TextStyle(
                    color: Color(0xFFB1ADAD).withOpacity(0.4),
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      height: 12,
                      child: Image.asset(
                        "assets/icons/star_gold.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("5.0"),
                  ],
                ),
                Container(
                  height: 18,
                  child: Image.asset(
                    "assets/icons/heart_primary.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
