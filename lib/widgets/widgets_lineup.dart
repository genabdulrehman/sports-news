import 'package:azul_football/helpers/colors.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardPlayer extends StatelessWidget {
  final String playerName;
  final int playerNumber;
  final playerImage;
  final double rate;
  final bool isTopRated;

  final double marTop, marBot, marLeft, marRight;

  CardPlayer({
    this.playerName,
    this.playerNumber,
    this.playerImage,
    @required this.rate,
    this.isTopRated = false,
    this.marTop = 5.0,
    this.marBot = 0.0,
    this.marLeft = 0.0,
    this.marRight = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: marTop,
        right: marRight,
        bottom: marBot,
        left: marLeft,
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, right: 18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  maxRadius: mSize.width * 0.07,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    maxRadius: mSize.width * 0.066,
                    backgroundColor: theme.primaryColorDark,
                    child: CircleAvatar(
                      maxRadius: mSize.width * 0.06,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(playerImage),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: mSize.width * 0.16,
                  child: Center(
                    child: RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: playerName,
                        style: theme.textTheme.subtitle2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 9.0,
            child: Text(
              '$playerNumber',
              style: theme.textTheme.subtitle2,
            ),
          ),
          Positioned.fill(
            bottom: 32.0,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: isTopRated ? kYellow01 : Colors.black, //kYellow01
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    isTopRated
                        ? Icon(
                            FontAwesomeIcons.solidStar,
                            size: 10.0,
                            color: theme.primaryColorDark,
                          )
                        : SizedBox(),
                    Text(
                      ' $rate',
                      style: theme.textTheme.subtitle2.copyWith(
                        color:
                            isTopRated ? theme.primaryColorDark : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowTabLineup extends StatelessWidget {
  final int selectedClub;
  final Function onClubA, onClubB;
  final homeName, awayName;

  RowTabLineup({
    this.selectedClub,
    this.onClubA,
    this.onClubB,
    this.awayName,
    this.homeName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    bool isClubA = selectedClub == 1;
    bool isClubB = selectedClub == 2;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: onClubA,
              child: Container(
                height: 43.0,
                decoration: BoxDecoration(
                  color: isClubA ? Colors.white : Colors.white38,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    '$homeName',
                    maxLines: 1,
                    style: theme.textTheme.headline4.copyWith(
                      color: isClubA ? theme.primaryColorDark : Colors.white38,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 2.0),
          Expanded(
            child: InkWell(
              onTap: onClubB,
              child: Container(
                height: 43.0,
                decoration: BoxDecoration(
                  color: isClubB ? Colors.white : Colors.white38,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    '$awayName',
                    maxLines: 1,
                    style: theme.textTheme.headline4.copyWith(
                      color: isClubB ? theme.primaryColorDark : Colors.white38,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Substitutes

class CardSubstitutes extends StatelessWidget {
  final time;
  final playerIn, playerOut;
  final imgPlayerIn, imgPlayerOut;

  CardSubstitutes({
    @required this.time,
    @required this.playerIn,
    @required this.playerOut,
    @required this.imgPlayerIn,
    @required this.imgPlayerOut,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          //Line Divider
          Positioned(
            top: 0,
            bottom: 20,
            child: SizedBox(
              width: mSize.width,
              child: Divider(
                color: theme.primaryColor,
                thickness: 1.2,
                endIndent: mSize.width * 0.3,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TIME
              Container(
                width: mSize.width * 0.11,
                height: mSize.width * 0.11,
                margin: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [theme.primaryColor, theme.primaryColorDark],
                  ),
                ),
                child: Center(
                  child: Text(
                    '$time',
                    style:
                        theme.textTheme.headline1.copyWith(color: Colors.white),
                  ),
                ),
              ),
              CardPlayerSubstitutes(
                icon: Icon(
                  FontAwesomeIcons.solidArrowAltCircleUp,
                  size: 20.0,
                  color: Colors.green,
                ),
                label: '$playerIn',
                image: imgPlayerIn,
              ),
              CardPlayerSubstitutes(
                icon: Icon(
                  FontAwesomeIcons.solidArrowAltCircleDown,
                  size: 20.0,
                  color: Colors.red,
                ),
                label: '$playerOut',
                image: imgPlayerOut,
              ),
              SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}

class CardPlayerSubstitutes extends StatelessWidget {
  final Widget icon;
  final label;
  final image;

  CardPlayerSubstitutes({
    this.icon,
    this.label,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: mSize.width * 0.07,
            backgroundColor: theme.primaryColorDark,
            child: CircleAvatar(
              maxRadius: mSize.width * 0.067,
              backgroundColor: theme.backgroundColor,
              child: CircleAvatar(
                maxRadius: mSize.width * 0.062,
                backgroundColor: theme.primaryColorDark,
                backgroundImage: NetworkImage(image),
              ),
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: [
              SizedBox(width: 22.0, height: 22.0, child: icon),
              SizedBox(width: 3),
              SizedBox(
                width: mSize.width * 0.15,
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  //textAlign: TextAlign.left,
                  text: TextSpan(
                    text: '$label',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: theme.accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Bench

class CardPlayerBench extends StatelessWidget {
  final playerName;
  final playerNumber;
  final playerImage;

  CardPlayerBench({
    this.playerName,
    this.playerNumber,
    this.playerImage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20, right: 18.0),
            child: CircleAvatar(
              maxRadius: mSize.width * 0.08,
              backgroundColor: Colors.grey.shade300,
              child: CircleAvatar(
                maxRadius: mSize.width * 0.075,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  maxRadius: mSize.width * 0.073,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(playerImage),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: 80.0,
              child: Text(
                playerName,
                maxLines: 1,
                style: theme.textTheme.subtitle2.copyWith(
                  color: theme.accentColor,
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            maxRadius: 9.0,
            child: Text(
              '$playerNumber',
              style: theme.textTheme.subtitle2.copyWith(
                fontSize: 10.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
