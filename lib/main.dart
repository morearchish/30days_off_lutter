import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try1/pages/home_app.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),

      initialRoute:MyRoutes.homeRoute,
      routes: {
        "/": (context) =>loginpage(),
        MyRoutes.homeRoute: (context) =>home_page(),
        "/login": (context)=>loginpage(),
      },


    );
  }
}










