//import 'package:flutter/widgets.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  var identifier = ''.obs;
  var password = ''.obs;
  var isLoggedIn = false.obs;

  Future<void> login() async {
    if (identifier.value.isNotEmpty && password.value.isNotEmpty) {
      // إرسال طلب تسجيل الدخول إلى API
      var response = await http.post(
        Uri.parse(
            'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/login'),
        body: {'identifier': identifier.value, 'password': password.value},
      );

      if (response.statusCode == 200) {
        // حفظ حالة تسجيل الدخول باستخدام Shared Preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        isLoggedIn.value = true;
        Get.snackbar('Success', 'تم تسجيل دخول المستخدم بنجاح.');
      } else {
        Get.snackbar('Error', 'البريد الإلكتروني أو كلمة المرور غير صحيحة.');
      }
    } else {
      Get.snackbar('Error', 'يرجى إدخال البريد الإلكتروني وكلمة المرور.');
    }
  }

  Future<void> checkEmail() async {
    // منطق التحقق من البريد الإلكتروني عبر API
    var response = await http.post(
      Uri.parse(
          'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/login'),
      body: {'email': identifier.value},
    );
    if (response.statusCode == 200) {
      Get.snackbar('Success', 'البريد الإلكتروني مسجل.');
    } else {
      Get.snackbar('Error', 'البريد الإلكتروني غير مسجل.');
    }
  }
}
