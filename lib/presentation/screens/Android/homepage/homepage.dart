import 'package:chatbot/presentation/screens/Android/chatspage/chatscreen.dart';
import 'package:chatbot/presentation/screens/Android/homepage/widgets/custom_button/custom_button.dart';

import 'package:flutter/material.dart';

import 'package:rive/rive.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: HomeBodyWidget(),
      ),
    );
  }
}

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({
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
              child: RiveAnimation.asset(
                'assets/animations/robo_anim.riv',
                fit: BoxFit.cover,
              )),
          Container(
            height: 80,
            width: 350,
            child: InkWell(
                onTap: () => onButtonTapped(context),
                splashColor: Colors.black,
                child: CustomButton()),
          ),
        ],
      ),
    );
  }
}

void onButtonTapped(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => ChatScreen(),
  ));
}
