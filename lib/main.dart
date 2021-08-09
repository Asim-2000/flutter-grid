import 'package:flutter/material.dart';
import 'package:learn_app/screens/HomeScreen.dart';
import 'package:learn_app/themes/lightTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LightTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
