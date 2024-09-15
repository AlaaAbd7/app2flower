import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/darkthemcontroller.dart';
import 'package:login_flower/controller/localeize1controller.dart';

import '../view/flower1page1.dart';
//import 'package:login_flower/models/flowerpage.dart';

//import 'package:login_flower/models/homepage2.dart';

class FlowerPH extends StatelessWidget {
  FlowerPH({super.key});
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColorLight,
        body: Stack(children: [
          Expanded(
            child: Container(
              // alignment: Alignment.topRight,

              height: 247.h, width: 400.w,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
              // width: 430.w,
              // decoration: BoxDecoration(
              //     olor: Colors.blue[50],
              //     borderRadius:
              //         const BorderRadius.only(bottomLeft: Radius.circular(60))),
              child: Image.asset(
                "images/Rectangle 42.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            top: 25.h,
            child: Expanded(
              child: Container(
                width: 123.w,
                height: 123.h,
                margin: EdgeInsets.symmetric(horizontal: 65.w),
                child: Image.asset(
                  'images/flower home page1.png',
                ),
              ),
            ),
          ),
          Positioned(
            top: 45.h,
            child: Expanded(
              child: Container(
                width: 194.w,
                height: 80.h,
                margin: EdgeInsets.symmetric(horizontal: 180.w),
                child: Text("1".tr,
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(98, 16, 112, 1),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),

          SizedBox(width: 15.w),
          Positioned(
            //   left: 60.w,
            top: 160.h,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 75.w),
                width: 242.w,
                height: 45.h,
                // margin: const EdgeInsets.only(top: 170, left: 80, right: 80),
                alignment: Alignment.bottomCenter,
                child: TextField(
                  onTap: () {},
                  decoration: InputDecoration(
                    filled: true,
                    hintText: '6'.tr,
                    fillColor: Colors.white,
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 200.h,
            child: Container(
              width: 40.w,
              height: 40.h,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              // alignment: Alignment.bottomLeft,
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: context.theme.primaryColor,
                      showDragHandle: true,
                      context: context,
                      isScrollControlled: true, // يسمح بالتحكم في الارتفاع
                      builder: (context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    // width: 79.w,
                                    // height: 49.h,
                                    child: TextButton(
                                        onPressed: () {
                                          Get.to(Flower1page1());
                                        },
                                        child: Text(
                                          "Flowers",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 89, 29, 100)),
                                        )),
                                  ),
                                  Container(
                                    width: 170.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    //   padding: EdgeInsets.only(left: 1.w),
                                    alignment: Alignment.topRight,
                                    child: Divider(),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Plants ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 89, 29, 100)),
                                        )),
                                  ),
                                  Container(
                                    width: 200.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    //   padding: EdgeInsets.only(left: 1.w),
                                    alignment: Alignment.topRight,
                                    child: Divider(),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Bouquet",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 89, 29, 100)),
                                        )),
                                  ),
                                  Container(
                                    width: 200.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    //   padding: EdgeInsets.only(left: 1.w),
                                    alignment: Alignment.topRight,
                                    child: Divider(),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Offers",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 89, 29, 100)),
                                        )),
                                  ),
                                  Container(
                                    width: 170.w,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    //   padding: EdgeInsets.only(left: 1.w),
                                    alignment: Alignment.topRight,
                                    child: Divider(),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Gifts ",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 89, 29, 100)),
                                        )),
                                  ),
                                ],
                              ),
                              Positioned(
                                  top: 30.h,
                                  left: 90.w,
                                  child: Container(
                                    // width: 244.w,
                                    //height: 244.h,
                                    child: Transform.rotate(
                                        angle: 0.3.h,
                                        child: Image.asset(
                                            "images/flower1white1.png")),
                                  )),
                            ],
                          ),
                          //  height: 900.h,
                          // width: 300.w,
                        );
                      });
                },
                icon: Image.asset(
                  "images/categories 1 (1).png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          Positioned(
            top: 80.h,
            //   left: 25.w,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              //width: 100.w,
              //height: 105.h,
              // alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                ),
                iconSize: 30,
                color: Colors.grey,
              ),
            ),
          ),

          ///
          ///
          ///
          ///
          ///
          ///
          ///
          ///
          ///

          ///
          ///
          ///
          ///
          ///
          ///
          ///
          ///
        ]));
  }
}
