import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_model.dart';

class DetailItem extends StatefulWidget {
  final Item produto;

  const DetailItem({Key key, this.produto}) : super(key: key);

  @override
  _DetailItemState createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhe do Produto - ' + widget.produto.tag),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Notebook Samsung Dual Core 4GB 500GB Tela 15.6" Win.10 - E20',
              ),
            ),
            Hero(
              tag: widget.produto.tag,
              child: Image.network(
                  'https://www.extra-imagens.com.br/Informatica/Notebook/50001400/1146843277/notebook-samsung-dual-core-4gb-500gb-tela-15-6-windows-10-essentials-e20-np350xbe-kdabr-50001400.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
