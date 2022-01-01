import 'package:carry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.png",
            ),
            fit: BoxFit.cover),
      ),
      child: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 120,
            child: Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                label: Text(
                  "Username/Email",
                  style: TextStyle(
                    color: Color(0xFFB2B2B2),
                    fontSize: 16,
                  ),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFB2B2B2))),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFFB2B2B2),
                      fontSize: 16,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFB2B2B2)),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color(0xFF202020),
                    fontSize: 12,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Don’t have account ?"),
                    Text(
                      "Sign up now",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        primary: Color(0xFF3C98EE)
                      ),
                      child: Image.asset("assets/icons/google.png")),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        primary: Colors.black
                      ),
                      child: Image.asset("assets/icons/apple.png")),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 75),
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.LOGIN);
                },
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFE9C8F),
                    padding: EdgeInsets.symmetric(vertical: 20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOGIN",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/icons/arrow-right.png",
                      fit: BoxFit.contain,
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}
