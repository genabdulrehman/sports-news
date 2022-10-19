import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:azul_football/api/product_api.dart';
import 'package:azul_football/helpers/dimension.dart';
import 'package:azul_football/models/product_model.dart';
import 'package:azul_football/screens/home_pages/widgets/product_tile.dart';
import 'package:azul_football/screens/home_pages/widgets/regular_text.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    Key key,
  }) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  ProductApi _productApi = ProductApi();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var _pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: theme.iconTheme.color,
        //   ),
        // ),
        title: Text(
          "STORE",
          style: theme.textTheme.headline3,
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ClipOval(
        //       child: Image(image: AssetImage("assets/images/profile.png")),
        //     ),
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Dimensions.height102 + Dimensions.height102 - 4,
              width: Dimensions.screenWidth,
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    height: Dimensions.height102 + Dimensions.height102 - 4,
                    width: Dimensions.screenWidth - 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/shop/sports3.jpeg",
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    height: Dimensions.height102 + Dimensions.height102 - 4,
                    width: Dimensions.screenWidth - 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/shop/sports1.jpeg",
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    height: Dimensions.height102 + Dimensions.height102 - 4,
                    width: Dimensions.screenWidth - 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/shop/sports2.jpeg",
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.black,
                dotHeight: Dimensions.width10 - 2,
                dotWidth: Dimensions.width10 - 2,
              ),
            ),
            SizedBox(
              height: Dimensions.width15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegularText(
                    text: "Best sellers",
                    style: theme.textTheme.headline3,
                    // size: 20,
                  ),
                  Row(
                    children: [
                      RegularText(text: "see more"),
                      SizedBox(
                        width: Dimensions.height5 - 3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Dimensions.height15,
            ),
            Container(
              height: 300,
              width: 500,
              child: ListView.builder(
                  itemCount: ProductApi.productList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return ProductTile(
                      name: ProductApi.productList[index].name,
                      imgUrl: ProductApi.productList[index].imgUrl,
                      price: ProductApi.productList[index].price,
                      big: true,
                    );
                  })),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset("assets/shop/sports1.jpeg"),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegularText(
                    text: "Featured products",
                    // size: 20,
                  ),
                  Row(
                    children: [
                      RegularText(text: "see more"),
                      SizedBox(
                        width: Dimensions.height5 - 3,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: 500,
              child: ListView.builder(
                  itemCount: ProductApi.productList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return ProductTile(
                      name: ProductApi.productList[index].name,
                      imgUrl: ProductApi.productList[index].imgUrl,
                      big: false,
                      price: ProductApi.productList[index].price,
                    );
                  })),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
