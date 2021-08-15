import 'package:chatbot/presentation/screens/Android/chatspage/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height -
            2.3 * AppBar().preferredSize.height,
        color: Colors.amber,
        child: ListView.builder(
          itemBuilder: (context, index) => LimitedBox(
            maxHeight: MediaQuery.of(context).size.height / 2,
            maxWidth: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  child: Image.asset(
                    'assets/icons/robo_chat.png',
                    fit: BoxFit.contain,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                      child: CustomListTile(
                    key: key,
                    message: 'hi there',
                  )),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          itemCount: 5,
        ));
  }
}
