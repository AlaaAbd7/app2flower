import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/models/darktheme.dart';

//bimport 'package:login_flower/view/setting2.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'models/pakage/Locale/mylocale.dart';
//import 'controller/darkthemcontroller.dart';
import 'controller/darkthemcontroller.dart';
import 'controller/localeize1controller.dart';

import 'view/login2.dart';
import 'view/setting2.dart';
//import 'view/setting2.dart';
//import 'view/setting2.dart';
//import 'models/login2.dart';

SharedPreferences? shareprf;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shareprf = await SharedPreferences.getInstance();

  runApp(MyApplogin());
}

// ignore: must_be_immutable
class MyApplogin extends StatelessWidget {
  MyApplogin({super.key});

  Localeize1 controller = Get.put(Localeize1());

  ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            locale: controller.intiallang, // تعيين اللغة العربية

            translations: My_Locale(),
            theme: ThemesAPP1.CustomlightTheme,
            darkTheme: ThemesAPP1.CustomDarkTheme,
            themeMode: ThemeController.to.isDarkTheme
                ? ThemeMode.dark
                : ThemeMode.light,

            //             localizationsDelegates: [
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            // ],
            // getPages: [
            //   GetPage(name: "/Flowerpage1", page: () => Flowerpage1()),
            //   GetPage(name: "/HomePage2", page: () => HomePage2()),
            //   GetPage(name: "/Filterpage2", page: () => Filterpage2()),
            //   GetPage(name: "/My_Cart2", page: () => My_Cart2()),
            //   GetPage(name: "/Payment", page: () => Payment()),

            //   GetPage(name: "/Payment22", page: () => Payment22()),

            //   GetPage(name: "/Login2", page: () => Login2()),
            //   GetPage(name: "/Singup12", page: () => Singup12()),

            //   GetPage(name: "/VerificationCo", page: () => VerificationCo()),
            //   GetPage(name: "/Setting2", page: () => Setting2()),
            //   GetPage(name: "/Flower_details1", page: () => Flower_details1()),
            //   //  GetPage(name: "/pageone", page: () =>Payment() ),
            //   //   GetPage(name: "/pageone", page: () =>Payment() ),
            // ],

            home: Login3(),
            //home: Setting2(),
          );
        });
  }
}
