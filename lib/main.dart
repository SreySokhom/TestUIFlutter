import 'package:flutter/material.dart';
import 'package:testfirstapp/Screen/tab_navigation.dart';
import 'package:testfirstapp/Screen/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.blueGrey[100],
//        fontFamily: 'Georgia',
      ),

      debugShowCheckedModeBanner: false,
      home:DefaultTabController(
          length: 5,
          child: TabNavigation()
      )
//    home: Test(),
    );
  }
}

