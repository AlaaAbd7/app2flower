import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/darkthemcontroller.dart';
import '../controller/localeize1controller.dart';
import '../controller/testregister2.dart';
import 'login2.dart';

class Singup12 extends StatefulWidget {
  Singup12({super.key});

  @override
  State<Singup12> createState() => _Singup12State();
}

class _Singup12State extends State<Singup12> {
  final Localeize1 controllerlang = Get.find();

  final ThemeController themeController = Get.find();

  final RegisterController controller = Get.put(RegisterController());
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: 739.w,
                  height: 353.h,
                  child: Image.asset(
                    "images/Rectangle 22.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 50.h,
                  left: 170.w,
                  child: Container(
                    width: 204.w,
                    height: 204.h,
                    // alignment: Alignment.centerRight,
                    child: Image.asset(
                      "images/flower2.png",
                    ),
                  ),
                ),

                ///
                ///
                ///
                Positioned(
                  top: 50.h,
                  left: 8.w,
                  child: Container(
                    width: 100.w,
                    height: 105.h,
                    alignment: Alignment.bottomCenter,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                      ),
                      iconSize: 27,
                      color: Colors.grey,
                    ),
                  ),
                ),

                ///
                ///
                ///
                Positioned(
                  top: 50.h,
                  left: 80.w,
                  child: Container(
                      //color: Colors.amber,
                      alignment: Alignment.bottomCenter,
                      width: 173.w,
                      height: 105.h,
                      child: Text(
                        "70".tr,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(98, 16, 112, 1)),
                      )),
                ),

                Positioned(
                  top: 240.h,
                  left: 110.w,
                  child: Column(
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.h,
                        alignment: Alignment.center,
                        child: const CircleAvatar(
                          radius: 50,
                          child: Icon(Icons.person, size: 40),
                        ),
                      ),
                      SizedBox(
                        //width: 1.w,
                        height: 1.h,
                      ),
                      Container(
                          height: 35.h,
                          //width: 120.w,
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                '71'.tr,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ))),
                    ],
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 25.h),
                // padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) => controller.email.value = value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '72'.tr,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      onChanged: (value) =>
                          controller.phoneNumber.value = value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '73'.tr,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    TextField(
                      onChanged: (value) => controller.userName.value = value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '74'.tr,
                        border: OutlineInputBorder(),
                      ),
                    ),

                    // ضبط الحشوة بناءً على لوحة المفاتيح

                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      onChanged: (value) => controller.password.value = value,
                      obscureText: hidepass,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '75'.tr,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidepass = !hidepass;
                              });
                            },
                            icon: hidepass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      onChanged: (value) =>
                          controller.passwordConfirmation.value = value,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: '76'.tr,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidepass = !hidepass;
                              });
                            },
                            icon: hidepass
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off)),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: hidepass,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon:
                            ImageIcon(AssetImage('images/pdf-file 1.png')),
                        labelText: '77'.tr,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                onPressed: () => controller.register(),
                style: ElevatedButton.styleFrom(
                  //   minimumSize: const Size(100, 50), // الحجم الأدنى
                  fixedSize: Size(100.w, 50.h), // الحجم الثابت
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 73, 14, 128),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Text('78'.tr),
              ),
              SizedBox(height: 4.h),
              TextButton(
                child: Text(
                  '79'.tr,
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  Get.to(() => Login3());
                },
              ),
            ],
          ),
        ));
  }
}
