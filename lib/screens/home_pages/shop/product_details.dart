import 'package:azul_football/helpers/dimension.dart';
import 'package:azul_football/screens/home_pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/regular_text.dart';

class ProdcutDetailScreen extends StatefulWidget {
  const ProdcutDetailScreen() : super();

  @override
  State<ProdcutDetailScreen> createState() => _ProdcutDetailScreenState();
}

class _ProdcutDetailScreenState extends State<ProdcutDetailScreen> {
  final _pageController = PageController();
  List<String> _reviewImageSource = [
    'assets/shop/sports1.jpeg',
    'assets/shop/sports2.jpeg',
    'assets/shop/sports3.jpeg',
  ];
  List<String> _reviewerName = ['Alina Baig', 'Javed ali'];
  List<String> _reviewerDesc = [
    'Loved that gym, awesome staff with most useful equipments and airy hall, fantastic.',
    'Yeah, it was quite good but I need more time to be here, it was not that low.'
  ];

  List<String> _reviewerPhoto = [
    'assets/shop/fasion.jpeg',
    'assets/shop/fasion2.jpeg',
  ];

  List<String> _reviewerSamplePhoto = [
    'assets/shop/sports1.jpeg',
    'assets/shop/sports2.jpeg',
    'assets/shop/sports3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Maniac",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   leading: GestureDetector(
      //     onTap: () {
      //       Get.back();
      //     },
      //     child: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 10),
      //       child: Icon(
      //         Icons.shopping_bag,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: Dimensions.screenHeight / 2,
            width: Dimensions.screenWidth,
            child: PageView(
              controller: _pageController,
              children: [
                Container(
                  height: Dimensions.screenHeight / 2,
                  width: Dimensions.screenWidth - 5,
                  child: Image.asset(
                    "assets/shop/sports1.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Container(
                  height: Dimensions.screenHeight / 2,
                  width: Dimensions.screenWidth - 5,
                  child: Image.asset(
                    "assets/shop/sports2.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: Dimensions.screenHeight / 2,
                  width: Dimensions.screenWidth - 5,
                  child: Image.asset(
                    "assets/shop/sports3.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
                dotHeight: Dimensions.width10 - 2,
                dotWidth: Dimensions.width10 - 2,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Divider(),
          SizedBox(
            height: Dimensions.height15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegularText(
                  text: "Fasion Cloth",
                  // size: 20,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.transparent)),
                  child: Icon(Icons.favorite_outline,
                      size: 18, color: Colors.transparent),
                )
              ],
            ),
          ),
          SizedBox(
            height: Dimensions.height5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegularText(
                    text: "100.4\$",
                    color: Colors.black,
                    size: Dimensions.font16,
                  ),
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(.2))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 18,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            child: RegularText(
                              text: "1",
                              color: Colors.black,
                              size: Dimensions.font16,
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RegularText(
                text: "Size",
                color: Colors.black,
                size: Dimensions.font18,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height15,
          ),
          Center(
            child: Container(
              height: 50,
              width: Dimensions.screenWidth * 0.8,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    List<String> names = [
                      'S',
                      'M',
                      'L',
                      'XL',
                      'XLL',
                    ];
                    return Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.grey.withOpacity(.2))),
                      child: Center(
                        child: RegularText(
                          text: "${names[index]}",
                          color: Colors.black,
                          size: Dimensions.font16,
                        ),
                      ),
                    );
                  })),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RegularText(
                text: "Description",
                color: Colors.black,
                size: Dimensions.font18,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: RegularText(
                text:
                    " This is description of product which so hot in selling in current market prices which is, which so completetive.sThis is description of product which so hot in selling in current market prices which is, which so completetive.sThis is description of product which so hot in selling in current market prices which is, which so completetive.s",
                color: Colors.black,
                size: Dimensions.font18,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: CustomButton(title: "Buy", clickFuction: () {}),
          ),
          SizedBox(
            height: Dimensions.height25,
          ),
          SizedBox(
            height: Dimensions.width10,
          ),
        ]),
      ),
    );
  }
}

Widget reviewTile(BuildContext context, String name, String desc,
    String reviwerPhoto, List<String> reviwerSamplePhotos) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: Dimensions.height102 - 18,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage(reviwerPhoto), fit: BoxFit.cover),
                ),
                width: Dimensions.height102 - 2,
                height: Dimensions.height102 - 2,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: Dimensions.height102 - 2),
                      Text(
                        'Sep 03',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.width20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.width10,
        ),
        Text(
          desc,
          maxLines: 3,
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: Dimensions.width20,
        ),
        Container(
          width: width * .8,
          height: Dimensions.height102 - 2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, ctx) {
              return reviewImages(reviwerSamplePhotos[ctx]);
            },
          ),
        ),
        Divider(
          thickness: 2,
          endIndent: 10,
          indent: 10,
        )
      ],
    ),
  );
}

Widget reviewImages(String reviewImagesSource) {
  return Container(
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.green,
      image: DecorationImage(
          image: AssetImage(reviewImagesSource), fit: BoxFit.cover),
    ),
    width: Dimensions.height102 - 12,
    height: Dimensions.height102 - 12,
  );
}
