import 'package:flutter/material.dart';

// ThemesAPP darkTheme = ThemeApp(
//   brightness: Brightness.dark,
//   primaryColor: Color.fromARGB(255, 39, 52, 66),

//   // باقي إعدادات الثيم الداكن
// );
// ThemesAPP lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primaryColor: Colors.blue[50],
//   //backgroundColor: Color.fromARGB(255, 210, 235, 255)
//   // باقي إعدادات الثيم الداكن
// );

// class ThemesAPP {
//   static final light = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.blue[50],
//   );
//   static final dark = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Color.fromARGB(255, 101, 111, 122),
//   );
// }

class ThemesAPP1 {
  static ThemeData CustomDarkTheme = ThemeData.dark().copyWith(
    primaryColor: Color(0xFF455555),
    primaryColorLight: Color(0xFF455555),

    // primaryColorDark: Color(0xFFA08EA4)
  );
  static ThemeData CustomlightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.blue[50],
    primaryColorLight: Colors.white,
    // primaryColorDark: Color(0xFFC9C3E6)
  );
}
