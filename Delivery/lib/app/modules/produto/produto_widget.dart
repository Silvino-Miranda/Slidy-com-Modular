import 'package:Delivery/app/_shared/drawer/my_drawer.dart';
import 'package:flutter/material.dart';

import '_shared/item_model.dart';
import '_shared/list_item.dart';
import '_shared/produto_service.dart';

class ProdutoPage extends StatefulWidget {
  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
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
        title: Text('Eva Modas'),
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
