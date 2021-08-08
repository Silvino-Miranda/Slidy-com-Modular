import 'package:flutter/material.dart';
import 'package:olx_clone/src/produto/list_item.dart';
import 'package:olx_clone/src/produto/produto_service.dart';
import 'package:olx_clone/src/widgets/my_drawer.dart';

import 'item_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> listaProduto = ProdutoService().listaProduto();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
        title: Text('Venturosa Vendas'),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.amber,
      //   shape: CircularNotchedRectangle(),
      //   child: Row(
      //     children: <Widget>[],
      //   ),
      // ),
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < listaProduto.length - 1; i++)
            ListItem(produto: listaProduto[i]),
        ],
      ),
    );
  }
}
