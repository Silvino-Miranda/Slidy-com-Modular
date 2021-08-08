import 'package:flutter/material.dart';
import 'package:delivery/app/_shared/drawer/my_drawer.dart';

class DashbordPage extends StatefulWidget {
  @override
  _DashbordPageState createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCG - Delivery'),
        actions: <Widget>[
          // FlatButton(
          //   onPressed: () {},
          //   child: Icon(
          //     Icons.payment,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            for (var i = 1; i < 16; i++)
              ListTile(
                onTap: () {},
                title: Text("Nome da Loja - $i"),
                subtitle: Text("Descrição da Loja em poucas palavras"),
                leading: Icon(
                  Icons.business,
                  color: Colors.lightBlue,
                  size: 50.0,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
