import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/dashbord/dashbord_module.dart';
import 'modules/home/home_module.dart';
import 'modules/produto/produto_module.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(AppController.new);
  }

  @override
  void routes(RouteManager r) {
    r.add(ModuleRoute('/', module: DashbordModule()));
    r.add(ModuleRoute('/home/', module: HomeModule()));
    r.add(ModuleRoute('/produto/', module: ProdutoModule()));
  }
}
