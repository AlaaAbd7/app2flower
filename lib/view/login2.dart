import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/view/verifi2fa.dart';
//import 'package:login_flower/models/home1page1.dart';
//import 'package:login_flower/models/home1page1.dart';

import '../controller/2fa.dart';
import '../controller/darkthemcontroller.dart';
import '../controller/localeize1controller.dart';
import '../controller/logincontroller.dart';
import 'singup.dart';
import 'verification_Co.dart';

class Login3 extends StatefulWidget {
  const Login3({super.key});

  @override
  State<Login3> createState() => _Login2State();
}

class _Login2State extends State<Login3> {
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  final LoginController loginController = Get.put(LoginController());
  final TwofaController controller2 = Get.put(TwofaController());
  bool hidepass = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
          backgroundColor: context.theme.primaryColor,
          body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                Stack(
                  // alignment: Alignment.center,
                  children: [
                    Container(
                      // color: context.theme.primaryColorDark,
                      //color: Colors.amber,
                      alignment: Alignment.topRight,
                      width: 360.47.w,
                      height: 190.66.h,
                      child: Image.asset('images/Ellipse 2.png'),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70.w),
                      //color: Colors.amber,
                      alignment: Alignment.topRight,
                      width: 270.47.w,
                      height: 230.66.h,
                      child: Image.asset('images/Bunch.png'),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 80.h, left: 30.w),

                        //color: Colors.amber,
                        //   alignment: Alignment.bottomLeft,
                        width: 175.w,
                        height: 100.h,
                        child: Text(
                          "1".tr,
                          style: const TextStyle(
                              fontSize: 75,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(98, 16, 112, 1)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),

                Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextField(
                            onChanged: (value) {
                              loginController.identifier.value = value;
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: '43'.tr,
                              border: const OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10.h),

                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: '42'.tr,
                              border: OutlineInputBorder(),
                            ),
                          ),

                          SizedBox(height: 10.h),

                          TextField(
                            onChanged: (value) =>
                                loginController.password.value = value,
                            obscureText: hidepass,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: '64'.tr,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      hidepass = !hidepass;
                                    });
                                  },
                                  icon: hidepass
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off)),
                              //helperText: 'Should be none less than 8 characters',
                              border: const OutlineInputBorder(),
                            ),
                          ),

                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '104'.tr,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 168, 168, 168),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(VerificationCo());
                              },
                              child: Text(
                                "66".tr,
                                style: const TextStyle(color: Colors.red),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),

                          ///
                          ///

                          RichText(
                              text: TextSpan(
                            text: '67'.tr,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 158, 158, 158)),
                            children: <TextSpan>[
                              TextSpan(
                                text: '68'.tr,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 110, 35, 153),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to(Singup12());
                                  },
                              ),
                            ],
                          )),

                          ///
                          SizedBox(
                            height: 10.h,
                          ),

                          ///
                          ///

                          ElevatedButton(
                              onPressed: () {
                                loginController.login();
                                Future.delayed(Duration(seconds: 8), () {
                                  Get.to(Verification2faCo());
                                });

                                // Future.delayed(Duration(seconds: 7), () {
                                //   Get.bottomSheet(Container(
                                //     width: 300.w,
                                //     height: 300.h,
                                //     decoration: BoxDecoration(
                                //         color: Colors.blue[50],
                                //         border: Border.all(),
                                //         borderRadius:
                                //             BorderRadius.circular(50)),
                                //     child: Padding(
                                //       padding: const EdgeInsets.all(18.0),
                                //       child: Column(
                                //         children: [
                                //           Container(
                                //             margin: EdgeInsets.symmetric(
                                //                 horizontal: 30.w),
                                //             width: 360.w,
                                //             height: 95.h,
                                //             child: TextButton(
                                //               onPressed: controller2
                                //                   .sendVerificationCode,
                                //               child: Text(
                                //                 'email',
                                //                 maxLines: 3,
                                //                 style: TextStyle(
                                //                     fontWeight: FontWeight.w500,
                                //                     color: Colors.grey,
                                //                     fontSize: 20),
                                //               ),
                                //             ),
                                //           ),
                                //           TextField(
                                //             controller:
                                //                 controller2.twoFactorAuthcon,
                                //             decoration: InputDecoration(
                                //               hintText: 'Enter code',
                                //               border: OutlineInputBorder(),
                                //             ),
                                //           ),
                                //           ElevatedButton(
                                //             onPressed: controller2.verifyCode1,
                                //             child: Text(' Ok'),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ));
                                // });
                              },
                              // onPressed: () => loginController.login(),
                              // Get.bottomSheet(Container(
                              //     color: Colors.white,
                              //     child: TextField(
                              //       decoration: InputDecoration(
                              //         hintText: 'Enter code',
                              //         border: OutlineInputBorder(),
                              //       ),
                              //     )));

                              style: ElevatedButton.styleFrom(
                                // minimumSize: const Size(100, 50), // الحجم الأدنى
                                fixedSize: Size(130.w, 50.h), // الحجم الثابت
                                foregroundColor: Colors.white,
                                backgroundColor:
                                    const Color.fromARGB(255, 73, 14, 128),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3),
                                ),
                              ),
                              child: Text("69".tr)),

                          ///
                          SizedBox(
                            height: 2.h,
                          ),
                        ])),

                ///
                Stack(children: [
                  Container(
                    //  color: context.theme.primaryColorDark,
                    margin: EdgeInsets.only(bottom: 0.1.h, left: 0.1.w),
                    //color: Colors.amber,
                    alignment: Alignment.bottomLeft,
                    // width: 393.47.w,
                    // height: 190.66.h,
                    child: Image.asset('images/Ellipse 1.png'),
                  ),

                  ///
                  Container(
                    margin: EdgeInsets.only(bottom: 0.1.h, left: 0.1.w),

                    alignment: Alignment.bottomLeft,
                    // width: 290.47.w,
                    // height: 150.66.h,
                    child: Image.asset('images/download.png'),
                  ),
                ]),
              ]))),
    );
  }
}
