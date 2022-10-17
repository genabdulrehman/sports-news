import 'package:azul_football/api/chats_api.dart';
import 'package:azul_football/helpers/constants.dart';
import 'package:azul_football/models/chats.dart';
import 'package:azul_football/widgets/trensations_widgets.dart';
import 'package:azul_football/widgets/widgets_chats.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var _message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            children: [
              SizedBox(height: 15.0),
              for (int i = 0; i < ChatApi.cListChat.length; i++)
                ShakeListTransition(
                  duration: Duration(milliseconds: (i + 2) * 300),
                  axis: Axis.vertical,
                  child: CardChat(
                    name: ChatApi.cListChat[i].name,
                    image: ChatApi.cListChat[i].image,
                    message: ChatApi.cListChat[i].message,
                  ),
                ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
        ShakeTransition(
          duration: Duration(milliseconds: 1800),
          axis: Axis.vertical,
          child: InputCommentUser(
            control: _message,
            onTap: () {
              if (_message.text.isNotEmpty)
                setState(() {
                  ChatApi.cListChat.add(
                    ChatsModel(
                      id: 1,
                      image: kUser01,
                      name: 'Azul Mouad',
                      message: _message.text,
                    ),
                  );
                  _message.clear();
                  FocusScope.of(context).unfocus();
                });
            },
          ),
        ),
      ],
    );
  }
}
