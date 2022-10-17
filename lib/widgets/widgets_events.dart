import 'package:azul_football/api/events_api.dart';
import 'package:azul_football/helpers/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CardEventItem extends StatelessWidget {
  final Function onTap;

  CardEventItem({this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mSize.size.width,
        height: 110.0,
        margin: EdgeInsets.only(top: 5.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xffEEEEEE),
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardTileTeam(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'League Name',
                  style: theme.textTheme.headline2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '0',
                      style: theme.textTheme.headline1,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'VS',
                        style: theme.textTheme.headline2,
                      ),
                    ),
                    Text(
                      '0',
                      style: theme.textTheme.headline1,
                    ),
                  ],
                ),
                Text(
                  'Status',
                  style: theme.textTheme.subtitle2,
                ),
              ],
            ),
            CardTileTeam(),
          ],
        ),
      ),
    );
  }
}

class CardEventItemNew extends StatelessWidget {
  final Function onTap;
  final bool isSelected;
  final logoHome, logoAway;
  final scoreHome, scoreAway;
  final dateMatch, timeMatch;
  final nameHome, nameAway;

  CardEventItemNew({
    this.onTap,
    this.isSelected = false,
    this.logoHome,
    this.logoAway,
    this.scoreHome,
    this.scoreAway,
    this.dateMatch,
    this.timeMatch,
    this.nameHome,
    this.nameAway,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: mSize.size.width,
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        padding: EdgeInsets.all(15.0),
        decoration: isSelected
            ? BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: theme.primaryColorDark.withOpacity(0.1),
                    offset: Offset(1, 1),
                    blurRadius: 5.0,
                  ),
                  BoxShadow(
                    color: theme.primaryColorDark.withOpacity(0.1),
                    offset: Offset(-1, -1),
                    blurRadius: 10.0,
                  ),
                ],
                border: Border.all(color: theme.primaryColorDark, width: 0.5),
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$dateMatch',
              style: theme.textTheme.subtitle1
                  .copyWith(color: Colors.grey.shade400),
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                // Teams info
                Expanded(
                  child: Column(
                    children: [
                      CardTeamNew(
                        logo: logoAway,
                        name: nameAway,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 60.0),
                          Text(
                            'vs',
                            style: theme.textTheme.subtitle1.copyWith(
                              color: theme.hintColor.withOpacity(0.2),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: theme.hintColor.withOpacity(0.2),
                              endIndent: 15,
                              indent: 10.0,
                            ),
                          ),
                        ],
                      ),
                      CardTeamNew(
                        logo: logoHome,
                        name: nameHome,
                      ),
                    ],
                  ),
                ),

                //Score & Timing
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '$scoreAway',
                      style: theme.textTheme.headline1.copyWith(fontSize: 22.0),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        timeMatch,
                        style: theme.textTheme.headline4
                            .copyWith(color: Colors.red),
                      ),
                    ),
                    Text(
                      '$scoreHome',
                      style: theme.textTheme.headline1.copyWith(fontSize: 22.0),
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

class CardTeamNew extends StatelessWidget {
  final name;
  final logo;

  CardTeamNew({@required this.name, @required this.logo});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 25.0,
            backgroundColor: theme.hintColor.withOpacity(0.2),
            child: CircleAvatar(
              maxRadius: 24.0,
              backgroundColor: theme.backgroundColor,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Image(
                  image: NetworkImage(logo),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            '$name',
            style: theme.textTheme.headline3,
          ),
        ],
      ),
    );
  }
}

class CardTileTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          width: 70.0,
          height: 70.0,
          image: AssetImage(
            'assets/images/barca.png',
          ),
        ),
        SizedBox(
          width: 100.0,
          child: Center(
            child: RichText(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Real Madrid Barcalona',
                style: theme.textTheme.subtitle2.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.accentColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardChipLeague extends StatelessWidget {
  final onTap;
  final label, image;

  CardChipLeague({
    this.onTap,
    this.label,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image != null
                ? Image(
                    image: AssetImage(image),
                    width: 26.0,
                    height: 26.0,
                  )
                : Icon(
                    FontAwesomeIcons.futbol,
                    size: 20.0,
                    color: Colors.white,
                  ),
            SizedBox(width: 3.0),
            Text(
              label,
              style: theme.textTheme.subtitle2.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class CardBarMain extends StatelessWidget {
  final logo, name;
  final bool isDropped;
  final onTap;

  CardBarMain({this.logo, this.name, this.isDropped = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);
    final paddingTop = mSize.padding.top;
    return Material(
      color: theme.primaryColorDark,
      child: Container(
        width: mSize.size.width,
        height: 68 + paddingTop,
        padding: EdgeInsets.only(top: paddingTop),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
              child: Image(
                width: 50.0,
                image: AssetImage(logo),
              ),
            ),
            Text(
              name,
              style: theme.textTheme.headline2.copyWith(color: Colors.white),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                isDropped
                    ? FontAwesomeIcons.chevronUp
                    : FontAwesomeIcons.chevronDown,
                size: 20.0,
                color: Colors.white,
              ),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }
}

/// Events Details

class BarEventDetails extends StatelessWidget {
  final id;

  BarEventDetails({@required this.id});

  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context);
    final theme = Theme.of(context);
    final _paddingTop = mSize.padding.top;
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.none,
      background: Container(
        height: double.infinity,
        color: theme.primaryColorDark,
        padding:
            EdgeInsets.only(top: _paddingTop + 80.0, bottom: _paddingTop + 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (indexgame == 0)
                ? CardTeamEvent(
                    name: EventsApi.eListEvents[id].nameHome,
                    logo: EventsApi.eListEvents[id].logoHome,
                  )
                : CardTeamEvent(
                    name: EventsApi.eListEventsBasketball[id].nameHome,
                    logo: EventsApi.eListEventsBasketball[id].logoHome,
                  ),
            Column(
              children: [
                (indexgame == 0)
                    ? Text(
                        '${EventsApi.eListEvents[id].scoreHome}:${EventsApi.eListEvents[id].scoreAway}',
                        style: GoogleFonts.montserrat(
                          fontSize: 66.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        '${EventsApi.eListEventsBasketball[id].scoreHome}:${EventsApi.eListEventsBasketball[id].scoreAway}',
                        style: GoogleFonts.montserrat(
                          fontSize: 66.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                Text(
                  '${EventsApi.eListEvents[id].timeMatch}',
                  style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            (indexgame == 0)
                ? CardTeamEvent(
                    logo: EventsApi.eListEvents[id].logoAway,
                    name: EventsApi.eListEvents[id].nameAway,
                  )
                : CardTeamEvent(
                    logo: EventsApi.eListEventsBasketball[id].logoAway,
                    name: EventsApi.eListEventsBasketball[id].nameAway,
                  ),
          ],
        ),
      ),
    );
  }
}

class CardTeamEvent extends StatelessWidget {
  final logo;
  final String name;

  CardTeamEvent({@required this.logo, @required this.name});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          width: 60.0,
          height: 60.0,
          fit: BoxFit.cover,
          image: NetworkImage(logo),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: 80.0,
          child: Text(
            name,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: theme.textTheme.headline4.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class CardBarEvent extends StatelessWidget {
  final logo, name;

  CardBarEvent({
    @required this.logo,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceInOut,
        //  color: isCollaps ? theme.primaryColorDark : theme.backgroundColor,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
              child: Image(
                width: 40.0,
                image: AssetImage(logo),
              ),
            ),
            SizedBox(width: 5.0),
            Text(
              name,
              style: theme.textTheme.headline2.copyWith(color: Colors.white),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.chevronRight,
                size: 20.0,
                color: Colors.white,
              ),
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}

class TabTileEvent extends StatelessWidget {
  final label;
  final IconData icon;
  final onTap;
  final bool isSelected;

  TabTileEvent({
    this.label,
    this.icon,
    this.onTap,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          children: [
            CircleAvatar(
              maxRadius: isSelected ? 13.0 : 10.0,
              backgroundColor:
                  isSelected ? Colors.white : Colors.grey.withOpacity(0.6),
              child: Icon(
                icon,
                size: isSelected ? 12.0 : 9.0,
                color: isSelected
                    ? theme.primaryColorDark
                    : Colors.grey.withOpacity(0.6),
              ),
            ),
            SizedBox(width: 5),
            Text(
              '$label',
              style: isSelected
                  ? theme.textTheme.headline4.copyWith(color: Colors.white)
                  : theme.textTheme.headline5.copyWith(
                      fontSize: 11,
                      color: isSelected
                          ? theme.primaryColorDark
                          : Colors.grey.withOpacity(0.6),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
