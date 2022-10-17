import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatchStatsPage extends StatefulWidget {
  @override
  _MatchStatsPageState createState() => _MatchStatsPageState();
}

class _MatchStatsPageState extends State<MatchStatsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      children: [
        ShakeTransition(
          duration: Duration(milliseconds: 900),
          axis: Axis.vertical,
          child: CardRatedPlayer(),
        ),
        SizedBox(height: 15),
        ShakeTransition(
          duration: Duration(milliseconds: 1200),
          axis: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: theme.accentColor.withOpacity(0.03),
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Column(
                children: [
                  //TODO: FULL TIME
                  Text(
                    getTranslated(context, 'full_time'),
                    style: theme.textTheme.headline1.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StatCardsHome(
                          childStat: CardsRedYellow(color: Colors.yellow),
                          time: 75,
                          playerName: 'Mouad Azul',
                        ),
                        StatCardsAway(
                          childStat: CardsRedYellow(color: Colors.red),
                          time: 65,
                          playerName: 'Benzema',
                        ),
                        StatInOutPlayerHome(
                          playerIn: 'Mouad Azul',
                          playerOut: 'Reda',
                          time: 46,
                        ),
                        StatInOutPlayerAway(
                          playerIn: 'Ayoub El Ayeb',
                          playerOut: 'Mourad',
                          time: 46,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  //TODO: Goal's
                  Text(
                    getTranslated(context, 'goals'),
                    style: theme.textTheme.headline1.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        StatGoalsHome(
                          time: 37,
                          playerGoals: 'Benzema',
                          playerAssist: 'Messi',
                        ),
                        StatGoalsAway(
                          time: 37,
                          playerGoals: 'Benzema',
                          playerAssist: 'Messi',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        ShakeTransition(
          duration: Duration(milliseconds: 1600),
          axis: Axis.vertical,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: theme.accentColor.withOpacity(0.03),
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: Column(
              children: [
                //TODO: Possession
                Text(
                  getTranslated(context, 'possession'),
                  style: theme.textTheme.headline2,
                ),
                CardLinearBig(
                  value: 0.7,
                  home: 63,
                  away: 37,
                ),
                //TODO: Total Shots
                CardLinearSmall(
                  label: getTranslated(context, 'total_shots'),
                  value: 0.7,
                  home: 4,
                  away: 6,
                ),
                //TODO: Shots on Target
                CardLinearSmall(
                  label: getTranslated(context, 'shots_target'),
                  value: 0.1,
                  home: 1,
                  away: 3,
                ),
                //TODO: Yellow Cards
                CardLinearSmall(
                  label: getTranslated(context, 'yel_cards'),
                  value: 0.8,
                  home: 3,
                  away: 1,
                ),
                //TODO: Red Cards
                CardLinearSmall(
                  label: getTranslated(context, 'red_cards'),
                  value: 0.5,
                  home: 0,
                  away: 0,
                ),
                //TODO: Tackels
                CardLinearSmall(
                  label: getTranslated(context, 'tackels'),
                  value: 0.7,
                  home: 6,
                  away: 4,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 50.0),
      ],
    );
  }
}
