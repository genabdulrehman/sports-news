import 'package:flutter/material.dart';

class ChooseSportWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String url;
  final String title;
  const ChooseSportWidget({@required this.title,this.onTap,this.url,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child:Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * .20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                url,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(title,style: theme.textTheme.headline4,),
        ],
      )
    );
  }
}
