import 'package:get/get.dart';

class Count1Controller extends GetxController {
  var counter = 0.obs;

  void incremnt() {
    counter++;
  }

  void deincrment() {
    if (counter > 0) {
      counter--;
    }
  }
}
