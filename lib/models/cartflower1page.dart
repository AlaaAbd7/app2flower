// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:login_flower/view/product.dart';

// class CartFlower1Page extends StatelessWidget {
//   CartFlower1Page({super.key});
//   final List<Product> products = [
//     Product(
//       name: 'Magnolia Bush',
//       price: 9.99,
//       imageasset: 'images/Rectangle flowerpage1.png',
//       colors: [
//         Colors.white,
//         Color(0xFFEBA4A4),
//       ],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'images/p1cart.png',
//       colors: [Colors.red, Colors.red],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'https://via.placeholder.com/150',
//       colors: [Colors.red, Colors.red],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'https://via.placeholder.com/150',
//       colors: [Colors.red, Colors.red],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'https://via.placeholder.com/150',
//       colors: [Colors.red, Colors.red],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'https://via.placeholder.com/150',
//       colors: [Colors.red, Colors.red],
//     ),
//     Product(
//       name: 'Product 4',
//       price: 9.99,
//       imageasset: 'https://via.placeholder.com/150',
//       colors: [Colors.red, Colors.red],
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // drawer: Image.asset(""),
//         body: Center(
//             child: Container(
//       width: 165.w,
//       height: 300.h,
//       decoration: BoxDecoration(
//         border: Border.all(color: const Color.fromARGB(255, 39, 13, 44)),
//         boxShadow: [const BoxShadow(blurRadius: 8)],
//         color: Colors.blue[50],
//         borderRadius: const BorderRadius.only(
//             bottomLeft: Radius.circular(30),
//             topLeft: Radius.circular(3),
//             topRight: Radius.circular(3),
//             bottomRight: Radius.circular(3)),
//       ),
//       child: Column(
//         children: [
//           Container(
//               margin: EdgeInsets.only(top: 1.5.h),
//               // alignment: Alignment.center,
//               width: 155.w,
//               height: 180.h,
//               child: Expanded(
//                 child: Image.asset(
//                   "images/Rectangle flowerpage1.png",
//                   filterQuality: FilterQuality.high,
//                   fit: BoxFit.contain,
//                 ),
//               )),
//           SizedBox(
//             height: 3.h,
//           ),
//           Container(
//             // width: 40,
//             // height: 20,
//             //  margin: EdgeInsets.only(left: 30.w),
//             alignment: Alignment.center,
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               //   mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                     // alignment: Alignment.center,
//                     width: 17.w,
//                     height: 17.6.h,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(),
//                       shape: BoxShape.circle,
//                     ),
//                     child: IconButton(
//                         onPressed: () {},
//                         icon: Image.asset(
//                           "images/Ellipse 7.png",
//                           fit: BoxFit.cover,
//                         ))),

//                 // SizedBox(
//                 //   width: 1.w,
//                 // ),
//                 Container(
//                     // alignment: Alignment.center,
//                     width: 17.w,
//                     height: 17.6.h,
//                     decoration: BoxDecoration(
//                       color: Colors.pink[100],
//                       border: Border.all(),
//                       shape: BoxShape.circle,
//                     ),
//                     child: IconButton(
//                         onPressed: () {},
//                         icon: Image.asset(
//                           "images/Ellipse 6.png",
//                           fit: BoxFit.cover,
//                         ))),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 6.h,
//           ),
//           Expanded(
//             flex: 1,
//             child: const Text(
//               "Magnolia Bush",
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//             ),
//           ),
//           SizedBox(
//             height: 4.h,
//           ),
//           Expanded(
//             flex: 1,
//             child: const Text(
//               r"Price: 12$",
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//             ),
//           ),
//           SizedBox(
//             height: 5.h,
//           ),
//           Expanded(
//             flex: 1,
//             child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   fixedSize: Size(123.w, 24.h), // الحجم الثابت
//                   // foregroundColor: Colors.white,
//                   backgroundColor: Colors.pink[50],

//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                 ),
//                 child: Text("Add To Cart")),
//           ),
//           SizedBox(
//             height: 13.h,
//           ),
//         ],
//       ),
//     )));
//   }
// }
