import 'package:azul_football/localizations/localization_constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardLatestNews extends StatelessWidget {
  final image;
  final String title;
  final String category;
  final Function onTap;

  CardLatestNews({
    @required this.image,
    @required this.title,
    @required this.category,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100.0,
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Hero(
                tag: image,
                child: Image(
                  width: 155,
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    maxLines: 3,
                    style: theme.textTheme.headline4,
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.primaryColorDark,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardRecentNews extends StatelessWidget {
  final image;
  final String title;
  final String category;
  final date;

  final onTap;

  CardRecentNews({
    @required this.image,
    @required this.title,
    @required this.category,
    @required this.date,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: mSize.size.width,
        height: 261,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: theme.hintColor.withOpacity(0.15), blurRadius: 5.0),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    topLeft: Radius.circular(5.0),
                  ),
                  child: Image(
                    height: 144,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    image: NetworkImage(image),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Text(
                    title,
                    maxLines: 3,
                    style: theme.textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    date,
                    style: theme.textTheme.subtitle2,
                  ),
                ),
                SizedBox(height: 0),
              ],
            ),
            //TODO: Category name
            Positioned(
              top: 135,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: theme.primaryColorDark,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                child: Text(
                  category,
                  style: theme.textTheme.subtitle2.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardFavoritTeam extends StatelessWidget {
  final onTap;
  final logoHome, logoAway;
  final nameHome, nameAway;
  final scoreHome, scoreAway;
  final leagueName;

  CardFavoritTeam({
    this.onTap,
    this.logoHome,
    this.logoAway,
    this.nameHome,
    this.nameAway,
    this.scoreHome,
    this.scoreAway,
    this.leagueName,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 241.0,
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: theme.hintColor.withOpacity(0.15),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardFavTeam(
              logo: logoHome,
              name: nameHome,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  '$scoreHome : $scoreAway',
                  style: theme.textTheme.headline1,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 2.0),
                  child: Text(
                    getTranslated(context, 'live'),
                    style: TextStyle(
                      fontSize: 8.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: theme.primaryColorDark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1),
                  child: Text(
                    '$leagueName',
                    style: TextStyle(
                      fontSize: 8.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CardFavTeam(
              name: nameAway,
              logo: logoAway,
            ),
          ],
        ),
      ),
    );
  }
}

class CardFavTeam extends StatelessWidget {
  final logo;
  final name;

  CardFavTeam({this.logo, this.name});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          width: 50.0,
          height: 50.0,
          fit: BoxFit.cover,
          image: NetworkImage(logo),
        ),
        SizedBox(
          width: 60.0,
          child: Center(
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: name,
                style: theme.textTheme.subtitle2.copyWith(
                  fontSize: 8.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
