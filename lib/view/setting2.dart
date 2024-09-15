import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/ltr.dart';
import 'package:login_flower/models/bottonnevbar.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../controller/darkthemcontroller.dart';
import '../controller/localeize1controller.dart';

import '../models/pakage/drop.dart';
import 'login2.dart';
import 'payment.dart';

class Setting2 extends StatelessWidget {
  Setting2({super.key});
  final DropdownController controller = Get.put(DropdownController());
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
      final Locale11Controller localeController = Get.put(Locale11Controller());


  @override
  Widget build(BuildContext context) {
     return 
    // Directionality(
    //   textDirection: TextDirection.ltr,
    //   child:
     Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(clipBehavior: Clip.none, children: [
                    //   Positioned(

                    //   //left: 0.1.w,
                    //   top: 440.h,
                    Container(
                      width: 423.w,
                      height: 500.h,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60),
                              bottomRight: Radius.circular(60))),
                    ),

                    // Positioned(
                    //   child: Container(
                    //     margin: EdgeInsets.all(0.1),
                    //     width: 433.w,
                    //     height: 550,
                    //     child: Image.asset(
                    //       "images/re setting.png",
                    //       fit: BoxFit.fitHeight,
                    //       filterQuality: FilterQuality.high,
                    //     ),
                    //   ),
                    // ),
                    Expanded(
                      child: Positioned(
                        top: 30.w,
                        left: 150.w,
                        child: Container(
                          alignment: Alignment.topRight,
                          // width: 100.w,
                          height: 50.h,
                           margin:
                        EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                // style: ElevatedButton.styleFrom(
                                //     fixedSize: Size(3.w, 3.h)
                                //     ),
                                onPressed: () {
                                  controllerlang.ChangeLang("ar");
                                },
                                child: Text("ar")),
                            TextButton(
                                // style: ElevatedButton.styleFrom(
                                //     fixedSize: Size(3.w, 3.h)),
                                onPressed: () {
                                  controllerlang.ChangeLang("en");
                                },
                                child: Text("en"))
                          ],
                        ),
                      ),
                    ),

                    ),

                    Positioned(
                      top: 40.h,
                      left: 25.w,
                      child: Container(
                        //  width: 27.w, height: 27.h,
                        // margin: const EdgeInsets.only(left: 50),
                        //  margin: EdgeInsets.only(left: 4.w),
                        //alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_sharp,
                              size: 27,
                            )),
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      left: 113.w,
                      child: Container(
                        width: 140.w, height: 50.h,
                        // margin: const EdgeInsets.only(right: 180),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          '80'.tr,
                          style: TextStyle(
                              fontSize: 38,
                              color: Color.fromARGB(255, 132, 50, 145)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90.h,
                      right: 0.1.w,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0.1.w),
                        width: 150.w,
                        height: 350.h,
                        alignment: Alignment.bottomRight,
                        child: Image.asset('images/Ellipse 2 (1)setting.png',),
                      ),
                    ),
                    Positioned(
                      top: 120.h,
                      right: 6.w,
                      child: Container(
                        width: 257.w,
                        height: 251.1.h,
                        alignment: Alignment.bottomRight,
                        child: Image.asset('images/flowersetting2.png'),
                      ),
                    ),

                    Positioned(
                      child: Container(
                        margin: EdgeInsets.only(top: 110.h),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "81".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "82".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  // alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () {
                                        Get.to(Payment());
                                      },
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "83".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  // margin: const EdgeInsets.only(left: 5),
                                  //  margin: EdgeInsets.only(left: 4.w),
                                  //alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "84".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  //  margin: EdgeInsets.only(left: 4.w),
                                  //alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "85".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  //  margin: EdgeInsets.only(left: 4.w),
                                  //alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            Row(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 30.w),
                                      child: Text(
                                        "86".tr,
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 119, 116, 116)),
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    //  margin: EdgeInsets.only(left: 4.w),
                                    //alignment: Alignment.topLeft,
                                    child: IconButton(
                                        onPressed: () {
                                          // Obx(() {
                                          //   return DropdownButton<String>(
                                          //     value: controllerlang
                                          //         .locale.value.languageCode,
                                          //     items: [
                                          //       DropdownMenuItem(
                                          //           value: 'en',
                                          //           child: Text('English')),
                                          //       DropdownMenuItem(
                                          //           value: 'ar',
                                          //           child: Text('العربية')),
                                          //     ],
                                          //     onChanged: (String? newValue) {
                                          //       if (newValue != null) {
                                          //         controllerlang
                                          //             .changeLocale(newValue);
                                          //       }
                                          //     },
                                          //   );
                                          // });
                                        },
                                        icon: const Icon(Icons.arrow_drop_down,
                                            color: Color.fromARGB(
                                                255, 119, 116, 116))),
                                  ),
                                ]),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Text(
                                      "88".tr,
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 116, 116)),
                                    )),
                                Container(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.arrow_drop_down,
                                          color: Color.fromARGB(
                                              255, 119, 116, 116))),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              // alignment: Alignment.topLeft,
                              margin: EdgeInsets.symmetric(horizontal: 30.w),
                              child: TextButton(
                                  onPressed: () {
                                    Get.defaultDialog(
                                      backgroundColor:
                                          Color.fromRGBO(255, 255, 255, 1),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 30.w, vertical: 40.h),
                                      title: "",
                                      middleText: '91'.tr,
                                      middleTextStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                      // cancel: ElevatedButton(
                                      //     onPressed: () {}, child: Text("No")),
                                      // confirm: ElevatedButton(
                                      //     onPressed: () {}, child: Text("Yes")),
                                      // contentPadding: EdgeInsets.symmetric(
                                      //     horizontal: 40.w, vertical: 60.h),
                                      radius: 15,
                                      actions: [
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.black,
                                                // fixedSize: Size(28, 20),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3)),
                                                backgroundColor:
                                                    Colors.blue[50]),
                                            onPressed: () async {
                                              await logout();
                                              Get.offAll(Login3());
                                            },
                                            child: Text("92".tr)),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                foregroundColor: Colors.red,
                                                // fixedSize: Size(28, 20),
                                                backgroundColor:
                                                    Colors.blue[50],
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3))),
                                            onPressed: () {
                                              Get.to(Setting2());
                                            },
                                            child: Text("93".tr))
                                      ],

                                      // content: Column(
                                      //   children: [
                                      //     Text("are you shure Logout?"),
                                      //     Container(
                                      //       width: 200,
                                      //       height: 100,
                                      //       child: Row(
                                      //         children: [
                                      //           ElevatedButton(
                                      //               style: ElevatedButton.styleFrom(
                                      //                   foregroundColor:
                                      //                       Colors.black,
                                      //                   maximumSize: Size(28, 20),
                                      //                   backgroundColor:
                                      //                       Colors.blue[50]),
                                      //               onPressed: () {},
                                      //               child: Text("Yes")),
                                      //           ElevatedButton(
                                      //               style: ElevatedButton.styleFrom(
                                      //                   foregroundColor: Colors.red,
                                      //                   maximumSize: Size(28, 20),
                                      //                   backgroundColor:
                                      //                       Colors.blue[50]),
                                      //               onPressed: () {},
                                      //               child: Text("NO"))
                                      //         ],
                                      //       ),
                                      //     )
                                      //   ],
                                      // ),
                                    );
                                    //  contentPadding: EdgeInsets.all(60));
                                  },
                                  child: Text("89".tr)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40.h,
                      left: 299.w,
                      child: Container(
                        width: 27.w,
                        height: 27.h,
                        // alignment: Alignment.topLeft,
                        child: IconButton(
                          splashColor: Color.fromARGB(255, 165, 27, 27),
                          iconSize: 27.h,
                          icon: Icon(Icons.dark_mode_sharp),
                          onPressed: () {
                            ThemeController.to.toggleTheme();
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  //  margin: EdgeInsets.all(0.1),
                  width: 433.w,
                  height: 120.h,

                  child: Image.asset(
                    'images/blank, and blossom setting.png.png',
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ), // تأكد من إضافة الصورة إلى مجلد assets
                ),

                //
              ],
            ),
          ),
          bottomNavigationBar: Bottonnevbar());
    //);
  }
}

Future<void> logout() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
  Get.snackbar('Logged Out', 'You have been logged out successfully');
}
