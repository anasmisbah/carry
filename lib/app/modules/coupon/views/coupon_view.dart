import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coupon_controller.dart';

class CouponView extends GetView<CouponController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          title: Text(
            "Coupon",
            style: TextStyle(
                color: Color(0xFF202020), fontWeight: FontWeight.bold),
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
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Discount Coupon",
                    style: TextStyle(fontSize: 12),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Apply",
                      style: TextStyle(color: Color(0xFF202020)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: [
                    CouponItem(
                      color: Color(0xFFFE9C8F),
                      codeCoupon: "2019CFK",
                      discount: "50%OFF",
                      furniture: "assets/images/property-1.png",
                    ),
                    CouponItem(
                      color: Color(0xFF202020),
                      codeCoupon: "2019CFK",
                      discount: "\$10/OFF",
                      furniture: "assets/images/property-2.png",
                    ),
                    CouponItem(
                      color: Color(0xFFFF7878),
                      codeCoupon: "2019CFK",
                      discount: "\$50/OFF",
                      furniture: "assets/images/property-3.png",
                    ),
                    CouponItem(
                      color: Color(0xFFFFB978),
                      codeCoupon: "2019CFK",
                      discount: "\$20/OFF",
                      furniture: "assets/images/property-4.png",
                    ),
                    CouponItem(
                      color: Color(0xFF8B78FF),
                      codeCoupon: "2019CFK",
                      discount: "\$20/OFF",
                      furniture: "assets/images/property-5.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class CouponItem extends StatelessWidget {
  const CouponItem({
    Key? key,
    required this.color,
    required this.discount,
    required this.codeCoupon,
    required this.furniture,
  }) : super(key: key);

  final Color color;
  final String discount;
  final String codeCoupon;
  final String furniture;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  topRight: Radius.circular(100)),
              color: Color(0xFFF6F6F6),
              shape: BoxShape.rectangle,
            ),
            height: 45,
            width: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  discount,
                  style: TextStyle(color: Color(0xFFF6F6F6), fontSize: 34),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    codeCoupon,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: color,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Valid Between 24/09 and 30/09",
                  style: TextStyle(
                    color: Color(0xFFF6F6F6),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                  furniture,
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              color: Color(0xFFF6F6F6),
              shape: BoxShape.rectangle,
            ),
            height: 45,
            width: 25,
          ),
        ],
      ),
    );
  }
}
