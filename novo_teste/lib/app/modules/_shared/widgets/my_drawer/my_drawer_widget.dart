import 'package:flutter/material.dart';

import '_shared/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: Center(
          child: ListView(
            children: const <Widget>[
              MyListTile(
                title: "Home",
                icon: Icons.people,
                uriNavegation: "/",
              ),
              MyListTile(
                title: "Produtos",
                icon: Icons.local_offer,
                uriNavegation: "/",
              ),
              // const SizedBox(height: 10.0),
              // ListTile(
              //   title: const Text("Home", style: TextStyle(fontSize: 20.0)),
              //   leading: const Icon(Icons.people, size: 20.0),
              //   onTap: () {
              //     Modular.to.navigate('/');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
