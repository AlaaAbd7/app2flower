import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Locale11Controller extends GetxController {
  bool isLTR = true;

  @override
  void onInit() {
    super.onInit();
    loadLocale();
  }

  void toggleLocale() async {
    isLTR = !isLTR;
    update();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLTR', isLTR);
  }

  void loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLTR = prefs.getBool('isLTR') ?? true;
    update();
  }
}
