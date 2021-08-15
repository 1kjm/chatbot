import 'package:chatbot/presentation/screens/Android/chatspage/widgets/shape.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String message;
  CustomListTile({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.white,
      elevation: 50,
      color: Colors.white,
      shape: CustomBorder(),
      child: SizedBox(
          height: 180,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                message,
                style: TextStyle(fontFamily: 'Righteous'),
              ))),
    );
  }
}
