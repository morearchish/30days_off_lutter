import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl="https://steamcommunity-a.akamaihd.net/economy/image/IzMF03bi9WpSBq-S-ekoE33L-iLqGFHVaU25ZzQNQcXdEH9myp0erksICfSMf6UeRJpnqWSMU5OD2IwJkXVZnihXOjLx2Sk5MbUqMcbBnQz4ruyeU2f_ZyXQfXGISGF7Eu8KbD2bkWXwsbXFG3qmHbluFFwaL6pX9zZBOM6BOBpp3dVf_GS5xxItS0B7c5MVcVzukiQQY-pxyyNCd4USx3MfzSa8zg/360fx360f";
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero, child: UserAccountsDrawerHeader(
              accountName: Text("Archish More"),
              accountEmail: Text("archish28022001@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),

            )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.white,),
              title: Text("Home",style: TextStyle(
                color: Colors.white,

              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",style: TextStyle(
                color: Colors.white,

              ),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.white,),
              title: Text("Mail",style: TextStyle(
                color: Colors.white,

              ),),
            ),
          ],
        ),
      ),


    );
  }

}