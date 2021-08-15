import 'package:chatbot/presentation/screens/Android/homepage/widgets/custom_button/custom_button.dart';
import 'package:chatbot/presentation/screens/Web/ChatPage/web_chatpage.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebHomeBodyWidget(),
      ),
    );
  }
}

class WebHomeBodyWidget extends StatelessWidget {
  const WebHomeBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
              Icon(Icons.menu),
            ],
          ),
          Container(
              width: size.width,
              height: size.height / 2,
              child: Stack(children: [
                Positioned(
                  right: 30,
                  child: Container(
                    width: size.width,
                    height: size.height / 2,
                    child: RiveAnimation.asset(
                      'assets/animations/robo_anim.riv',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ])),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            width: 350,
            child: GestureDetector(
                onTap: () => onButtonTapped(context), child: CustomButton()),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'An App By 1kjm',
                style: TextStyle(fontFamily: 'Righteous'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

void onButtonTapped(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => WebChatPage(),
  ));
}
