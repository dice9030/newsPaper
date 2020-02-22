import 'package:app_dc_maqueta/src/page/home_page.dart';
import 'package:app_dc_maqueta/src/page/news_paper.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: {
        'Home' : (BuildContext context ) => HomePage(),
        'NewsPaper' : (BuildContext context ) => NewsPaperPage(),
      },
    );
  }
}