import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/controller/darkthemcontroller.dart';
//import 'package:login_flower/controller/resendvirifi.dart';

import 'package:pinput/pinput.dart';

import '../controller/2fa.dart';
import '../controller/localeize1controller.dart';
import '../controller/logincontroller.dart';
//import '../controller/verification_controller.dart';

class Verification2faCo extends StatelessWidget {
  Verification2faCo({super.key});
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  final LoginController loginController = Get.put(LoginController());
  final TwofaController controller2 = Get.put(TwofaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColorLight,
        body: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                      width: 440.w,
                      height: 250.h,
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 2.4.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 242, 255),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60)),
                      )),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.w),
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.grey,
                              size: 24,
                            )),
                      ),
                      Container(
                          width: 195.w,
                          height: 254.h,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          // color: const Color.fromARGB(255, 197, 223, 245),
                          //),
                          //alignment: Alignment.center,
                          child: Image.asset('images/monstera1.png')),
                    ],
                  ),
                ],
              ),
              //SizedBox(height: 20.h),
              Container(
                  alignment: Alignment.center,
                  // height: 47.h,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: Text(
                    '34'.tr,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(140, 138, 140, 1),
                    ),
                  )),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                width: 360.w,
                height: 95.h,
                child: TextButton(
                  onPressed: controller2.sendtwofaCode,
                  child: Text(
                    "  Pleas enter 2FA code sent to Email address .....@Gmail.com",
                    maxLines: 3,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                alignment: Alignment.topLeft,
                child: Text(
                  '36'.tr,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(140, 138, 140, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: controller2.sendtwofaCode,
                    child: Text(
                      "37".tr,
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),

              SizedBox(height: 20.h),

              ///
              ///
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                child: Pinput(
                    controller: controller2.twoFactorAuthcon,
                    defaultPinTheme: PinTheme(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 2.0, color: Colors.black),
                          ),
                        )),
                    useNativeKeyboard: true,
                    keyboardType: TextInputType.text,
                    // obscureText: true,
                    obscuringCharacter: '*',
                    length: 6, // طول رمز PIN
                    onCompleted: (pin) {
                      print('Pin entered: $pin');
                    }),
              ),
              SizedBox(
                height: 27.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 70.w),
                alignment: Alignment.topLeft,
                child: Text(
                  " 2FA code consists of numbers and letters ",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(140, 138, 140, 1),
                  ),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),

              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(110.w, 50.h), // الحجم الثابت
                    foregroundColor: Color.fromARGB(255, 99, 14, 148),
                    backgroundColor: Color.fromRGBO(182, 181, 182, 1),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: controller2.verifyTwofaCode,
                  child: Text(
                    '39'.tr,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                ),
              ),

              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ));
  }
}
