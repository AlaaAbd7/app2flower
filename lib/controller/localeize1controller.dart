import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Localeize1 extends GetxController {
  Locale intiallang =
      shareprf!.getString("lang") == null ? Get.deviceLocale! : Locale("en");
  //
  void ChangeLang(String codelang) {
    Locale locale = Locale(codelang);
    shareprf!.setString("lang", codelang);
    Get.updateLocale(locale);
  }
}
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Localeize1 extends GetxController {
//   var locale = Locale('en', '').obs;

//   @override
//   void onInit() {
//     super.onInit();
//     loadLocale();
//   }

//   void loadLocale() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? langCode = prefs.getString('langCode') ?? 'en';
//     locale.value = Locale(langCode, '');
//   }

//   void changeLocale(String langCode) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString('langCode', langCode);
//     locale.value = Locale(langCode, '');
//     Get.updateLocale(locale.value);
//   }
// }
