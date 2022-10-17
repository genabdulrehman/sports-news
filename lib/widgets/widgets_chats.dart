import 'package:azul_football/helpers/constants.dart';
import 'package:flutter/material.dart';

import 'package:readmore/readmore.dart';

class InputCommentUser extends StatelessWidget {
  final control;
  final userImage;
  final onTap;

  InputCommentUser({this.control, this.userImage, this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: theme.hintColor.withOpacity(0.2),
            blurRadius: 10.0,
          )
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 25.0,
            backgroundColor: theme.primaryColor,
            child: CircleAvatar(
              maxRadius: 24.0,
              backgroundImage: NetworkImage(kUser01),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: control,
                decoration: InputDecoration(
                  hintText: 'Add a Comment',
                  border: InputBorder.none,
                  hintStyle: theme.textTheme.headline3.copyWith(
                    color: theme.hintColor.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
            width: 45.0,
            child: MaterialButton(
              onPressed: onTap,
              color: theme.primaryColor,
              child: Icon(
                Icons.send_outlined,
                size: 18.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardChat extends StatelessWidget {
  final image;
  final String name;
  final String message;

  CardChat({
    @required this.image,
    @required this.name,
    @required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            maxRadius: 22.0,
            backgroundImage: NetworkImage(image),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: theme.textTheme.headline3.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
                ReadMoreText(
                  message,
                  trimLines: 2,
                  colorClickableText: theme.primaryColor,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: ' More',
                  trimExpandedText: ' Less',
                  style: theme.textTheme.bodyText2,
                  moreStyle: TextStyle(
                    fontSize: 12,
                    color: theme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
