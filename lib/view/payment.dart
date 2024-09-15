import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/darkthemcontroller.dart';
import 'package:login_flower/controller/localeize1controller.dart';

import '../models/bottonnevbar.dart';
import 'payment22.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                    //alignment: Alignment.bottomLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                        )),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    alignment: Alignment.center,
                    child: Text(
                      '40'.tr,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 32, 14, 36)),
                    ),
                  ),
                ]),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 52.w),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: '41'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 52.w),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: '42'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 52.w),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: '43'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 52.w),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: '44'.tr,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 52.w),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0.1),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: '45'.tr,
                        ),
                      ),
                    ),
                    Container(
                        width: 320.w,
                        height: 25.h,
                        color: Colors.white,
                        // margin: const EdgeInsets.only(),
                        //alignment: Alignment.center,
                        child: Text("46".tr))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //  minimumSize:  Size(150, 30), // الحجم الأدنى
                  fixedSize: Size(150.w, 30.h), // الحجم الثابت
                  foregroundColor: Color.fromARGB(255, 74, 42, 95),
                  backgroundColor: Color.fromARGB(207, 241, 160, 191),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Text("47".tr)),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(Payment22());
                },
                style: ElevatedButton.styleFrom(
                  //minimumSize: const Size(100, 50), // الحجم الأدنى
                  fixedSize: Size(110.w, 50.h), // الحجم الثابت
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 73, 14, 128),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Text("48".tr)),
            Container(
              alignment: Alignment.center,
              width: 200.w,
              height: 200.h,
              child: Image.asset("images/flower payment.png"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottonnevbar(),
    );
  }
}
