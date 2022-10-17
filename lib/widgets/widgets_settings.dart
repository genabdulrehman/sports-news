import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/localizations/localization_constants.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTileSettings extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;

  CardTileSettings({
    @required this.label,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: theme.textTheme.headline4,
              ),
              icon != null
                  ? Icon(
                      icon,
                      size: 18.0,
                    )
                  : Icon(
                      kIsScreenRTL(context)
                          ? FontAwesomeIcons.chevronLeft
                          : FontAwesomeIcons.chevronRight,
                      size: 18.0,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class CardSelectModeApp extends StatelessWidget {
  final bool isDarkMode;
  final Function onChanged;

  CardSelectModeApp({this.isDarkMode, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isDarkMode ? 'Dark Mode' : 'Ligh Mode',
            style: theme.textTheme.headline4,
          ),
          Switch(
            value: isDarkMode,
            onChanged: onChanged,
            activeColor: theme.primaryColor,
          ),
        ],
      ),
    );
  }
}

class CardSelectLanguage extends StatelessWidget {
  final List<String> listLanguage;
  final Function onChanged;
  final String selectedLanguage;

  CardSelectLanguage({
    this.listLanguage,
    this.onChanged,
    this.selectedLanguage,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            getTranslated(context, 'language'),
            style: theme.textTheme.headline4,
          ),
          DropdownButton(
            items: [
              for (var langue in listLanguage)
                DropdownMenuItem(
                  child: Text(langue),
                  value: langue,
                ),
            ],
            onChanged: onChanged,
            hint: Text(
              selectedLanguage,
              style: theme.textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}

class CardUserProfile extends StatelessWidget {
  final image;
  final Function onTap;

  CardUserProfile({
    @required this.image,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(),
        ShakeTransition(
          duration: Duration(milliseconds: 900),
          child: Column(
            children: [
              CardUserImage(
                image: image,
                onTap: onTap,
              ),
              SizedBox(height: 10.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Hive",
                      style: TextStyle(
                        color: theme.hintColor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(),
        ShakeTransition(
          duration: Duration(milliseconds: 1200),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            height: mSize.width * 0.3,
            width: 0.5,
            color: Colors.grey.shade200,
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1600),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: getTranslated(context, 'joined'),
                      style: theme.textTheme.subtitle1,
                    ),
                    TextSpan(
                      text: '6 ${getTranslated(context, 'mon_ago')}',
                      style: theme.textTheme.headline1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CardUserImage extends StatelessWidget {
  final image;
  final Function onTap;

  CardUserImage({
    @required this.image,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Positioned.fill(
            child: CircularProgressIndicator(
              value: 0.7,
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.primaryColor,
              ),
            ),
          ),
          CircleAvatar(
            maxRadius: mSize.width * 0.15,
            backgroundColor: Colors.transparent,
            child: CircleAvatar(
              maxRadius: mSize.width * 0.13,
              backgroundImage: image == null
                  ? AssetImage("assets/images/hive.png")
                  : FileImage(image),
            ),
          ),
        ],
      ),
    );
  }
}
