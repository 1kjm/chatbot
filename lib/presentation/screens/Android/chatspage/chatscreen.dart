import 'package:chatbot/presentation/screens/Android/chatspage/body.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Mr ChatBot',
            style: TextStyle(fontFamily: 'Righteous'),
          ),
        ),
        body: ChatBody(),
      ),
    );
  }
}
