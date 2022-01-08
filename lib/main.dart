import 'package:flutter/material.dart';
import 'package:try1/pages/home_app.dart';

import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute:"/home",
      routes: {
        "/": (context) =>loginpage(),
        "/home": (context) =>home_page(),
        "/login": (context)=>loginpage(),
      },
    );
  }
}










