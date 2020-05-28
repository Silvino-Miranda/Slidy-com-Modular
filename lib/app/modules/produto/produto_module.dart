import 'package:Delivery/app/modules/produto/produto_controller.dart';
import 'package:Delivery/app/modules/produto/produto_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProdutoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ProdutoWidget()),
      ];

  static Inject get to => Inject<ProdutoModule>.of();
}
