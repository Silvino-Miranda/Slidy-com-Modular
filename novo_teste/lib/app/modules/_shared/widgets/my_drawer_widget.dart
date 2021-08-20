import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
            children: <Widget>[
              // const SizedBox(height: 10.0),
              ListTile(
                title: const Text("Home", style: TextStyle(fontSize: 20.0)),
                leading: const Icon(Icons.people, size: 20.0),
                onTap: () {
                  // Modular.to.navigate('/');
                },
              ),
              const SizedBox(height: 10.0),
              ListTile(
                title: const Text("Produtos", style: TextStyle(fontSize: 20.0)),
                leading: const Icon(Icons.local_offer, size: 20.0),
                onTap: () {
                  // Modular.to.navigate('/produto/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
