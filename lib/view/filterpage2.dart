import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/darkthemcontroller.dart';
import 'package:login_flower/controller/localeize1controller.dart';
import 'package:login_flower/models/bottonnevbar.dart';

import '../models/flower_P_h.dart';

class Filterpage2 extends StatelessWidget {
  Filterpage2({super.key});
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColorLight,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 297.h,
              width: 430.w,
              child: FlowerPH(),
            ),

            ///
            ///

            //

            Container(
              margin: EdgeInsets.only(
                  left: 50.w, right: 50.w, top: 20.h, bottom: 20),
              child: Text(
                '2'.tr,
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 16, 95),
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 15.h),
              child: Expanded(
                child: Wrap(
                  spacing: 20.w,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: 66,
                        height: 40,
                        //  padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(2)),
                        child:
                            TextButton(onPressed: () {}, child: Text("3".tr)),
                      ),
                    ),
                    // SizedBox(
                    //   width: 30.w,
                    // ),
                    Expanded(
                      child: Container(
                        width: 111.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(2)),
                        // padding: EdgeInsets.only(left: 20, top: 10),
                        child:
                            TextButton(onPressed: () {}, child: Text("4".tr)),
                      ),
                    ),
                    // SizedBox(
                    //   width: 30.w,
                    // ),
                    Expanded(
                      child: Container(
                        width: 111.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(2)),
                        // padding: EdgeInsets.only(left: 20, top: 10),
                        child:
                            TextButton(onPressed: () {}, child: Text("5".tr)),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///
            ///
            ///
            ///

            SizedBox(
              height: 30.h,
            ),

            ///
            ///
            ///
            ///

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                "18".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(
              height: 14.h,
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              child: Wrap(
                spacing: 6.w,
                runAlignment: WrapAlignment.start,
                runSpacing: 10.h,
                // alignment: WrapAlignment.spaceBetween,
                //alignment: WrapAlignment.center,
                children: [
                  Container(
                    width: 55.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(179, 243, 243, 243),
                        ),
                        color: Color.fromARGB(179, 236, 236, 236),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '19'.tr,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 72.w,
                    height: 40.h,
                    // padding: EdgeInsets.only(left: 15, top: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(179, 243, 243, 243),
                        ),
                        color: Color.fromARGB(179, 236, 236, 236),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "20".tr,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 88.w,
                    height: 40.h,
                    //  padding: EdgeInsets.only(left: 15, top: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(179, 243, 243, 243),
                        ),
                        color: Color.fromARGB(179, 236, 236, 236),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "21".tr,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ),
                  Container(
                    // padding: EdgeInsets.only(left: 10, top: 4),
                    width: 70.w,
                    height: 40.h,
                    //  alignment: Alignment.topLeft,

                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromARGB(179, 243, 243, 243),
                        ),
                        color: Color.fromARGB(179, 236, 236, 236),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "22".tr,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            ///
            ///
            SizedBox(
              height: 10.h,
            ),

            ///
            ///
            ///
            ///
            ///

            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                '23'.tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(
              height: 10.h,
            ),

            ///
            ///
            ///
            ///
            ///

            SizedBox(
              height: 10.h,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                child: Expanded(
                  child: Wrap(
                    runAlignment: WrapAlignment.start,
                    runSpacing: 10.h,
                    spacing: 7.w,
                    alignment: WrapAlignment.start,
                    children: [
                      Container(
                        width: 105.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "24".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        width: 88.w,
                        height: 40.h,
                        // padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "25".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        width: 67.w, height: 40.h,
                        //  padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "26".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        width: 93.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "27".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        width: 89.w,
                        height: 40.h,
                        // padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "28".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Container(
                        width: 70.w,
                        height: 40.h,
                        //  padding: EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(179, 243, 243, 243),
                            ),
                            color: Color.fromARGB(179, 236, 236, 236),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "29".tr,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )),
                      ),
                      Positioned(
                        left: 30.w,
                        child: Container(
                            //   padding: EdgeInsets.only(left: 2.w, top: 3),
                            width: 118.w,
                            height: 40.h,
                            // alignment: Alignment.topLeft,
                            //margin: EdgeInsets.only(
                            //  left: 30.w,
                            // ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(179, 243, 243, 243),
                                ),
                                color: Color.fromARGB(179, 236, 236, 236),
                                borderRadius: BorderRadius.circular(9)),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "30".tr,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ))),
                      ),
                    ],
                  ),
                )),

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            SizedBox(
              height: 12.h,
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            Container(
              margin: EdgeInsets.symmetric(horizontal: 33.w),
              alignment: Alignment.topLeft,
              child: Text(
                "31".tr,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              child: Expanded(
                child: Wrap(spacing: 7, children: [
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 123.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 127.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 128 (1).png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 129.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 130.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 131.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 132.png")),
                  ),
                  Container(
                    width: 45.w,
                    height: 42.h,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/Rectangle 133.png")),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 33.w),
              child: Text(
                "32".tr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            ///
            ///
            ///
            ///
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              child: Expanded(
                child: Wrap(
                  runSpacing: 10,
                  spacing: 12,
                  children: [
                    Container(
                      width: 89.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(179, 243, 243, 243),
                          ),
                          color: Color.fromARGB(179, 236, 236, 236),
                          borderRadius: BorderRadius.circular(9)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            r"2444",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    ),
                    // SizedBox(
                    //   width: 20.w,
                    // ),
                    Container(
                      width: 89.w,
                      height: 40.h,
                      // padding: EdgeInsets.only(left: 15, top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(179, 243, 243, 243),
                          ),
                          color: Color.fromARGB(179, 236, 236, 236),
                          borderRadius: BorderRadius.circular(9)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            r"23444 ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    ),
                    // SizedBox(
                    //   width: 20.w,
                    // ),
                    Container(
                      width: 89.w,
                      height: 40.h,
                      //  padding: EdgeInsets.only(left: 15, top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(179, 243, 243, 243),
                          ),
                          color: Color.fromARGB(179, 236, 236, 236),
                          borderRadius: BorderRadius.circular(9)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            r"4324235",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    ),
                    Container(
                      width: 89.w,
                      height: 40.h,
                      // alignment: Alignment.topLeft,
                      // margin: EdgeInsets.only(
                      //   left: 30.w,
                      //   top: 6.h,
                      // ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(179, 243, 243, 243),
                          ),
                          color: Color.fromARGB(179, 236, 236, 236),
                          borderRadius: BorderRadius.circular(9)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "4425 ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  //  minimumSize: const Size(100, 50), // الحجم الأدنى
                  fixedSize: const Size(120, 50), // الحجم الثابت
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 73, 14, 128),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("33".tr)),
            SizedBox(
              height: 10.h,
            )

            ///
          ]),
        ),
        bottomNavigationBar: Bottonnevbar());
  }
}
