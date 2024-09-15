import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/count2_countroller.dart';
import 'package:login_flower/controller/count_controller.dart';
import 'package:login_flower/controller/darkthemcontroller.dart';
import 'package:login_flower/controller/localeize1controller.dart';

import '../models/bottonnevbar.dart';
//import 'flower1page1.dart';
import 'payment.dart';

class My_Cart2 extends StatelessWidget {
  My_Cart2({super.key});
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Count1Controller controller = Get.put(Count1Controller());
    final Counter2Controller controller1 = Get.put(Counter2Controller());

    return Scaffold(
      backgroundColor: context.theme.primaryColorLight,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(top: 0.1, right: 0.1),
                      alignment: Alignment.topRight,
                      // width: 170.w,
                      height: 220.h,
                      // margin: EdgeInsets.symmetric(vertical: 0.1.h),
                      child: Image.asset("images/Ellipse 33.png",
                          fit: BoxFit.contain)),
                ),
                Container(
                    //width: 170.w,
                    height: 140.h,
                    margin: EdgeInsets.fromLTRB(190, 35, 0, 0),
                    child: Image.asset("images/Gold flower.png",
                        fit: BoxFit.contain)),
                Positioned(
                  top: 175.h,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 35.w),
                    width: 27.w, height: 27.h,
                    //  margin: const EdgeInsets.only(left: 20),
                    //  margin: EdgeInsets.only(left: 4.w),
                    //alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                        )),
                  ),
                ),
                Positioned(
                  top: 170.h,
                  child: Container(
                    //alignment: Alignment.topLeft,
                    width: 180.w,
                    height: 40.h,
                    margin: EdgeInsets.symmetric(horizontal: 70.w),
                    child: Text('94'.tr,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 84, 22, 95))),
                  ),
                ),
              ],
            ),

            Container(
              //width: 300.w,height: 300.h,
              margin: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    width: 240.w,
                    height: 105.h,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Text.rich(TextSpan(
                                text: '95'.tr,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 84, 22, 95)),
                                children: [
                                  TextSpan(
                                      text: '96'.tr,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey))
                                ]))),
                        Container(
                            //  alignment: Alignment.bottomRight,
                            margin: EdgeInsets.symmetric(horizontal: 60.w),
                            child: Obx(
                              () => Row(children: [
                                IconButton(
                                    onPressed: () {
                                      controller.deincrment();
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                                TextButton(
                                    onPressed: () {
                                      controller.incremnt();
                                    },
                                    child: Text(
                                      '+ ${controller.counter}',
                                      style:
                                          const TextStyle(color: Colors.green),
                                    )),
                              ]),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    // margin: EdgeInsets.symmetric(
                    //     horizontal: 40.w, vertical: 410.h),
                    width: 240.w,
                    height: 105.h,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Text.rich(TextSpan(
                                text: '95'.tr,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 84, 22, 95)),
                                children: [
                                  TextSpan(
                                      text: "97".tr,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey))
                                ]))),
                        Container(
                            //  alignment: Alignment.bottomRight,
                            margin: EdgeInsets.symmetric(horizontal: 60.w),
                            child: Obx(
                              () => Row(children: [
                                IconButton(
                                    onPressed: () {
                                      controller1.deicremnt1();
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )),
                                TextButton(
                                    onPressed: () {
                                      controller1.increment1();
                                    },
                                    child: Text(
                                      '+ ${controller1.counter1}',
                                      style:
                                          const TextStyle(color: Colors.green),
                                    )),
                              ]),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //

            SizedBox(
              height: 15.h,
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            Container(
              //  padding: EdgeInsets.symmetric(horizontal: 30.w),
              //   alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 14.w),
              width: 250.w,
              child: Divider(
                color: Color.fromARGB(255, 84, 22, 95),
                thickness: 2,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),

            ///

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //width: 190.w,
                  // alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Expanded(
                    child: Text(
                      '98'.tr,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                      maxLines: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 90.w),
                  width: 143.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '99'.tr,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 84, 22, 95)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  // width: 190.w,
                  //  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Expanded(
                    child: Text(
                      '100'.tr,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 190.w,
                  // alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Expanded(
                    child: Text(
                      '101'.tr,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  //alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 80.w),
                  width: 169.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(10)),
                  // padding:
                  //  const EdgeInsets.only(left: 10, right: 10, bottom: 2),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '102'.tr,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 84, 22, 95)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  // alignment: Alignment.centerLeft,
                  //width: 190.w,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const Expanded(
                    child: Text(
                      r"Delivery: $20",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  // width: 190.w,
                  // alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const Expanded(
                    child: Text(
                      r"Taxes: $15",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    //width:double.infinity,
                    // alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: const Text.rich(TextSpan(
                        text: 'Total Price: ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 84, 22, 95)),
                        children: [
                          TextSpan(
                              text: r' 70$  ',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey))
                        ]))),
              ],
            ),

            ///
            ///
            ///
            ///
            ///
            ///

            SizedBox(
              height: 15.h,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(Payment());
                },
                style: ElevatedButton.styleFrom(
                  //  minimumSize: const Size(160, 60), // الحجم الأدنى
                  fixedSize: const Size(160, 60), // الحجم الثابت
                  foregroundColor: Color.fromARGB(255, 68, 21, 75),
                  backgroundColor: Colors.pink[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Text(
                  '103'.tr,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                )),

            SizedBox(
              height: 20.w,
            )
          ],
        ),
      ),
      bottomNavigationBar: Bottonnevbar(),
    );
  }
}
