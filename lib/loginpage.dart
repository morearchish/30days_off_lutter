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
  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      // Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(

        child: Form(
          key: _formKey,
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

                      validator: (String ? value){
                        if(value!.isEmpty){
                          return "Username Cannot Be Empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name=value;
                        setState(() {});
                      },
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (String ? value){
                        if(value!.isEmpty){
                          return "Password Cannot Be Empty";
                        }
                        else if(value.length<6){
                          return "Password length should atleast be 6";

                        }
                        return null;
                      },
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
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changebutton? 50:8),
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () =>moveToHome(context),
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


                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
