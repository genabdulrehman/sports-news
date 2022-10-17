import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardFavouriteTeam extends StatelessWidget {
  final bool isEdit;
  final Function onDelete;
  final logo, name;

  CardFavouriteTeam({
    this.isEdit = false,
    this.logo,
    this.name,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: NetworkImage(logo),
                  width: mSize.width * 0.17,
                  height: mSize.width * 0.17,
                ),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: theme.textTheme.headline4,
                ),
              ],
            ),
          ),
          isEdit
              ? Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.trash,
                            color: Colors.white,
                          ),
                          onPressed: onDelete,
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class CardFavouriteAdd extends StatelessWidget {
  final Function onTap;

  CardFavouriteAdd({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 0.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(5.0),
      child: Center(
        child: IconButton(
          icon: Icon(
            FontAwesomeIcons.plus,
            color: Colors.grey.shade300,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
