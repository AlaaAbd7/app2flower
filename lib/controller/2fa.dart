import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../view/home1page1.dart';

// class TwofaController extends GetxController {
//   var email = ''.obs;
//   var twoFactorAuthcon = TextEditingController();
//   var token = ''.obs;

//   @override
//   void onInit() {
//     super.onInit();
//     loadEmail();
//   }

//   void loadEmail() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     email.value = prefs.getString('email') ?? '';
//   }

//   void saveToken(String token) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('token', token);
//   }

//   void sendtwofaCode() async {
//     // إرسال رمز التحقق إلى البريد الإلكتروني
//     var response = await http.post(
//       Uri.parse(
//           'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/confirm-2fa-code'),
//       body: {
//         'email': email.value,
//       },
//     );

//     if (response.statusCode == 200) {
//       var responseData = jsonDecode(response.body);
//       token.value = responseData['token'];
//       saveToken(token.value);
//       Get.snackbar('Success', '2FA code sent to your email');
//     } else {
//       Get.snackbar('Error', 'Failed to send 2FA code');
//     }
//   }

//   void twofaCode() async {
//     // تحقق من رمز التحقق
//     var response = await http.post(
//       Uri.parse(
//           'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/confirm-2fa-code'),
//       body: {
//         'email': email.value,
//         'TwoFactorAuth': twoFactorAuthcon.text,
//       },
//     );

//     if (response.statusCode == 200) {
//       //    var responseData = jsonDecode(response.body);
//       //  token.value = responseData['token'];
//       //    saveToken(token.value);
//       // // عرض رسالة نجاح
//       Get.snackbar('Success', '2FA successful');
//       Get.to(Home1page1());
//     } else {
//       Get.snackbar('Error', '2FA failed');
//     }
//   }
// }
class TwofaController extends GetxController {
  var email = ''.obs;
  var twoFactorAuthcon = TextEditingController();
  var token = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadEmail();
  }

  void loadEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email.value = prefs.getString('email') ?? '';
  }

  void saveToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  void sendtwofaCode() async {
    // إرسال رمز التحقق إلى البريد الإلكتروني
    var response = await http.post(
      Uri.parse(
          'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/send-2fa-code'),
      body: {
        'email': email.value,
      },
    );

    if (response.statusCode == 200) {
      Get.snackbar('Success', '2FA code sent to your email');
    } else {
      Get.snackbar('Error', 'Failed to send 2FA code');
    }
  }

  void verifyTwofaCode() async {
    // تحقق من رمز التحقق
    var response = await http.post(
      Uri.parse(
          'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/confirm-2fa-code'),
      body: {
        'email': email.value,
        'TwoFactorAuth': twoFactorAuthcon.text,
      },
    );

    if (response.statusCode == 200) {
      var responseData = jsonDecode(response.body);
      token.value = responseData['token'] ?? '';
      saveToken(token.value);
      Get.snackbar('Success', '2FA successful');
      Get.to(Home1page1());
    } else {
      Get.snackbar('Error', '2FA failed');
    }
  }
}
