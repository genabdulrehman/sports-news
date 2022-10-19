import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:azul_football/helpers/dimension.dart';
import 'package:azul_football/screens/home_pages/shop/product_details.dart';
import 'package:azul_football/screens/home_pages/widgets/regular_text.dart';

class ProductTile extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String price;
  final String description;
  final int quanitiy;
  bool big;

  ProductTile({
    ThemeData style,
    this.name,
    this.imgUrl,
    this.price,
    this.description,
    this.quanitiy,
    this.big,
  }) : super();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(ProdcutDetailScreen());
            },
            child: Container(
              height: big ? 200 : 160,
              width: big ? 150 : 120,
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      height: big ? 120 : 100,
                      width: big ? 150 : 100,
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //   child: RatingBar.builder(
              //     initialRating: 3,
              //     minRating: 1,
              //     direction: Axis.horizontal,
              //     itemSize: Dimensions.width10 + 3,
              //     allowHalfRating: true,
              //     itemCount: 5,
              //     itemPadding: EdgeInsets.symmetric(horizontal: 0),
              //     itemBuilder: (context, _) => Icon(
              //       Icons.star,
              //       color: Color.fromARGB(255, 237, 187, 38),
              //     ),
              //     onRatingUpdate: (rating) {
              //       print(rating);
              //     },
              //   ),
              // ),
              SizedBox(
                width: Dimensions.width10,
              ),
            ],
          ),
          SizedBox(
            height: Dimensions.width10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RegularText(
              text: name,
              color: Colors.black,
              size: Dimensions.font16,
            ),
          ),
          SizedBox(
            height: Dimensions.height5,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RegularText(
              text: "${price}\$",
              color: Colors.black,
              size: Dimensions.font16,
            ),
          ),
        ],
      ),
    );
  }
}
