import 'dart:math';
import 'item_model.dart';

class ProdutoService {
  var produtos = List<Item>();

  var lista = List<Item>();

  var p2 = Item(
    descricao: 'Notebook Samsung Dual Core 4GB 500GB Tela 15.6" Win.10 - E20',
    tag: '',
    favorito: false,
    preco: 'R\$ 1.949,00',
    url:
        'https://www.extra-imagens.com.br/Informatica/Notebook/50001400/1146843277/notebook-samsung-dual-core-4gb-500gb-tela-15-6-windows-10-essentials-e20-np350xbe-kdabr-50001400.jpg',
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
          'https://www.extra-imagens.com.br/Informatica/Notebook/50001400/1146843277/notebook-samsung-dual-core-4gb-500gb-tela-15-6-windows-10-essentials-e20-np350xbe-kdabr-50001400.jpg',
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
