import 'package:azul_football/localizations/localization_constants.dart';

import 'package:azul_football/screens/user/register.dart';
import 'package:azul_football/screens/user/rest_pass.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                    duration: Duration(milliseconds: 1000),
                    child: Text(
                      getTranslated(context, 'signin_1'),
                      style: theme.textTheme.headline1,
                    ),
                  ),
                  SizedBox(height: 5),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1400),
                    child: Text(
                      getTranslated(context, 'signin_2'),
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  SizedBox(height: 10),
                  ShakeTransition(
                    duration: Duration(milliseconds: 1600),
                    child: Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        'assets/images/intro_3.svg',
                        height: mSize.height / 3,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 1800),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
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
                duration: Duration(milliseconds: 2000),
                axis: Axis.vertical,
                child: CardTileCondition(
                  onTap: () {
                    //TODO: open privacy policy
                  },
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 2400),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: getTranslated(context, 'signin'),
                  onTap: () {
                    //TODO Login
                    Get.offAndToNamed('/home');
                  },
                ),
              ),
              //TODO: LogIn
              ShakeTransition(
                duration: Duration(milliseconds: 2800),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: InkWell(
                    onTap: () {
                      Get.to(
                        () => RegisterScreen(),
                        transition: Transition.downToUp,
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: getTranslated(context, 'dont_have_account'),
                            style: theme.textTheme.subtitle1.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                          TextSpan(
                            text: getTranslated(context, 'signup'),
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
                duration: Duration(milliseconds: 3000),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 0.0),
                  child: InkWell(
                    onTap: () {
                      //TODO: Forgot pass
                      Get.to(
                        () => RestPasswordScreen(),
                      );
                    },
                    child: Text(
                      getTranslated(context, 'rest_pass'),
                      style: theme.textTheme.headline4.copyWith(
                        color: theme.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 3400),
                axis: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    getTranslated(context, 'login_with'),
                    style: theme.textTheme.headline4.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 3500),
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
