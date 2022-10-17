import 'dart:io';

import 'package:azul_football/helpers/functions.dart';
import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/providers/theme_provider.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_settings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var _selectedLanguage = 'English';

  File _imageFile;

  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        children: [
          SizedBox(height: 15),
          //TODO: User info
          CardUserProfile(
            image: _imageFile,
            onTap: () async {
              final _image = await FunctionsHelper.pickImage();

              if (_image != null) {
                setState(() {
                  _imageFile = _image;
                });
              }
            },
          ),
          SizedBox(height: 15),
          Divider(),
          //TODO: Select Language
          ShakeTransition(
            duration: Duration(milliseconds: 1200),
            child: CardSelectLanguage(
              listLanguage: listLanguage,
              selectedLanguage: _selectedLanguage,
              onChanged: (val) {
                setState(() {
                  changeLanguage(val, context);
                  _selectedLanguage = val;
                });
              },
            ),
          ),
          //TODO: Dark Mode
          ShakeTransition(
            duration: Duration(milliseconds: 1600),
            child: CardSelectModeApp(
              isDarkMode: !themeProv.isLightTheme,
              onChanged: (val) {
                setState(() {
                  themeProv.changeTheme();
                });
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 1800),
            child: CardTileSettings(
              label: getTranslated(context, 'privacy'),
              onTap: () {},
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 2000),
            child: CardTileSettings(
              label: getTranslated(context, 'rate_app'),
              onTap: () async {
                // await launch(
                //     'https://play.google.com/store/apps/details?id=com.md.kooramd');
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 2400),
            child: CardTileSettings(
              label: getTranslated(context, 'share_app'),
              onTap: () async {
                // await launch(
                //     'https://play.google.com/store/apps/details?id=com.md.kooramd');
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 2600),
            child: CardTileSettings(
              label: getTranslated(context, 'twitter'),
              icon: FontAwesomeIcons.twitter,
              onTap: () async {
                // await launch(
                //     'https://www.linkedin.com/in/mouad-azul-8061a7176/?originalSubdomain=ma');
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 2800),
            child: CardTileSettings(
              label: getTranslated(context, 'facebook'),
              icon: FontAwesomeIcons.facebookF,
              onTap: () async {
                // await launch('https://www.facebook.com/mouad.azul');
              },
            ),
          ),
          ShakeTransition(
            duration: Duration(milliseconds: 3000),
            child: CardTileSettings(
              label: getTranslated(context, 'instagram'),
              icon: FontAwesomeIcons.instagram,
              onTap: () async {
                // await launch('https://www.instagram.com/azul_mouad/');
              },
            ),
          ),
          Divider(),
          ShakeTransition(
            duration: Duration(milliseconds: 3200),
            child: CardTileSettings(
              label: getTranslated(context, 'logout'),
              icon: FontAwesomeIcons.signOutAlt,
              onTap: () {
                Get.toNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
