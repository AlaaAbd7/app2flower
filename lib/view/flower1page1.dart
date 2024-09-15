import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:login_flower/models/product.dart';
import 'package:login_flower/view/MyCart1.dart';

import '../models/bottonnevbar.dart';
import '../models/flower_P_h.dart';
import 'filterpage2.dart';
import 'flowerdetil.dart';

class Flower1page1 extends StatelessWidget {
  Flower1page1({super.key});
  final List<Product> products = [
    Product(
      name: 'Magnolia Bush',
      price: 9.99,
      imageasset: 'images/pc1.png',
      colors: [
        Colors.white,
        Color(0xFFEBA4A4),
      ],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc2.png',
      colors: [Colors.red, Colors.red],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc3.png',
      colors: [Colors.red, Colors.red],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc4.png',
      colors: [
        Colors.red,
        Color.fromARGB(255, 175, 97, 226),
        const Color.fromARGB(255, 236, 228, 228)
      ],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc5.png',
      colors: [Colors.red, Colors.red],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc6.png',
      colors: [Colors.red, Colors.red],
    ),
    Product(
      name: 'Product 4',
      price: 9.99,
      imageasset: 'images/pc7.png',
      colors: [Colors.red, Colors.red, Colors.red],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColorLight,
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            height: 247.h,
            width: 400.w,
            //  width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height / 2.55.h,
            child: FlowerPH()),
        Container(
          alignment: Alignment.center,
          //  color: Colors.yellow,
          width: 127.w,
          height: 39.h,
          margin: EdgeInsets.symmetric(
            horizontal: 80.w,
          ),
          child: Text(
            "2".tr,
            style: TextStyle(
                color: Color.fromARGB(255, 83, 16, 95),
                fontSize: 32,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 35.h,
        ),
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Expanded(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 15.w,
                children: [
                  Container(
                    width: 66,
                    height: 40,
                    //  padding: EdgeInsets.only(left: 15, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(2)),
                    child: Expanded(
                      child: TextButton(
                          onPressed: () {
                            Get.to(Filterpage2());
                          },
                          child: Text("3".tr)),
                    ),
                  ),

                  // SizedBox(
                  //   width: 30.w,
                  // ),

                  Container(
                    width: 111.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(2)),
                    // padding: EdgeInsets.only(left: 20, top: 10),
                    child: Expanded(
                      child: TextButton(onPressed: () {}, child: Text("4".tr)),
                    ),
                  ),

                  // SizedBox(
                  //   width: 30.w,
                  // ),
                  Container(
                    width: 111.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(2)),
                    // padding: EdgeInsets.only(left: 20, top: 10),
                    child: Expanded(
                      child: TextButton(onPressed: () {}, child: Text("5".tr)),
                    ),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 15.h,
        ),
        Container(
            // width: double.maxFinite.w, height: 300.h,
            margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            //alignment: Alignment.center,

            child: GridView.builder(
                shrinkWrap: true,
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300.h,
                  crossAxisCount: 2,
                  childAspectRatio: 0.7.h,
                  mainAxisSpacing: 30.h,
                  crossAxisSpacing: 27.w,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 165.w,
                    height: 300.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 39, 13, 44)),
                      boxShadow: [const BoxShadow(blurRadius: 8)],
                      color: Colors.blue[50],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(3),
                          topRight: Radius.circular(3),
                          bottomRight: Radius.circular(3)),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 1.h),
                            // alignment: Alignment.center,
                            width: 155.w,
                            height: 180.h,
                            child: Expanded(
                              child: Image.asset(
                                products[index].imageasset,
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.contain,
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Row(
                            //    crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: products[index].colors.map((color) {
                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(17.w, 17.h),
                                  backgroundColor: color,
                                  shape: CircleBorder(side: BorderSide()),
                                ),
                                onPressed: () {},
                                child: null,
                              );
                            }).toList(),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: TextButton(
                              onPressed: () {
                                Get.to(Flowerdetil());
                              },
                              child: Text(
                                products[index].name,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(
                                        255, 101, 38, 112)),
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '\$${products[index].price}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF3C2367)),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(My_Cart2());
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(123.w, 24.h), // الحجم الثابت
                                // foregroundColor: Colors.white,
                                backgroundColor: Colors.pink[100],

                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                              ),
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(color: Color(0xFF3C2367)),
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  );
                })),
      ])),
      bottomNavigationBar: Bottonnevbar(),
    );
  }
}
