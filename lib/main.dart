import 'package:flutter/material.dart';
import 'package:week_8_card/pages/page_card_01.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
        theme: ThemeData(fontFamily: "Raleway"),
        home: const MyApp(),
        debugShowCheckedModeBanner: false,
    );
  }
}