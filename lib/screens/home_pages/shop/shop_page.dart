import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,color: theme.iconTheme.color,),
        ),
        title: Text("SHOP",style: theme.textTheme.headline3,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image(image: AssetImage(
                  "assets/images/profile.png"
              )),
            ),
          )
        ],
      ),
    );
  }
}
