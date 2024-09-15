import 'package:get/get.dart';

class Counter2Controller extends GetxController {
  var counter1 = 0.obs;
  void increment1() {
    counter1++;
  }

  void deicremnt1() {
    if (counter1 > 0) {
      counter1--;
    }
  }
}
