import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Venturosa Vendas'),
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              title: Text(
                "Área de Trabalho",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Usuário",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                "Alertas",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Icon(
                Icons.add_alert,
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text(
                "Notícias",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Icon(
                Icons.timeline,
                color: Colors.cyan,
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              title: Text(
                "Configurações",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              leading: Icon(
                Icons.settings,
                color: Colors.brown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
