import "package:flutter/material.dart";
import 'package:try1/widgets/drawer.dart';

class home_page extends StatelessWidget {
  // This widget is the root of your application.
  final int days=30;
  final String name="codenpur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Center(
            child: Text("Catalog App"),
          ),
        ),
        body: Center(
          child: Container(
            child: Text("welcome to $days days of flutter"),
          ),
        ),
        drawer: drawer(),
    );
  }
}
