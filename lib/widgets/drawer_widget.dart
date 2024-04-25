import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //DRAWER
    return Drawer(
      //LIST VIEW
      child: ListView(
        children: const [
          //HEADER
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text(
                //Nombre
                "User",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                //mail
                "User@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
              //Avatar
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 15, right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar.png"),
                  backgroundColor: Colors.white, //
                  radius: 30,
                ),
              ),
            ),
          ),
          //List Title
          ListTile(
            //Home
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Mi cuenta
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Mi cuenta",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Mis pedidos
          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Mis pedidos",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Salir
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.deepPurple,
            ),
            title: Text(
              "Salir",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
