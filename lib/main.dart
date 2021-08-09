import 'package:flutter/material.dart';
import 'package:learn_app/screens/HomeScreen.dart';
import 'package:learn_app/themes/MyTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
