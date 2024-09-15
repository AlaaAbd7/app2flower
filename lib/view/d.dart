import 'package:flutter/material.dart';

class Drobbottomw1 extends StatelessWidget {
  Drobbottomw1({super.key});
  //String dropdownValue = 'Flowers';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        //    value: dropdownValue,
        icon: Image.asset("images/categories 1 (1).png"),
        // iconSize: 24,
        // elevation: 16,
        //    style: TextStyle(color: Colors.deepPurple),
        // underline: Container(
        //   height: 2,
        //   color: Colors.deepPurpleAccent,
        // ),
        onChanged: (String? newValue) {
          setState(() {
            // dropdownValue = newValue!;
          });
        },
        items: <String>['Flowers', 'Plants', 'Bouquet', 'Offers', 'Gifts']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
