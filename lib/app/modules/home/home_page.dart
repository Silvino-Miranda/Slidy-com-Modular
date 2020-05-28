import 'package:flutter/material.dart';
import '../../_shared/drawer/my_drawer.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Icon(
              Icons.payment,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            for (var i = 1; i < 51; i++)
              ListTile(
                onTap: () {},
                title: Text("Estofado Berlim"),
                subtitle: Text("Estofado Berlim 3 e 2 lugares \nPreço: R\$ 895.00"),
                leading: Icon(
                  Icons.check_box,
                  color: Colors.amber,
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
