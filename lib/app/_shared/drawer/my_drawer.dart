import 'package:flutter/material.dart';

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
                onTap: () {},
                title: Text("Dashbord"),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.blue,
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.amber,
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Favoritos"),
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
