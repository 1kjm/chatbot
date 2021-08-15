import 'package:chatbot/presentation/screens/Android/homepage/homepage.dart';
import 'package:chatbot/presentation/screens/Web/HomePage/web_homepage.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: store.state.themeData,
      home: kIsWeb ? WebHomePage() : HomePage(),
    );
  }
}
