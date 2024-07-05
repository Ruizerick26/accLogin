import 'package:flutter/material.dart';
import 'firstscreem.dart';

//This function triggers the build process
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreem(),
 ); // MaterialApp
}
}