import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/view/MyCart1.dart';

import '../view/home1page1.dart';
//import '../view/login2.dart';
import '../view/setting2.dart';

class Bottonnevbar extends StatelessWidget {
  const Bottonnevbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 55.h,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: const Color.fromARGB(255, 171, 195, 238)),
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Get.to(Home1page1());
              },
              icon: Image.asset("images/home (1) 1.png")),
          IconButton(
              onPressed: () {
                Get.to(My_Cart2());
              },
              icon: Image.asset("images/shopping-basket (1) 2.png")),
          IconButton(
              onPressed: () {
                Get.to(Setting2());
              },
              icon: Image.asset("images/user (2) 1.png")),
          IconButton(
              onPressed: () {
                // Get.to(() => Login3());
              },
              icon: Image.asset("images/Ellipse 4.png")),
        ],
      ),
    );
  }
}
