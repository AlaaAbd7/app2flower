import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../view/login2.dart';

class VerificationController extends GetxController {
  var email = ''.obs;
  var verificationCodeController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    loadEmail();
  }

  void loadEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email.value = prefs.getString('email') ?? '';
  }

  void sendVerificationCode() async {
    // إرسال رمز التحقق إلى البريد الإلكتروني
    var response = await http.post(
      Uri.parse(
          'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/verify-code'),
      body: {
        'email': email.value,
      },
    );

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'Verification code sent to your email');
    } else {
      Get.snackbar('Error', 'Failed to send verification code');
    }
  }

  void verifyCode() async {
    // تحقق من رمز التحقق
    var response = await http.post(
      Uri.parse(
          'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/verify-code'),
      body: {
        'email': email.value,
        'verification_code': verificationCodeController.text,
      },
    );

    if (response.statusCode == 200) {
      // عرض رسالة نجاح
      Get.snackbar('Success', 'Verification successful');
      Get.to(Login3());
    } else {
      Get.snackbar('Error', 'Verification failed');
    }
  }
}
