import 'package:azul_football/localizations/localization_constants.dart';

import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/shop/messi.png"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 900),
                    child: Text(
                      getTranslated(context, 'welcome_app'),
                      style: theme.textTheme.headline1,
                    ),
                  ),
                  SizedBox(height: 10),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1200),
                    child: Text(
                      getTranslated(context, 'welcome_app_2'),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                ],
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 900),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: getTranslated(context, 'get_started'),
                  onTap: () {
                    Get.toNamed('/register');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
