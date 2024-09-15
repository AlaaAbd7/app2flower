import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/commentcontroller.dart';
import '../controller/darkthemcontroller.dart';
import '../controller/localeize1controller.dart';
import '../models/bottonnevbar.dart';
import '../models/flower_P_h.dart';

class Flowerdetil extends StatefulWidget {
  const Flowerdetil({super.key});
  @override
  State<Flowerdetil> createState() => _FlowerdetilState();
}

class _FlowerdetilState extends State<Flowerdetil> {
  final Localeize1 controllerlang = Get.find();
  final ThemeController themeController = Get.find();
  final CommentController commentController = Get.put(CommentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColorLight,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  // color: Colors.red,
                  height: 247.h,
                  width: 400.w,
                  //  width: double.infinity.w,
                  //  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height / 2.55.h,
                  child: FlowerPH()),
              SizedBox(
                height: 23.h,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromARGB(255, 41, 13, 46),
                        width: 3)),
                margin: EdgeInsets.symmetric(horizontal: 30.w),
                width: 350.w,
                height: 222.h,
                child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'images/snapedit_1724253534326.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.h, horizontal: 1.5.w),
                              width: 140.w, height: 60.h,
                              //   color: Colors.red,
                              //alignment: Alignment.topRight,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 10.h),

                              child: Text(
                                " Phalaenopsis White Orchid Steam ",
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: const Color.fromARGB(
                                        255, 115, 34, 129)),
                              ),
                            ),
                          ),
                          SizedBox(height: 2.h),
                          // Positioned(
                          //   top: 388.h,
                          //   left: 251.w,
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 2.h),
                            margin: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 30.h),
                            color: Colors.blue[50],
                            width: 120.w,
                            height: 32.h,
                            child: Text(
                              r"Price: $20",
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              // Container(
              //   alignment: Alignment.topLeft,
              //   margin: EdgeInsets.symmetric(horizontal: 4),
              //   child:

              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset("images/Rectangle 70.png"),
                        Positioned(
                          bottom: 0.8.h,
                          right: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "images/f.d.3.png",
                                fit: BoxFit.contain,
                                // width: 80,
                                height: 55,
                              )),
                        ),
                      ],
                    ),
                    Text("white")
                  ],
                ),

                //   // SizedBox(
                //   //   width: 2.w,
                //   // ),

                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset("images/Rectangle 70.png"),
                        Positioned(
                          bottom: 0.8.h,
                          right: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "images/f.d.2.png",
                                fit: BoxFit.contain,
                                // width: 80,
                                height: 55,
                              )),
                        ),
                      ],
                    ),
                    Text("withe"),
                  ],
                ),

                //   // SizedBox(
                //   //   width: 2.w,
                //   // ),

                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset("images/Rectangle 70.png"),
                        Positioned(
                          bottom: 0.8.h,
                          right: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "images/flower1123det.png",
                                fit: BoxFit.contain,
                                // width: 80,
                                height: 55,
                              )),
                        ),
                      ],
                    ),
                    Text("pink")
                  ],
                ),
              ]),

              Divider(
                thickness: 3,
                color: Colors.grey[100],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "Flower information",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 68, 19, 77)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "White orchids are elegant and timeless flowers that symbolize purity, beauty, and refinement. Known for their pristine white petals and intricate blooms, they are a favorite in both floral arrangements and home decor. White orchids are often associated with luxury and grace, making them a popular choice for weddings, anniversaries, and other special occasions.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(153, 0, 0, 0)),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20.h,
              ),

              ///
              ///
              ///
              ///
              Divider(
                thickness: 3,
                color: Colors.grey[100],
              ),

              ///
              SizedBox(
                height: 30.h,
              ),

              ///
              ///
              ///

              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "How to Take care of it",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 68, 19, 77)),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text(
                      "Place your orchid in bright, indirect light and maintain a temperature between 65-75°F. Water weekly, allowing the medium to dry slightly, and maintain 50-70% humidity. Use orchid fertilizer monthly and repot every 1-2 years with specialized medium. Prune dead blooms and check regularly for pests to keep it healthy.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(153, 0, 0, 0)),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 30.h,
              ),

              Divider(
                thickness: 3,
                color: Colors.grey[100],
              ),
              SizedBox(
                height: 30.h,
              ),

              ///
              ///
              ///
              ///
              ///
              ///

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          onLongPress: () {},
                          style: ElevatedButton.styleFrom(
                            // minimumSize: const Size(100, 50), // الحجم الأدنى
                            fixedSize: Size(170.w, 60.h), // الحجم الثابت
                            // foregroundColor: Colors.white,
                            backgroundColor: Colors.blue[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: Text(
                            "Add To Basket ",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: const Color.fromARGB(255, 68, 19, 77)),
                          ),
                        )),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // minimumSize: const Size(100, 50), // الحجم الأدنى
                            fixedSize: const Size(170, 60), // الحجم الثابت
                            //foregroundColor: Colors.white,
                            backgroundColor: Colors.pink[100],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                color: const Color.fromARGB(255, 68, 19, 77)),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              Divider(
                thickness: 3,
                color: Colors.grey[100],
              ),
              SizedBox(
                height: 30.h,
              ),

              ///
              ///
              ///
              ///
              ///
              ///
              ///
              ///

              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  height: 22.w,
                  child: Text(
                    "Reviwers",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 4.h,
              ),
              Divider(
                indent: 40.w,
                endIndent: 40.w,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 60.w),
                            child: Text("User Name")),
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 10.w, left: 90.w),
                            child: Text("Date Of Review ")),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          left: 60.w,
                        ),
                        child: Text(
                          "such a flower i love havig it in my living room  ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 10.w),
                    // width: 90.w,
                    // height: 14.h,
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      maxRating: 5, // تحديد النطاق الأقصى للتقييم
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15, // عدد النجوم
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Divider(
                indent: 40.w,
                endIndent: 40.w,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 60.w),
                            child: Text("User Name")),
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 10.w, left: 90.w),
                            child: Text("Date Of Review ")),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          left: 60.w,
                        ),
                        child: Text(
                          "beautiful ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 10.w),
                    // width: 90.w,
                    // height: 14.h,
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      maxRating: 5, // تحديد النطاق الأقصى للتقييم
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15, // عدد النجوم
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                indent: 40.w,
                endIndent: 40.w,
              ),
              SizedBox(
                height: 5.h,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 60.w),
                            child: Text("User Name")),
                      ),
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 10.w, left: 90.w),
                            child: Text("Date Of Review ")),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          left: 60.w,
                        ),
                        child: Text(
                          "glad i bought it   ",
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 10.w),
                    // width: 90.w,
                    // height: 14.h,
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      maxRating: 5, // تحديد النطاق الأقصى للتقييم
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 15, // عدد النجوم
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),

              Divider(
                indent: 40.w,
                endIndent: 40.w,
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.w),
                width: 334.w,
                height: 82.h,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: TextField(
                          onChanged: (value) {
                            commentController.commentText.value = value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Add Comment',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Bottonnevbar());
  }
}
