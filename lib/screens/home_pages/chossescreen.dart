import 'package:azul_football/screens/favorites/favorites_clubs.dart';
import 'package:azul_football/screens/home_pages/widgets/choose_sport_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_nav_screen.dart';

class ChooseScree extends StatefulWidget {
  const ChooseScree({Key key}) : super(key: key);

  @override
  State<ChooseScree> createState() => _ChooseScreeState();
}

class _ChooseScreeState extends State<ChooseScree> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height*.2,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SPORTS",style: theme.textTheme.headline1,),
                    Icon(Icons.arrow_forward,color: Colors.teal,)
                  ],
                ),
                SizedBox(height: 20,),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  childAspectRatio: (1 / 1.3),
                  padding: const EdgeInsets.all(0.0),
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  children: [
                    ChooseSportWidget(
                      onTap: (){
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/football.jpeg",
                      title: "Football",
                    ),
                    ChooseSportWidget(
                      onTap: (){
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/basketball.jpeg",
                      title: "Tennis",
                    ),
                    ChooseSportWidget(
                      onTap: (){
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/football.jpeg",
                      title: "Cricket",
                    ),
                    ChooseSportWidget(
                      onTap: (){
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/football.jpeg",
                      title: "Football",
                    ),
                    ChooseSportWidget(
                      onTap: (){
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/football.jpeg",
                      title: "Football",
                    ),
                    ChooseSportWidget(
                      onTap: (){
                        // Get.to(
                        //       () => FavoritesClubsScreen(
                        //     index: 1,
                        //   ),
                        //   transition: Transition.fadeIn,
                        // );
                        Get.to(
                              () => BottomNavScreen(
                            index: 1,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      url: "assets/images/leagues/basketball.jpeg",
                      title: "Tennis",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
