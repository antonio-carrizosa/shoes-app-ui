import 'package:flutter/material.dart';
import 'package:shoes_app_ui/src/pages/details_page.dart';
import 'package:shoes_app_ui/src/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xfff4a51d),
        accentColor: Color(0xffffcf53),
        primaryColorDark: Color(0xffeaa14e),
      ),
      home: DetailsPage(),
    );
  }
}
