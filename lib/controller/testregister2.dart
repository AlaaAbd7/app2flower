import 'package:get/get.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../view/verification_Co.dart';

class RegisterController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var userName = ''.obs;
  var phoneNumber = ''.obs;
  var passwordConfirmation = ''.obs;

  Future<void> register() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final response = await http.post(
          Uri.parse(
              'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/register'),
          body: {
            'email': email.value,
            'password': password.value,
            'user_name': userName.value,
            'phone_number': phoneNumber.value,
            'password_confirmation': passwordConfirmation.value,
          },
          headers: {
            'Accept': 'application/json'
          });

      if (response.statusCode == 200) {
        await prefs.setString('email', email.value);

        Get.snackbar('Success', 'Registration successful');

        Get.to(VerificationCo());
      } else {
        Get.snackbar('Error', 'Registration failed');
      }
    } catch (e) {
      Get.snackbar("Erroe", "An Error");
    }
  }
}
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;
// import '../view/verification_Co.dart';

// class RegisterController extends GetxController {
//   var email = ''.obs;
//   var password = ''.obs;
//   var userName = ''.obs;
//   var phoneNumber = ''.obs;
//   var passwordConfirmation = ''.obs;

//   Future<void> register() async {
//     final prefs = await SharedPreferences.getInstance();
//     try {
//       final response = await http.post(
//         Uri.parse(
//             'https://abdulrahman-bashir.trainees-mad-s.com/api/v1/auth/register'),
//         body: {
//           'email': email.value,
//           'password': password.value,
//           'user_name': userName.value,
//           'phone_number': phoneNumber.value,
//           'password_confirmation': passwordConfirmation.value,
//         },
//         headers: {'Accept': 'application/json'},
//       ).timeout(Duration(seconds: 5)); //  مهلة زمنية للطلب

//       if (response.statusCode == 200) {
//         await prefs.setString('email', email.value);
//         Get.snackbar('Success', 'Registration successful');
//         Get.to(VerificationCo());
//       } else {
//         Get.snackbar('Error', 'Registration failed');
//       }
//     } catch (e) {
//       Get.snackbar('Error', 'An error occurred: $e');
//     }
//   }
// }
