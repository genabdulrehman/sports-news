import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardRegisterUser extends StatelessWidget {
  final String label;
  final onTap;

  CardRegisterUser({@required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: onTap,
      color: theme.primaryColorDark,
      child: Container(
        width: mSize.width,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20.0),
            Text(
              label.toUpperCase(),
              style: theme.textTheme.headline3.copyWith(
                color: Colors.white,
              ),
            ),
            Icon(
              FontAwesomeIcons.arrowRight,
              size: 18.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class InputUser extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextEditingController control;
  final bool isEmail;
  final bool hideHint;

  InputUser({
    @required this.hint,
    this.control,
    @required this.icon,
    this.isEmail = false,
    this.hideHint = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          hideHint
              ? SizedBox()
              : Text(
                  hint,
                  style: theme.textTheme.subtitle1,
                ),
          SizedBox(height: hideHint ? 0 : 5),
          SizedBox(
            width: mSize.width,
            height: 40.0,
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 18.0,
                  color: theme.primaryColor,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    keyboardType: isEmail
                        ? TextInputType.emailAddress
                        : TextInputType.name,
                    decoration: InputDecoration(
                      hintText: hint,
                      border: InputBorder.none,
                      hintStyle: theme.textTheme.subtitle1,
                    ),
                    style: theme.textTheme.headline5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
            child: Divider(
              color: theme.primaryColorDark,
            ),
          ),
        ],
      ),
    );
  }
}

class InputUserPassword extends StatefulWidget {
  final TextEditingController control;

  InputUserPassword({
    this.control,
  });

  @override
  _InputUserPasswordState createState() => _InputUserPasswordState();
}

class _InputUserPasswordState extends State<InputUserPassword> {
  bool isSecure = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: theme.textTheme.subtitle1,
          ),
          SizedBox(height: 5),
          SizedBox(
            width: mSize.width,
            height: 40.0,
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.lock,
                  size: 18.0,
                  color: theme.primaryColor,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: TextField(
                    obscureText: isSecure,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      hintStyle: theme.textTheme.subtitle1,
                    ),
                    style: theme.textTheme.headline5,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    isSecure ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                    size: 18.0,
                    color: theme.primaryColorDark,
                  ),
                  onPressed: () {
                    setState(() {
                      isSecure = !isSecure;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
            child: Divider(
              color: theme.primaryColorDark,
            ),
          ),
        ],
      ),
    );
  }
}

class CardTileCondition extends StatelessWidget {
  final Function onTap;

  CardTileCondition({this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.checkCircle,
            color: theme.primaryColor,
            size: 18.0,
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: onTap,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By creating account, you agreed to our\n',
                    style: theme.textTheme.subtitle1,
                  ),
                  TextSpan(
                    text: 'Term & Conditions',
                    style: theme.textTheme.headline5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
