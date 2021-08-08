import 'package:flutter/material.dart';

import 'detail_item.dart';
import 'item_model.dart';

class ListItem extends StatelessWidget {
  final Item produto;

  const ListItem({Key key, this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailItem(produto: produto),
        ));
      },
      title: Text(produto.descricao),
      subtitle: Text(
        produto.preco,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: Hero(
        tag: produto.tag,
        child: Image.network(produto.url),
      ),
      trailing: IconButton(
        icon: Icon(produto.favorito ? Icons.favorite : Icons.favorite_border),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
