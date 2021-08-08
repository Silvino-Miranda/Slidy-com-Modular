import 'package:mobx/mobx.dart';

part 'produto_controller.g.dart';

class ProdutoController = _ProdutoBase with _$ProdutoController;

abstract class _ProdutoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
