import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text('SCG - Delivery'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Divider(height: 15.0),
              ListTile(
                title: Text("Dashbord"),
                onTap: () {
                  Modular.to.pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text("Home"),
                onTap: () {
                  Modular.to.pushReplacementNamed('/');
                },
                leading: Icon(
                  Icons.home,
                  color: Colors.amber,
                ),
              ),
              ListTile(
                title: Text("Produtos"),
                onTap: () {
                  Modular.to.pushReplacementNamed('/produto');
                },
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ),
              ListTile(
                title: Text("Favoritos"),
                onTap: () {},
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ),
              Divider(height: 20.0),
              ListTile(
                onTap: () {},
                title: Text("Sair do App"),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
