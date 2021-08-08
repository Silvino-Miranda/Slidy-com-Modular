import 'package:olx_clone/src/produto/item_model.dart';

class ProdutoService {
  var produtos = List<Item>();

  var lista = List<Item>();

  var p2 = Item('', '', '', '');
  var p3 = Item('', '', '', '');
  var p4 = Item('', '', '', '');
  var p5 = Item('', '', '', '');

  // lista.add(p2);

  List<Item> listaProduto() {
    for (var i = 1; i <= 26; i++) {
      // for (var j = 1; j < 5; j++) {
      var item = Item('', '', i.toString(), '');
      produtos.add(item);
      // }
    }

    return produtos;
  }
}
