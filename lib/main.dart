import 'package:chatbot/domain/store/store.dart';
import 'package:chatbot/presentation/screens/Android/homepage/homepage.dart';
import 'package:chatbot/presentation/screens/Web/HomePage/web_homepage.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        theme: store.state.themeData,
        title: 'Flutter Demo',
        home: kIsWeb ? WebHomePage() : HomePage(),
      ),
    );
  }
}
