import 'package:azul_football/api/events_api.dart';
import 'package:azul_football/api/leagues_api.dart';
import 'package:azul_football/api/news_api.dart';
import 'package:azul_football/helpers/constants.dart';

import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/screens/details/events_details.dart';
import 'package:azul_football/screens/details/news_details.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';

import 'package:azul_football/widgets/widgets_news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'bottom_nav_screen.dart';

class NewsPage extends StatefulWidget {
  final index;
  const NewsPage({Key key, this.index}) : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _selectedRecent = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10.0),
          //TODO: List Lives Favorites
          Container(
            width: mSize.size.width,
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              children: [
                for (int i = 0; i < 4; i++)
                  (indexgame == 0)
                      ? ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 300),
                          axis: Axis.horizontal,
                          child: CardFavoritTeam(
                            scoreHome: EventsApi.eListEvents[i].scoreHome,
                            scoreAway: EventsApi.eListEvents[i].scoreAway,
                            logoAway: EventsApi.eListEvents[i].logoAway,
                            logoHome: EventsApi.eListEvents[i].logoHome,
                            nameAway: EventsApi.eListEvents[i].nameAway,
                            nameHome: EventsApi.eListEvents[i].nameHome,
                            leagueName: LeaguesApi.lLeaguesList[i].name,
                            onTap: () {
                              //TODO: Open Events Details
                              Get.to(
                                () => EventDetails(id: i, leagueId: i),
                              );
                            },
                          ),
                        )
                      : ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 300),
                          axis: Axis.horizontal,
                          child: CardFavoritTeam(
                            scoreHome:
                                EventsApi.eListEventsBasketball[i].scoreHome,
                            scoreAway:
                                EventsApi.eListEventsBasketball[i].scoreAway,
                            logoAway:
                                EventsApi.eListEventsBasketball[i].logoAway,
                            logoHome:
                                EventsApi.eListEventsBasketball[i].logoHome,
                            nameAway:
                                EventsApi.eListEventsBasketball[i].nameAway,
                            nameHome:
                                EventsApi.eListEventsBasketball[i].nameHome,
                            leagueName:
                                LeaguesApi.lLeaguesListBasketball[i].name,
                            onTap: () {
                              //TODO: Open Events Details
                              Get.to(
                                () => EventDetails(id: i, leagueId: i),
                              );
                            },
                          ),
                        ),
              ],
            ),
          ),

          SizedBox(height: 5.0),
          //TODO: Carousel Recent's news
          Container(
            width: mSize.size.width,
            height: 270,
            child: PageView(
              onPageChanged: (val) {
                setState(() {
                  _selectedRecent = val;
                });
              },
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 3; i++)
                  (indexgame == 0)
                      ? ShakeTransition(
                          duration: Duration(milliseconds: 1600),
                          axis: Axis.horizontal,
                          child: CardRecentNews(
                            title: NewsApi.aListNews[i].title,
                            image: NewsApi.aListNews[i].image,
                            date: NewsApi.aListNews[i].date,
                            category: NewsApi.aListNews[i].category,
                            onTap: () {
                              Get.to(
                                () => BottomNavScreen(
                                  screen: NewsDetails(
                                    id: i,
                                  ),
                                  indexPage: 1,
                                ),
                                transition: Transition.fadeIn,
                              );
                            },
                          ),
                        )
                      : ShakeTransition(
                          duration: Duration(milliseconds: 1600),
                          axis: Axis.horizontal,
                          child: CardRecentNews(
                            title: NewsApi.aListNewsBasketball[i].title,
                            image: NewsApi.aListNewsBasketball[i].image,
                            date: NewsApi.aListNewsBasketball[i].date,
                            category: NewsApi.aListNewsBasketball[i].category,
                            onTap: () {
                              Get.to(
                                () => BottomNavScreen(
                                  screen: NewsDetails(
                                    id: i,
                                  ),
                                  indexPage: 1,
                                ),
                                transition: Transition.fadeIn,
                              );
                            },
                          ),
                        ),
              ],
            ),
          ),
          //Swiper
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                ShakeTransition(
                  duration: Duration(milliseconds: 1600),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInSine,
                    width: _selectedRecent == i ? 50.0 : 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                      color: _selectedRecent == i
                          ? theme.primaryColor
                          : theme.primaryColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 20.0),
          ShakeTransition(
            duration: Duration(milliseconds: 1600),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.fire,
                    size: 22.0,
                    color: theme.primaryColor,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    getTranslated(context, 'latest_stories'),
                    style: theme.textTheme.headline1.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.0),
          //TODO : Latest Stories
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                for (int i = 0; i < NewsApi.aListNews.length; i++)
                  (indexgame == 0)
                      ? ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 300),
                          // axis: Axis.vertical,
                          child: CardLatestNews(
                            category: NewsApi.aListNews[i].category,
                            image: NewsApi.aListNews[i].image,
                            title: NewsApi.aListNews[i].title,
                            onTap: () {
                              //TODO : Open News
                              Get.to(
                                () => BottomNavScreen(
                                  screen: NewsDetails(
                                    id: i,
                                  ),
                                  indexPage: 1,
                                ),
                                transition: Transition.fadeIn,
                              );
                            },
                          ),
                        )
                      : ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 300),
                          // axis: Axis.vertical,
                          child: CardLatestNews(
                            category: NewsApi.aListNewsBasketball[i].category,
                            image: NewsApi.aListNewsBasketball[i].image,
                            title: NewsApi.aListNewsBasketball[i].title,
                            onTap: () {
                              //TODO : Open News
                              Get.to(
                                () => BottomNavScreen(
                                  screen: NewsDetails(
                                    id: i,
                                  ),
                                  indexPage: 1,
                                ),
                                transition: Transition.fadeIn,
                              );
                            },
                          ),
                        ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
