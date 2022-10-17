import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardBottomNavClubs extends StatelessWidget {
  final Function onTap;
  final String label;

  CardBottomNavClubs({this.onTap, @required this.label});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      height: 50.0,
      width: mSize.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.primaryColor, theme.primaryColorDark],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20),
                Text(
                  label,
                  style: theme.textTheme.headline3.copyWith(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardClubTeam extends StatelessWidget {
  final image;
  final bool isSelected;
  final onTap;

  CardClubTeam({
    @required this.image,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            CircleAvatar(
              maxRadius: 37.0,
              backgroundColor:
                  isSelected ? theme.primaryColorDark : Colors.transparent,
              child: CircleAvatar(
                maxRadius: 35.0,
                backgroundColor: theme.hintColor.withOpacity(0.1),
                child: Image(
                  width: 50.0,
                  height: 50.0,
                  image: NetworkImage(image),
                ),
              ),
            ),
            isSelected
                ? Positioned(
                    right: 0,
                    child: CircleAvatar(
                      maxRadius: 12.0,
                      backgroundColor: theme.primaryColorDark,
                      child: Icon(
                        FontAwesomeIcons.check,
                        color: Colors.white,
                        size: 13.0,
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class TileClubs extends StatelessWidget {
  final title;
  final subTitle;

  TileClubs({this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.fire,
                size: 25.0,
                color: theme.primaryColorDark,
              ),
              SizedBox(width: 10.0),
              Text(
                title,
                style: theme.textTheme.headline1,
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            subTitle,
            style: theme.textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
