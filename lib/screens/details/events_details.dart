import 'package:azul_football/api/events_api.dart';
import 'package:azul_football/api/leagues_api.dart';
import 'package:azul_football/helpers/constants.dart';

import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/screens/details/events/chats.dart';
import 'package:azul_football/screens/details/events/commentary.dart';
import 'package:azul_football/screens/details/events/lineup.dart';
import 'package:azul_football/screens/details/events/stats.dart';
import 'package:azul_football/widgets/widgets_events.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventDetails extends StatefulWidget {
  final id;
  final int leagueId;

  EventDetails({
    @required this.id,
    @required this.leagueId,
  });

  @override
  _EventDetailsState createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  ScrollController _controller = ScrollController();
  PageController _pageController = PageController();

  int _indexTabEvent = 0;

  List<Widget> _listPagesEvents = [];

  _animateToPage(int page) {
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 300), curve: Curves.easeOutSine);
  }

  @override
  void initState() {
    _listPagesEvents = [
      ChatsPage(),
      MatchStatsPage(),
      LineUpPage(
        homeName:(indexgame==0)? EventsApi.eListEvents[widget.id].nameHome:EventsApi.eListEventsBasketball[widget.id].nameHome,
        awayName:(indexgame==0)? EventsApi.eListEvents[widget.id].nameAway: EventsApi.eListEventsBasketball[widget.id].nameAway,
      ),
      Commentary(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: NestedScrollView(
        controller: _controller,
        headerSliverBuilder: (context, isScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 250,
              title:(indexgame==0)? CardBarEvent(
                name: LeaguesApi.lLeaguesList[widget.leagueId].name,
                logo: LeaguesApi.lLeaguesList[widget.leagueId].logo,
              ): CardBarEvent(
                      name: LeaguesApi.lLeaguesListBasketball[widget.leagueId].name,
                      logo: LeaguesApi.lLeaguesListBasketball[widget.leagueId].logo,
                    ),
              pinned: true,
              backgroundColor: theme.primaryColorDark,
              automaticallyImplyLeading: false,
              flexibleSpace: BarEventDetails(
                id: widget.id,
              ),
              bottom: PreferredSize(
                preferredSize: Size(mSize.size.width, 40.0),
                child: CardTabsEvents(children: [
                
                  TabTileEvent(
                    isSelected: _indexTabEvent == 1,
                    label: getTranslated(context, 'match_stats'),
                    icon: FontAwesomeIcons.chartPie,
                    onTap: () {
                      setState(() {
                        _animateToPage(1);
                        _indexTabEvent = 1;
                      });
                    },
                  ),
                  TabTileEvent(
                    isSelected: _indexTabEvent == 2,
                    label: getTranslated(context, 'lineup'),
                    icon: FontAwesomeIcons.users,
                    onTap: () {
                      setState(() {
                        _animateToPage(2);
                        _indexTabEvent = 2;
                      });
                    },
                  ),
                 
                ]),
              ),
            ),

           
          ];
        },
        body: PageView(
          onPageChanged: (val) {
            setState(() {
              _indexTabEvent = val;
            });
          },
          controller: _pageController,
          children: _listPagesEvents,
        ),
      ),
    );
  }
}

class CardTabsEvents extends StatelessWidget {
  final children;

  CardTabsEvents({@required this.children});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            theme.primaryColorDark.withOpacity(0.0),
            theme.primaryColorDark,
            theme.primaryColorDark,
          ],
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
