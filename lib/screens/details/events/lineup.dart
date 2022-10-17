import 'package:azul_football/api/players_api.dart';

import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_lineup.dart';
import 'package:flutter/material.dart';

class LineUpPage extends StatefulWidget {
  final homeName, awayName;

  LineUpPage({@required this.homeName, @required this.awayName});

  @override
  _LineUpPageState createState() => _LineUpPageState();
}

class _LineUpPageState extends State<LineUpPage> {
  int _selectedClub = 1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      shrinkWrap: true,
      children: [
        ShakeTransition(
          duration: Duration(milliseconds: 900),
          axis: Axis.vertical,
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              width: mSize.width,
              decoration: BoxDecoration(
                color: theme.primaryColorDark,
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  RowTabLineup(
                    selectedClub: _selectedClub,
                    homeName: widget.homeName,
                    awayName: widget.awayName,
                    onClubA: () {
                      setState(() {
                        _selectedClub = 1;
                      });
                    },
                    onClubB: () {
                      setState(() {
                        _selectedClub = 2;
                      });
                    },
                  ),
                  //TODO: Display selected team
                  // 1-3-2-4-1
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        CardPlayer(
                          isTopRated: true,
                          playerNumber: PlayersApi.pListPlayers[0].number,
                          playerName: PlayersApi.pListPlayers[0].name,
                          playerImage: PlayersApi.pListPlayers[0].image,
                          rate: PlayersApi.pListPlayers[0].rate,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[1].number,
                              playerName: PlayersApi.pListPlayers[1].name,
                              playerImage: PlayersApi.pListPlayers[1].image,
                              rate: PlayersApi.pListPlayers[1].rate,
                            ),
                            CardPlayer(
                              marTop: 30.0,
                              playerNumber: PlayersApi.pListPlayers[2].number,
                              playerName: PlayersApi.pListPlayers[2].name,
                              playerImage: PlayersApi.pListPlayers[2].image,
                              rate: PlayersApi.pListPlayers[2].rate,
                            ),
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[3].number,
                              playerName: PlayersApi.pListPlayers[3].name,
                              playerImage: PlayersApi.pListPlayers[3].image,
                              rate: PlayersApi.pListPlayers[3].rate,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[4].number,
                              playerName: PlayersApi.pListPlayers[4].name,
                              playerImage: PlayersApi.pListPlayers[4].image,
                              rate: PlayersApi.pListPlayers[4].rate,
                            ),
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[5].number,
                              playerName: PlayersApi.pListPlayers[5].name,
                              playerImage: PlayersApi.pListPlayers[5].image,
                              rate: PlayersApi.pListPlayers[5].rate,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[6].number,
                              playerName: PlayersApi.pListPlayers[6].name,
                              playerImage: PlayersApi.pListPlayers[6].image,
                              rate: PlayersApi.pListPlayers[6].rate,
                            ),
                            CardPlayer(
                              marTop: 30.0,
                              playerNumber: PlayersApi.pListPlayers[7].number,
                              playerName: PlayersApi.pListPlayers[7].name,
                              playerImage: PlayersApi.pListPlayers[7].image,
                              rate: PlayersApi.pListPlayers[7].rate,
                            ),
                            CardPlayer(
                              marTop: 30.0,
                              playerNumber: PlayersApi.pListPlayers[8].number,
                              playerName: PlayersApi.pListPlayers[8].name,
                              playerImage: PlayersApi.pListPlayers[8].image,
                              rate: PlayersApi.pListPlayers[8].rate,
                            ),
                            CardPlayer(
                              playerNumber: PlayersApi.pListPlayers[9].number,
                              playerName: PlayersApi.pListPlayers[9].name,
                              playerImage: PlayersApi.pListPlayers[9].image,
                              rate: PlayersApi.pListPlayers[9].rate,
                            ),
                          ],
                        ),
                        CardPlayer(
                          marTop: 20,
                          playerNumber: PlayersApi.pListPlayers[10].number,
                          playerName: PlayersApi.pListPlayers[10].name,
                          playerImage: PlayersApi.pListPlayers[10].image,
                          rate: PlayersApi.pListPlayers[10].rate,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1200),
          axis: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              getTranslated(context, 'subs'),
              style: theme.textTheme.headline1,
            ),
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1600),
          axis: Axis.vertical,
          child: CardSubstitutes(
            time: 63,
            playerOut: PlayersApi.pListPlayers[5].name,
            playerIn: PlayersApi.pListPlayers[3].name,
            imgPlayerIn: PlayersApi.pListPlayers[5].image,
            imgPlayerOut: PlayersApi.pListPlayers[3].image,
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1800),
          axis: Axis.vertical,
          child: CardSubstitutes(
            time: 50,
            playerOut: PlayersApi.pListPlayers[4].name,
            playerIn: PlayersApi.pListPlayers[0].name,
            imgPlayerIn: PlayersApi.pListPlayers[4].image,
            imgPlayerOut: PlayersApi.pListPlayers[0].image,
          ),
        ),
        SizedBox(height: 20),
        ShakeTransition(
          duration: Duration(milliseconds: 2000),
          axis: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              getTranslated(context, 'bench'),
              style: theme.textTheme.headline1,
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: mSize.width,
          child: GridView.count(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 10.0,
            padding: EdgeInsets.symmetric(),
            children: [
              for (int i = 3; i < 10; i++)
                ShakeListTransition(
                  duration: Duration(milliseconds: (i + 3) * 200),
                  axis: Axis.vertical,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: CardPlayerBench(
                      playerNumber: PlayersApi.pListPlayers[i].number,
                      playerName: PlayersApi.pListPlayers[i].name,
                      playerImage: PlayersApi.pListPlayers[i].image,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 45),
      ],
    );
  }
}
