import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try1/utilites/routes.dart';

class loginpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(

        child: Column(
          children: [
            Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                 /*
                  ElevatedButton(
                    child: Text("login"),
                    style: TextButton.styleFrom(maximumSize:Size(100,40)),
                    onPressed: () {
                      print("hi codnpur");
                    },
                  )

                  */
                  SizedBox(
                    height: 40,
                    width: 700,
                    child: ElevatedButton(
                      child: Text("login"),
                      onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
