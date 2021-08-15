import 'package:flutter/material.dart';

class WebChatPage extends StatelessWidget {
  const WebChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.arrow_back_rounded),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/icons/robo_chat.png',
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                    color: Colors.black,
                    height: size.height * 0.8,
                    child: Placeholder()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
