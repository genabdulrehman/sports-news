import 'package:azul_football/api/players_api.dart';
import 'package:azul_football/helpers/colors.dart';

import 'package:azul_football/localizations/localization_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardRatedPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 99,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
        gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [theme.primaryColor, theme.primaryColorDark]),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            maxRadius: 33,
            backgroundImage: NetworkImage(PlayersApi.pListPlayers[2].image),
            backgroundColor: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                PlayersApi.pListPlayers[2].name,
                style: theme.textTheme.headline1.copyWith(color: Colors.white),
              ),
              Text(
                getTranslated(context, 'most_rated'),
                style: theme.textTheme.subtitle2.copyWith(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          Container(
            width: 69.0,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xffdcf83e),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: theme.primaryColorDark,
                  size: 20.0,
                ),
                Text(
                  '8.6',
                  style: theme.textTheme.headline2.copyWith(
                    color: theme.primaryColorDark,
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

/// CARDS
class StatCardsHome extends StatelessWidget {
  final Widget childStat;
  final playerName;
  final time;

  StatCardsHome({@required this.childStat, this.playerName, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: mSize.width / 1.6,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: mSize.width * 0.2,
              child: RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: "$playerName",
                  style: theme.textTheme.subtitle1,
                ),
              ),
            ),
            childStat,
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class StatCardsAway extends StatelessWidget {
  final Widget childStat;
  final playerName;
  final time;

  StatCardsAway({@required this.childStat, this.playerName, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: mSize.width / 2.1,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
            childStat,
            SizedBox(
              width: mSize.width * 0.2,
              child: RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: "$playerName",
                  style: theme.textTheme.subtitle1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardsRedYellow extends StatelessWidget {
  final color;
  final bool hasMargin;

  CardsRedYellow({@required this.color, this.hasMargin = true});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 13,
        height: 17,
        margin: EdgeInsets.symmetric(horizontal: hasMargin ? 15.0 : 0.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: color ?? kYellow01));
  }
}

/// Player In Player Out

class StatInOutPlayerHome extends StatelessWidget {
  final playerIn, playerOut;
  final time;

  StatInOutPlayerHome({this.playerIn, this.playerOut, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: mSize.width / 1.52,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: mSize.width * 0.2,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: "$playerIn",
                          style: theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.solidArrowAltCircleRight,
                      color: Colors.green,
                      size: 20.0,
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    SizedBox(
                      width: mSize.width * 0.2,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: "$playerOut",
                          style: theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.solidArrowAltCircleLeft,
                      color: Colors.red,
                      size: 20.0,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 15),
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class StatInOutPlayerAway extends StatelessWidget {
  final playerIn, playerOut;
  final time;

  StatInOutPlayerAway({this.playerIn, this.playerOut, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: mSize.width / 2.1,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidArrowAltCircleRight,
                      color: Colors.green,
                      size: 20.0,
                    ),
                    SizedBox(width: 10.0),
                    SizedBox(
                      width: mSize.width * 0.2,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: "$playerIn",
                          style: theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidArrowAltCircleLeft,
                      color: Colors.red,
                      size: 20.0,
                    ),
                    SizedBox(width: 10.0),
                    SizedBox(
                      width: mSize.width * 0.2,
                      child: RichText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text: "$playerOut",
                          style: theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Goal's

class StatGoalsHome extends StatelessWidget {
  final playerAssist;
  final playerGoals;
  final time;

  StatGoalsHome({this.playerAssist, this.playerGoals, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: mSize.width / 1.6,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                SizedBox(
                  width: mSize.width * 0.2,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "$playerGoals",
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                ),
                SizedBox(
                  width: mSize.width * 0.2,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "Asst: $playerAssist",
                      style: theme.textTheme.subtitle2,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                FontAwesomeIcons.futbol,
                size: 22.0,
                color: theme.accentColor,
              ),
            ),
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class StatGoalsAway extends StatelessWidget {
  final playerAssist;
  final playerGoals;
  final time;

  StatGoalsAway({this.playerAssist, this.playerGoals, this.time});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        width: mSize.width / 2.1,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "$time",
              style: theme.textTheme.subtitle1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                FontAwesomeIcons.futbol,
                size: 22.0,
                color: theme.accentColor,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: mSize.width * 0.2,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "$playerGoals",
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                ),
                SizedBox(
                  width: mSize.width * 0.2,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: "Asst: $playerAssist",
                      style: theme.textTheme.subtitle2,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardLinearBig extends StatelessWidget {
  final home, away;
  final double value;

  CardLinearBig({this.home, this.away, this.value = 0.5});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          SizedBox(
            width: mSize.width,
            height: 33.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(theme.primaryColor),
              ),
            ),
          ),
          Container(
            width: mSize.width,
            height: 35.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$home%',
                  style: theme.textTheme.headline2.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '$away%',
                  style: theme.textTheme.headline2.copyWith(
                    color: Colors.black,
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

class CardLinearSmall extends StatelessWidget {
  final home, away;
  final label;
  final double value;

  CardLinearSmall({this.home, this.away, this.label, this.value = 0.5});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Container(
            width: mSize.width,
            padding: EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$home%',
                  style: theme.textTheme.headline3.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
                Text(
                  '$label',
                  style: theme.textTheme.headline3,
                ),
                Text(
                  '$away%',
                  style: theme.textTheme.headline3.copyWith(
                    color: theme.accentColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: mSize.width,
            height: 8.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(theme.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
