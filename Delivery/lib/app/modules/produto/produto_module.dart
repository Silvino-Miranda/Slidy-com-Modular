import 'package:delivery/app/modules/produto/produto_controller.dart';
import 'package:delivery/app/modules/produto/produto_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => ProdutoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProdutoPage()),
  ];

  // static Inject get to => Inject<ProdutoModule>.of();
}
