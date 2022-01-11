import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try1/pages/home_app.dart';
import 'package:try1/theme/theme.dart';
import 'package:try1/utilites/routes.dart';

import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      initialRoute:MyRoutes.homeRoute,
      routes: {
        "/": (context) =>loginpage(),
        MyRoutes.homeRoute: (context) =>home_page(),
        "/login": (context)=>loginpage(),
      },


    );
  }
}










