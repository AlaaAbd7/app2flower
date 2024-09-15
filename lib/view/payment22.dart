import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/localeize1controller.dart';
import 'package:login_flower/view/home1page1.dart';

class Payment22 extends StatefulWidget {
  Payment22({super.key});

  @override
  State<Payment22> createState() => _Payment22State();
}

class _Payment22State extends State<Payment22> {
  String? boolresult;
  Localeize1 controllerlang = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(//mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Container(
                // width: 27.w, height: 27.h,
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                //alignment: Alignment.bottomLeft,
                child: IconButton(
                  onPressed: () {
                    // Get.to(My_Cart1());
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                  ),
                ),
              ),
              Container(
                width: 152.w,
                height: 39.h,
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                alignment: Alignment.center,
                child: Text(
                  "49".tr,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 91, 39, 100)),
                ),
              ),
            ]),
            SizedBox(
              height: 15.h,
            ),
            Container(
              //  width: 139.w,
              // height: 39.h,
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              alignment: Alignment.centerLeft,
              child: Text("50".tr,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 97, 27, 109))),
            ),
            SizedBox(height: 13.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.w),
              child: Wrap(
                //  direction: Axis.horizontal,
                alignment: WrapAlignment.spaceEvenly,
                runSpacing: 20.h,
                spacing: 15.w,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "51".tr,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        // الحجم الثابت
                        foregroundColor: const Color.fromARGB(255, 31, 29, 29),
                        backgroundColor: Color.fromARGB(255, 254, 253, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        fixedSize: Size(90.w, 50.h),
                      )),
                  // SizedBox(
                  //   width: 3.w,
                  // ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "52".tr,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        // الحجم الثابت
                        foregroundColor: const Color.fromARGB(255, 31, 29, 29),
                        backgroundColor: Color.fromARGB(255, 254, 253, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        fixedSize: Size(120.w, 48.h),
                      )),
                  // SizedBox(
                  //   width: 3.w,
                  // ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "53".tr,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                        // الحجم الثابت
                        foregroundColor: const Color.fromARGB(255, 31, 29, 29),
                        backgroundColor: Color.fromARGB(255, 254, 253, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        fixedSize: Size(95.w, 50.h),
                      )),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "54".tr,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 31, 29, 29),
                      backgroundColor: Color.fromARGB(255, 254, 253, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      fixedSize: Size(140.w, 48.h),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              alignment: Alignment.centerLeft,
              child: Text('55'.tr,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 81, 31, 90))),
            ),

//
            SizedBox(height: 20.h),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text("56".tr,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey)),
                ),
                SizedBox(height: 10.h),
                Container(
                  width: 370.w,
                  height: 48.h,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '*******',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            //
            Column(
              children: [
                Container(
                  // width: 129.w,
                  //height: 21.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    "57".tr,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 370.w,
                  height: 48.h,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: '*******',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            //

            Row(
              children: [
                Column(
                  children: [
                    Container(
                      // width: 145.w,
                      //height: 21.h,
                      margin: EdgeInsets.symmetric(horizontal: 30.w),
                      alignment: Alignment.topLeft,
                      child: Text('58'.tr,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 140.w,
                      height: 48.h,
                      margin: EdgeInsets.symmetric(horizontal: 30.w),
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '22/5',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(children: [
                    Container(
                      // width: 145.w,
                      //height: 21.h,
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      // alignment: Alignment.centerLeft,
                      child: Text('59'.tr,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 120.w,
                      height: 48.h,
                      // margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '    *******    ',
                          border: OutlineInputBorder(),
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
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              alignment: Alignment.topLeft,
              child: Text('60'.tr,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Row(
                    children: [
                      Text("61".tr,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                      Radio(
                        value: "Yes",
                        groupValue: boolresult,
                        onChanged: (val) {
                          setState(() {
                            boolresult = val;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Row(
                    children: [
                      Text("62".tr,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                      Radio(
                        value: "No",
                        groupValue: boolresult,
                        onChanged: (val) {
                          setState(() {
                            boolresult = val;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            ElevatedButton(
                child: Text("63".tr,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                onPressed: () { Get.to(Home1page1());},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 105, 33, 117),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  fixedSize: Size(140.w, 45.h),
                )),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
