import 'dart:math';
import 'item_model.dart';

class ProdutoService {
  var produtos = <Item>[];

  var lista = <Item>[];

  var p2 = Item(
    descricao: 'Notebook Samsung Dual Core 4GB 500GB Tela 15.6" Win.10 - E20',
    tag: '',
    favorito: false,
    preco: 'R\$ 1.949,00',
    url:
        'https://images-na.ssl-images-amazon.com/images/I/610RFMr9aSL._AC_SL1000_.jpg',
  );

  // lista.add(p2);

  List<Item> listaProduto() {
    for (var i = 1; i <= 21; i++) {
      produtos.add(criarProduto(i));
    }

    return produtos;
  }

  Item criarProduto(int i) {
    var item = Item(
      descricao: 'Notebook Samsung Dual Core 4GB 500GB Tela 15.6" Win.10 - E20',
      url:
          'https://images-na.ssl-images-amazon.com/images/I/610RFMr9aSL._AC_SL1000_.jpg',
      tag: i.toString(),
      preco: 'R\$ ' + this.precoProduto().toStringAsFixed(2), // 'R\$ 1.949,00',
      favorito: this.trueOrFalse(),
    );

    return item;
  }

  bool trueOrFalse() {
    Random random = new Random();
    bool randomNumber = random.nextBool();

    return randomNumber;
  }

  double precoProduto() {
    Random random = new Random();
    double preco = random.nextDouble();

    return (preco * 1000);
  }
}
