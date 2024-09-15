import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:login_flower/main.dart';

import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  late SharedPreferences _prefs;
  final _isDarkTheme = false.obs;

  bool get isDarkTheme => _isDarkTheme.value;

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  void _loadTheme() async {
    _prefs = await SharedPreferences.getInstance();
    _isDarkTheme.value = _prefs.getBool('isDarkTheme') ?? false;
  }

  void toggleTheme() {
    _isDarkTheme.value = !_isDarkTheme.value;
    _prefs.setBool('isDarkTheme', _isDarkTheme.value);
    Get.changeThemeMode(_isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }
}
