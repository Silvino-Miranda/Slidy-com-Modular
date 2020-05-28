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
      title:
          Text('Notebook Samsung Dual Core 4GB 500GB Tela 15.6" Win.10 - E20'),
      subtitle: Text('R\$ 1.949,00'),
      leading: Hero(
        tag: produto.tag,
        child: Image.network(
            'https://www.extra-imagens.com.br/Informatica/Notebook/50001400/1146843277/notebook-samsung-dual-core-4gb-500gb-tela-15-6-windows-10-essentials-e20-np350xbe-kdabr-50001400.jpg'),
      ),
      trailing: IconButton(
        icon: Icon(Icons.shopping_cart),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
