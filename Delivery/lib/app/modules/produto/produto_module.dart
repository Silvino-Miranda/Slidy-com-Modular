import 'package:delivery/app/modules/produto/produto_controller.dart';
import 'package:delivery/app/modules/produto/produto_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(ProdutoController.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ChildRoute('/', child: (context) => ProdutoPage()));
  }
}
