import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/screens/user/register.dart';

import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RestPasswordScreen extends StatefulWidget {
  @override
  _RestPasswordScreenState createState() => _RestPasswordScreenState();
}

class _RestPasswordScreenState extends State<RestPasswordScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShakeTransition(
                      duration: Duration(milliseconds: 900),
                      child: Text(
                        getTranslated(context, 'rest_pass'),
                        style: theme.textTheme.headline1,
                      ),
                    ),
                    SizedBox(height: 5),
                    ShakeTransition(
                      duration: Duration(milliseconds: 1200),
                      child: Text(
                        getTranslated(context, 'help'),
                        textAlign: TextAlign.center,
                        style: theme.textTheme.subtitle1,
                      ),
                    ),
                  ],
                ),
              ),
              ShakeTransition(
                duration: Duration(milliseconds: 1800),
                child: SvgPicture.asset(
                  'assets/images/intro_4.svg',
                  height: mSize.height / 4,
                ),
              ),
              Flexible(
                child: ShakeTransition(
                  duration: Duration(milliseconds: 2000),
                  axis: Axis.vertical,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      InputUser(
                        hint: getTranslated(context, 'email'),
                        isEmail: true,
                        icon: FontAwesomeIcons.solidEnvelope,
                      ),
                    ],
                  ),
                ),
              ),

              ShakeTransition(
                duration: Duration(milliseconds: 2600),
                axis: Axis.vertical,
                child: CardRegisterUser(
                  label: getTranslated(context, 'send_pass'),
                  onTap: () {
                    //TODO Sign Up
                    // Get.to(
                    //       () => RegisterScreen(),
                    //   transition: Transition.rightToLeft,
                    // );
                  },
                ),
              ),
              //TODO: Register
              ShakeTransition(
                duration: Duration(milliseconds: 2900),
                axis: Axis.vertical,
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

              //TODO: Login face google
              Column(
                children: [
                  ShakeTransition(
                    duration: Duration(milliseconds: 3200),
                    axis: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                      child: Text(
                        getTranslated(context, 'login_with'),
                        style: theme.textTheme.headline4.copyWith(
                          color: theme.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  ShakeTransition(
                    duration: Duration(milliseconds: 3600),
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
            ],
          ),
        ),
      ),
    );
  }
}
