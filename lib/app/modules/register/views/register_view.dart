import 'package:carry/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
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
            fit: BoxFit.cover,
          ),
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
                child: Image.asset("assets/images/logo.png"),
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
                    "Full Name",
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
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
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
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
                    "Phone Number",
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
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Verification Code",
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
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("GET"),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFE9C8F),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: Text("Terms and condtion"),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Color(0xFFFE9C8F),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Already have an account ?",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 75),
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFE9C8F),
                      padding: EdgeInsets.symmetric(vertical: 20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
