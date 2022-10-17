import 'package:azul_football/helpers/colors.dart';
import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_stats.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Commentary extends StatefulWidget {
  @override
  _CommentaryState createState() => _CommentaryState();
}

class _CommentaryState extends State<Commentary> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      children: [
        ShakeTransition(
          duration: Duration(milliseconds: 900),
          child: CardCommentary(
            isGoal: true,
            time: 86,
            body: kBody01,
            card: SizedBox(),
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1200),
          child: CardCommentary(
            time: 73,
            body: kBody01,
            card: CardsRedYellow(
              color: kYellow01,
              hasMargin: false,
            ),
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1600),
          child: CardCommentary(
            time: 70,
            body: kBody01,
            card: null,
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1800),
          child: CardCommentary(
            time: 42,
            body: kBody01,
            card: CardsRedYellow(
              color: Colors.red,
              hasMargin: false,
            ),
          ),
        ),
      ],
    );
  }
}

class CardCommentary extends StatelessWidget {
  final bool isGoal;
  final time;
  final body;
  final Widget card;

  CardCommentary({
    this.isGoal = false,
    this.time,
    this.body,
    this.card,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          Container(
            width: mSize.width,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  color: theme.hintColor.withOpacity(0.1),
                  blurRadius: 5.0,
                )
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  width: mSize.width * 0.11,
                  height: mSize.width * 0.11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.primaryColor,
                          theme.primaryColorDark,
                        ]),
                  ),
                  child: Center(
                    child: Text(
                      '$time',
                      style: theme.textTheme.headline1.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isGoal
                          ? Text(
                              'GOAL...',
                              style: theme.textTheme.headline1
                                  .copyWith(color: theme.primaryColor),
                            )
                          : SizedBox(),
                      Text(
                        '$kBody01',
                        style: theme.textTheme.bodyText2
                            .copyWith(color: theme.accentColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          card != null
              ? Positioned(
                  right: kIsScreenRTL(context) ? null : 10,
                  left: kIsScreenRTL(context) ? 10 : null,
                  child: PhysicalModel(
                    color: theme.backgroundColor,
                    elevation: 1,
                    shadowColor: theme.hintColor,
                    borderRadius: BorderRadius.circular(20),
                    child: CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: theme.backgroundColor,
                      child: isGoal
                          ? Icon(
                              FontAwesomeIcons.futbol,
                              color: theme.accentColor,
                              size: 19.0,
                            )
                          : card,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
