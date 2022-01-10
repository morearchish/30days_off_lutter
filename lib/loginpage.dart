import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:try1/utilites/routes.dart';

class loginpage extends StatefulWidget {

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  String name="";
  bool changebutton=false;
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
              "Welcome $name",
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
                    onChanged: (value){
                      name=value;
                      setState(() {

                      });
                    },
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
                    style: TextButton.styleFrom(maximumSize:Size(150,40)),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  )
                 */
                  InkWell(
                    onTap: () async {
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changebutton=true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);

                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      width: changebutton?50:150,
                      height: 50,

                      alignment: Alignment.center,
                      child:changebutton?Icon(Icons.done,color: Colors.white,): Text("Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),

                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: changebutton?BoxShape.circle:BoxShape.rectangle,
                        borderRadius:
                          BorderRadius.circular(changebutton? 50:8),

                      ),

                    ),
                  ),



                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
