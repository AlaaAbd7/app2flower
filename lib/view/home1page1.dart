import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/models/flower_P_h.dart';

//import 'package:login_flower/view/pakage/bottonnevbar.dart';

import '../controller/darkthemcontroller.dart';
import '../controller/localeize1controller.dart';
import '../models/bottonnevbar.dart';

class Home1page1 extends StatefulWidget {
  const Home1page1({super.key});
  @override
  State<Home1page1> createState() => _Home1page1State();
}

class _Home1page1State extends State<Home1page1> {
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      backgroundColor: context.theme.primaryColorLight,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                // color: Colors.red,
                height: 247.h,
                width: 400.w,
                //  width: double.infinity.w,
                //  width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 2.55.h,
                child: FlowerPH()),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80.w),
              child: Text(
                '7'.tr,
                style: TextStyle(fontSize: 30, color: Colors.purple),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              width: 323.w,
              height: 100.h,
              child: Text(
                '8'.tr,
                style: TextStyle(
                    fontSize: 15, color: Color.fromRGBO(126, 123, 123, 0.651)),
                maxLines: 3,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 5,
                  )),
              margin: EdgeInsets.symmetric(horizontal: 45.w, vertical: 20.h),
              //  padding: const EdgeInsets.all(10),
            ),
            //
            ///
            ///
            ///
            ///
            ///
            ///

            ///
            SizedBox(
              height: 15.h,
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 30.w),
                  child: Text(
                    '9'.tr,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 83, 26, 94),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 390.w,
                  height: 260.h,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(25)),
                      border: Border.all(
                        color: Colors.grey,
                        width: 3,
                      )),
                  //   alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Positioned(
                      bottom: 80.h,
                      left: 20.w,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 13.w,
                        ),
                        //   alignment: Alignment.center,
                        width: 223.w, height: 223.h,
                        //  alignment: Alignment.topCenter,
                        child: Image.asset(
                          'images/Silk Rose Flower.png',
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 90.h,
                      left: 10.w,
                      child: Container(
                        width: 240.w,
                        height: 30.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.symmetric(
                            horizontal: 22.w, vertical: 25.h),
                        child: Text('10'.tr,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color:
                                    const Color.fromARGB(255, 130, 35, 146))),
                      ),
                    ),
                    Positioned(
                      bottom: 10.h,
                      left: 45.w,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 30.h),
                        width: 200.w,
                        height: 55.h,
                        child: Text(
                          '11'.tr,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 134, 133, 133)),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),

            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      width: 110.w,
                      height: 265.h,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(8)),
                          color: Colors.blue[50]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/f1.png',
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Text(
                                "12".tr,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 75, 22, 83)),
                              )),
                          SizedBox(height: 6.h),
                          Text(
                            r"price:25$",
                            style: TextStyle(
                                color: Color.fromARGB(255, 75, 22, 83)),
                          ),
                          SizedBox(height: 6.h),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(127.w, 5.h),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Text(
                              "14".tr,
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 75, 22, 83)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: Container(
                      width: 110.w,
                      height: 265.h,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(8)),
                          color: Colors.blue[50]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/f2.png',
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Text(
                                "13".tr,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 75, 22, 83)),
                              )),
                          SizedBox(height: 6.h),
                          const Text(
                            r"price:25$",
                            style: TextStyle(
                                color: Color.fromARGB(255, 75, 22, 83)),
                          ),
                          SizedBox(height: 6.h),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(127.w, 5.h),
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Text(
                              "14".tr,
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 75, 22, 83)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            Container(
              width: 400.w,
              height: 342.h,
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "15".tr,
                    style: TextStyle(fontSize: 20),
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),
                //  Container(width: ,),

                Container(
                  width: 370.w,
                  height: 180.h,
                  margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 6.h),
                  //color: Colors.black,

                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30)),
                      border: Border.all(
                          color: const Color.fromARGB(255, 136, 132, 132),
                          width: 3)),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Expanded(
                      child: Positioned(
                        top: 15.h,
                        left: 188.w,
                        child: Container(
                          // margin: EdgeInsets.only(
                          //     left: 140.w, top: 19.h, right: 15.w),
                          margin: EdgeInsets.symmetric(horizontal: 1.w),
                          width: 110.w, height: 35.h,

                          //  color: Colors.red,
                          alignment: Alignment.topRight,
                          child: Text(
                            '16'.tr,
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.pink[100],
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Positioned(
                        top: 65.h,
                        left: 188.w,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.w),
                          // color: Colors.amber,
                          // margin: EdgeInsets.only(
                          //     left: 220.w, top: 60.h, right: 0.4.w),

                          width: 120.w,
                          height: 190.h,
                          // width: MediaQuery.of(context).size.width / 1,
                          // height: MediaQuery.of(context).size.height / 4,
                          // alignment: Alignment.centerRight,
                          child: Text(
                            "17".tr,
                            maxLines: 5,
                            style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500,
                                color:
                                    const Color.fromARGB(255, 177, 176, 176)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Positioned(
                        right: 130.w,
                        width: 205.w,
                        height: 205.h,
                        child: Container(
                          alignment: Alignment.topLeft,
                          //   // margin: EdgeInsets.only(left: 0.1.w),
                          //   width: 205.w,
                          //   height: 195.h,
                          // width: MediaQuery.of(context).size.width / 1,
                          // height: MediaQuery.of(context).size.height / 1,
                          child: Image.asset(
                            "images/Pink Box Flowers with chocolates 1.png",
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottonnevbar(),
    );
  }
}
