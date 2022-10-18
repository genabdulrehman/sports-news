import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback clickFuction;
  const CustomButton({this.title, this.clickFuction});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width.toInt();
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: MaterialButton(
        elevation: 0,
        color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: clickFuction,
        child: Text(
          title,
          style: theme.textTheme.headline3,
        ),
      ),
    );
  }
}
