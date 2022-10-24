import 'package:azul_football/models/leagues.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:azul_football/api/events_api.dart';
import 'package:azul_football/api/leagues_api.dart';
import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/models/events.dart';
import 'package:azul_football/screens/details/events_details.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widget_calendar.dart';
import 'package:azul_football/widgets/widgets_events.dart';

class EventsPage extends StatefulWidget {
  final List<EventsModel> eventsApi;
  final List<LeaguesModels> leagueData;
  const EventsPage({
    Key key,
    this.leagueData,
    this.eventsApi,
  }) : super(key: key);
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  bool _barDrop = true;
  var _selectedDate = DateTime.now();
  int _selectedPost = 1;

  int _selectedLeague = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO: Bar League
          // (indexgame == 0)
          //     ? CardBarMain(
          //         isDropped: _barDrop,
          //         name: widget.eventsApi[0].nameHome,
          //         logo: LeaguesApi.lLeaguesList[_selectedLeague].logo,
          //         onTap: () {
          //           setState(() {
          //             _barDrop = !_barDrop;
          //           });
          //         },
          //       )
          //     :
          CardBarMain(
            isDropped: _barDrop,
            name: widget.leagueData[_selectedLeague].name,
            logo: widget.leagueData[_selectedLeague].logo,
            onTap: () {
              setState(() {
                _barDrop = !_barDrop;
              });
            },
          ),
          //TODO: Bar List Leagues
          AnimatedContainer(
            width: mSize.size.width,
            height: _barDrop ? 50.0 : 0.0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
            color: theme.primaryColorDark,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              children: [
                ShakeListTransition(
                  duration: Duration(milliseconds: 900),
                  child: CardChipLeague(
                    label: 'All',
                    onTap: () {
                      //TODO: All Leagues
                      setState(() {
                        _barDrop = false;
                      });
                    },
                  ),
                ),
                for (int i = 0; i < widget.leagueData.length; i++)
                  // (indexgame == 0)
                  //     ? ShakeTransition(
                  //         duration: Duration(milliseconds: (i + 5) * 300),
                  //         axis: Axis.horizontal,
                  //         child: CardChipLeague(
                  //           image: widget.leagueData[i].logo,
                  //           label: widget.leagueData[i].name,
                  //           onTap: () {
                  //             //TODO: selected League
                  //             setState(() {
                  //               _selectedLeague = i;
                  //               _barDrop = false;
                  //             });
                  //           },
                  //         ),
                  //       )
                  //     :
                  ShakeTransition(
                    duration: Duration(milliseconds: (i + 5) * 300),
                    axis: Axis.horizontal,
                    child: CardChipLeague(
                      image: widget.leagueData[i].logo,
                      label: widget.leagueData[i].name,
                      onTap: () {
                        //TODO: selected League
                        setState(() {
                          _selectedLeague = i;
                          _barDrop = false;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          //TODO: Calendar

          ShakeTransition(
            duration: Duration(milliseconds: 900),
            axis: Axis.vertical,
            child: CardCalendarMain(
              selectedDate: _selectedDate,
              onChangeDate: (date) {
                setState(() {
                  _selectedDate = date;
                });
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 1200),
            axis: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Text(
                'Day: ${kFormatDateDay(_selectedDate)}',
                style: theme.textTheme.headline5,
              ),
            ),
          ),
          //TODO: List Events
          Flexible(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 0.0),
              children: [
                for (int i = 0; i < widget.eventsApi.length; i++)
                  (indexgame == 0)
                      ? ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 200),
                          axis: Axis.vertical,
                          child: CardEventItemNew(
                            isSelected: i == _selectedPost,
                            dateMatch: widget.eventsApi[i].dateMatch,
                            timeMatch: widget.eventsApi[i].timeMatch,
                            nameHome: widget.eventsApi[i].nameHome,
                            nameAway: widget.eventsApi[i].nameAway,
                            logoHome: widget.eventsApi[i].logoHome,
                            logoAway: widget.eventsApi[i].logoAway,
                            scoreAway: widget.eventsApi[i].scoreAway,
                            scoreHome: widget.eventsApi[i].scoreHome,
                            onTap: () {
                              Get.to(
                                () => EventDetails(
                                  id: i,
                                  leagueId: _selectedLeague,
                                ),
                                transition: Transition.downToUp,
                              ).then((value) {
                                setState(() {
                                  _selectedPost = i;
                                });
                              });
                            },
                          ),
                        )
                      : ShakeListTransition(
                          duration: Duration(milliseconds: (i + 3) * 200),
                          axis: Axis.vertical,
                          child: CardEventItemNew(
                            isSelected: i == _selectedPost,
                            dateMatch: widget.eventsApi[i].dateMatch,
                            timeMatch: widget.eventsApi[i].timeMatch,
                            nameHome: widget.eventsApi[i].nameHome,
                            nameAway: widget.eventsApi[i].nameAway,
                            logoHome: widget.eventsApi[i].logoHome,
                            logoAway: widget.eventsApi[i].logoAway,
                            scoreAway: widget.eventsApi[i].scoreAway,
                            scoreHome: widget.eventsApi[i].scoreHome,
                            onTap: () {
                              Get.to(
                                () => EventDetails(
                                  id: i,
                                  leagueId: _selectedLeague,
                                ),
                                transition: Transition.downToUp,
                              ).then((value) {
                                setState(() {
                                  _selectedPost = i;
                                });
                              });
                            },
                          ),
                        ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
