import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// TODO: Change App name
const String kAppName = 'Sportec';
int indexgame;

///DATE Format

int kFormatDateNumber(dateTime) => int.parse(DateFormat("dd").format(dateTime));
String kFormatDateName(dateTime) => DateFormat("EE").format(dateTime);

String kFormatDateDay(dateTime) => DateFormat("dd - yyyy").format(dateTime);

bool kIsScreenRTL(context) => Directionality.of(context)
    .toString()
    .contains(TextDirection.RTL.value.toLowerCase());

///Images

const kUser01 =
    "https://gulfgoal.com/wp-content/uploads/2020/11/mouad-150x150.jpg";

///Strings

const kBody01 =
    "Lautaro Martinez: Man City eye Inter Milan striker as Sergio Aguero\'s potential successor";

///change theme
/*

final themeProv = Provider.of<ThemeProvider>(context);
onTap()=>
//change theme
 themeProv.changeTheme();

 */

///change Language
/*

  void _changeLanguage(String language) {
    Locale _temp;
    print(language);

    switch (language) {
      case 'EN':
        _temp = Locale('en', 'US');
        break;
      case 'AR':
        _temp = Locale('ar', 'AR');
        break;

      default:
        _temp = Locale('en', 'US');
    }

    MyApp.setLocale(context, _temp);
  }


  onTap()=>

      //change langue
              setState(() {
                _changeLanguage('AR');
              });

 */
