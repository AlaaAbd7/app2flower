import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isSelected = [false, false, false].obs;

  void toggle(int index) {
    isSelected[index] = !isSelected[index];
  }
}
