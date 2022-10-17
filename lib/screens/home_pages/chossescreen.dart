import 'package:azul_football/screens/favorites/favorites_clubs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseScree extends StatefulWidget {
  const ChooseScree({Key key}) : super(key: key);

  @override
  State<ChooseScree> createState() => _ChooseScreeState();
}

class _ChooseScreeState extends State<ChooseScree> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(
                () => FavoritesClubsScreen(
                  index: 0,
                ),
                transition: Transition.fadeIn,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .33,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/leagues/football.jpeg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(
                () => FavoritesClubsScreen(
                  index: 1,
                ),
                transition: Transition.fadeIn,
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * .4,
              height: MediaQuery.of(context).size.height * .33,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/images/leagues/basketball.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
