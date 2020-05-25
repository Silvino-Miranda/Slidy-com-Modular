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
              Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.yellow,
                shadowColor: Colors.black,
                elevation: 15.0,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text('Teste de Silvino'),
                      Text('Teste de Silvino'),
                      Text('Teste de Silvino'),
                      Text('Teste de Silvino'),
                      Text('Teste de Silvino'),
                    ],
                  ),
                ),
              ),
              for (var i = 1; i < 26; i++)
                ListTile(
                  onTap: () {},
                  title: Text("Iae Nego  -  $i"),
                  subtitle: Text("Tô aprendendo =)"),
                  leading: Icon(
                    Icons.cloud_circle,
                    color: Colors.lightBlue,
                    size: 50.0,
                  ),
                  trailing: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
            ],
          ),
        ),
        drawer: MyDrawer());
  }
}
