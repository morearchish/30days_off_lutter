import "package:flutter/material.dart";

class home_page extends StatelessWidget {
  // This widget is the root of your application.
  final int days=30;
  final String name="codenpur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("catalog app"),
        ),
        body: Center(
          child: Container(
            child: Text("welcome to $days of flutter"),
          ),
        ),
        drawer: Drawer(),
    );
  }
}
