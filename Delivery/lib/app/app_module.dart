import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/dashbord/dashbord_module.dart';
import 'modules/home/home_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: DashbordModule()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/produto/', module: ProdutoModule()),
  ];

  // @override
  // Widget get bootstrap => AppWidget();

  // static Inject get to => Inject<AppModule>.of();
}
