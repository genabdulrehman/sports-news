import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/screens/favorites/favorites_clubs.dart';
import 'package:azul_football/screens/home_pages/chossescreen.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 900),
                    child: Text(
                      getTranslated(context, 'getting_started'),
                      style: theme.textTheme.headline1,
                    ),
                  ),
                  SizedBox(height: 5),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1600),
                    child: Text(
                      getTranslated(context, 'create_account'),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1800),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SvgPicture.asset(
                        'assets/images/intro_2.svg',
                        height: mSize.height / 4,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 1600),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      InputUser(
                        hint: getTranslated(context, 'username'),
                        icon: FontAwesomeIcons.userAlt,
                      ),
                      InputUser(
                        hint: getTranslated(context, 'email'),
                        isEmail: true,
                        icon: FontAwesomeIcons.solidEnvelope,
                      ),
                      InputUserPassword(),
                    ],
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 1800),
                axis: Axis.vertical,
                child: CardTileCondition(
                  onTap: () {
                    //TODO: open privacy policy
                  },
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2000),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: 'sign up',
                  onTap: () {
                    //TODO Sign Up   FavoritesClubsScreen
                    Get.to(
                      () => ChooseScree(),
                      transition: Transition.fadeIn,
                    );
                  },
                ),
              ),
              //TODO: LogIn
              ShakeTransition(
                duration: Duration(milliseconds: 2200),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => LogInScreen(),
                        transition: Transition.downToUp,
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                getTranslated(context, 'already_have_account'),
                            style: theme.textTheme.subtitle1.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: getTranslated(context, 'signin'),
                            style: theme.textTheme.headline5.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2400),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    getTranslated(context, 'signup_with'),
                    style: theme.textTheme.headline4.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2600),
                axis: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        size: mSize.width * 0.12,
                        color: theme.primaryColor,
                      ),
                      onTap: () {
                        //TODO: signUp facebook
                      },
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      child: Icon(
                        FontAwesomeIcons.google,
                        size: mSize.width * 0.12,
                        color: theme.primaryColor,
                      ),
                      onTap: () {
                        //TODO: signUp facebook
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
