import 'package:azul_football/api/clubs_api.dart';
import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/localizations/localization_constants.dart';

import 'package:azul_football/screens/favorites/favorites_clubs.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_favourites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool _isEdit = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColorDark,
        automaticallyImplyLeading: false,
        title: Text(getTranslated(context, 'favor_clubs')),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              _isEdit ? FontAwesomeIcons.solidEdit : FontAwesomeIcons.edit,
              color: Colors.white,
              size: 20.0,
            ),
            onPressed: () {
              setState(() {
                _isEdit = !_isEdit;
              });
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 0.9,
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        children: [
          for (int i = 0; i < ClubsApi.cListClubs.length; i++)
            if (ClubsApi.cListClubs[i].picked == true)
              (indexgame == 0)
                  ? ShakeListTransition(
                      duration: Duration(milliseconds: (i + 3) * 200),
                      child: CardFavouriteTeam(
                        isEdit: _isEdit,
                        logo: ClubsApi.cListClubs[i].logo,
                        name: ClubsApi.cListClubs[i].name,
                        onDelete: () {
                          //TODO : delete club
                          setState(() {
                            ClubsApi.cListClubs[i].picked = false;
                          });
                        },
                      ),
                    )
                  : ShakeListTransition(
                      duration: Duration(milliseconds: (i + 3) * 200),
                      child: CardFavouriteTeam(
                        isEdit: _isEdit,
                        logo: ClubsApi.cListClubsBasketBall[i].logo,
                        name: ClubsApi.cListClubsBasketBall[i].name,
                        onDelete: () {
                          //TODO : delete club
                          if (indexgame == 0) {
                            setState(() {
                              ClubsApi.cListClubs[i].picked = false;
                            });
                          } else {
                            setState(() {
                              ClubsApi.cListClubsBasketBall[i].picked = false;
                            });
                          }
                        },
                      ),
                    ),
          CardFavouriteAdd(
            onTap: () {
              //TODO: Add more clubs
              Get.to(
                () => FavoritesClubsScreen(
                  fromHome: true,
                ),
                transition: Transition.downToUp,
              ).then((value) {
                setState(() {});
              });
            },
          ),
        ],
      ),
    );
  }
}
