import 'package:azul_football/api/booking_api.dart';
import 'package:azul_football/api/events_api.dart';
import 'package:azul_football/api/news_api.dart';
import 'package:azul_football/helpers/colors.dart';
import 'package:azul_football/screens/home_pages/widgets/booking_card_widget.dart';
import 'package:azul_football/screens/home_pages/widgets/choose_sport_widget.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

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
      appBar: AppBar(
          // leading: Align(
          //   alignment: Alignment.center,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 5),
          //     child: Text(
          //       "HOME",
          //       style: theme.textTheme.headline3,
          //     ),
          //   ),
          // ),
          // title: Text(
          //   "HOME",
          //   style: theme.textTheme.headline3,
          // ),
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "UPCOMING BOOKINGS",
                    style: theme.textTheme.headline1,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.teal,
                  )
                ],
              ),
              SizedBox(
                height: size.height * .03,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < BookingApi.upComingData.length; i++)
                      ShakeListTransition(
                        duration: Duration(milliseconds: (i + 3) * 300),
                        axis: Axis.horizontal,
                        child: BookingCardWidget(
                          bookingModel: BookingApi.upComingData[i],
                          width: MediaQuery.of(context).size.width * .9,
                          firstColor: kUpcomingEventCardStartColor,
                          secondColor: kUpcomingEventCardEndColor,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SPORTS",
                    style: theme.textTheme.headline1,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.teal,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
                    onTap: () {
                      Get.to(
                        () => BottomNavScreen(
                          index: 1,
                          newsData: NewsApi.aListNewsFootball,
                          eventData: EventsApi.eListEvents,
                        ),
                        transition: Transition.fadeIn,
                      );
                    },
                    url:
                        "https://media.gettyimages.com/id/1351666177/photo/manchester-united-v-manchester-city-premier-league.webp?s=1024x1024&w=gi&k=20&c=TFoWrG6ruTToZx8vGOJl5Myg_GKKa0vpBMXKkAKdkyc=",
                    title: "Football",
                  ),
                  ChooseSportWidget(
                    onTap: () {
                      Get.to(
                        () => BottomNavScreen(
                          index: 1,
                          newsData: NewsApi.aListNewsBasketball,
                          eventData: EventsApi.eListEventsBasketball,
                        ),
                        transition: Transition.fadeIn,
                      );
                    },
                    url:
                        "https://images.unsplash.com/photo-1579487685737-e435a87b2518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFza2V0YmFsbCUyMHBsYXllcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
                    title: "Basketball",
                  ),
                  ChooseSportWidget(
                    onTap: () {
                      Get.to(
                        () => BottomNavScreen(
                          index: 1,
                          newsData: NewsApi.aListNewsCricket,
                          eventData: EventsApi.eventsCricket,
                        ),
                        transition: Transition.fadeIn,
                      );
                    },
                    url:
                        "https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_1200,q_50/lsci/db/PICTURES/CMS/347200/347269.jpg",
                    title: "Cricket",
                  ),
                  ChooseSportWidget(
                    onTap: () {
                      Get.to(
                        () => BottomNavScreen(
                          index: 1,
                          newsData: NewsApi.aListNewsVolleyball,
                          eventData: EventsApi.eListEventsVolleyball,
                        ),
                        transition: Transition.fadeIn,
                      );
                    },
                    url:
                        "https://multifiles.pressherald.com/uploads/sites/10/2021/10/27157863_20211028_volleyball_9-e1662569448264.jpg",
                    title: "Volleyball",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
