// import 'package:get/get.dart';

// class DropdownController extends GetxController {
//   var selectedValue = 'Option 1'.obs;

//   void updateSelectedValue(String value) {
//     selectedValue.value = value;
//   }
// }
import 'package:get/get.dart';

class DropdownController extends GetxController {
  var selectedValue = 'en'.obs;

  get isLTR => null;

  void updateSelectedValue(String value) {
    selectedValue.value = value;
  }
}
